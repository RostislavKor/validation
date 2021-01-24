# frozen_string_literal: true

module Validations
  class FormatValidator < BaseValidator
    def validate_object(record)
      attribute_value = record.send(attribute_name).to_s
      "#{attribute_name} should be in format #{value}" unless value.match?(attribute_value)
    end
  end
end
