# frozen_string_literal: true

require 'spec_helper'
describe 'Validation' do
  context 'User validation' do
    it 'passed valdiation' do
      user = build(:user)
      expect(user.valid?).to eql true
    end

    it 'success validate' do
      user = build(:user)
      expect { user.validate! }.not_to raise_error
    end

    it 'unsuccess validate' do
      user = build(:user, name: nil)
      expect { user.validate! }.to raise_error.with_message(/name should be present/)
    end

    it 'failed validation' do
      user = build(:user, name: nil)
      expect(user.valid?).to eql false
    end
  end
end
