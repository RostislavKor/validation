# frozen_string_literal: true

module Validations
  class BaseValidator
    attr_accessor :attribute_name, :value

    def initialize(attribute_name, value)
      @attribute_name = attribute_name
      @value = value
    end
  end
end
