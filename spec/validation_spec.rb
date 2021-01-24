require 'spec_helper'
describe 'Validation' do

  context "User validation" do
    it "passed valdiation" do
      user = build(:user)
      expect(user.valid?).to eql true
    end

    it "success validate" do
      user = build(:user)
      expect{user.validate!}.not_to raise_error
    end

    it "unsuccess validate" do
      user = build(:user, name: nil)
      expect{user.validate!}.to raise_error.with_message(/name should be present/)
    end

    it "failed validation" do
      user = build(:user, name: nil)
      expect(user.valid?).to eql false
    end
  end

  context "PostCode validation" do
    it "valid post code" do
      post_code = build(:post_code)
      expect(post_code.valid?).to eql true
    end

    it "failed validation" do
      post_code = build(:post_code, city: nil)
      expect(post_code.valid?).to eql false
    end
  end


end