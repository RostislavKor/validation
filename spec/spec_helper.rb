# frozen_string_literal: true

require 'faker'
require 'factory_bot'
require 'user'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end
