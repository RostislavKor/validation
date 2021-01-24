# frozen_string_literal: true

module Validations
  class TypeValidator < BaseValidator
    def validate_object(record)
      attribute_value = record.send(attribute_name).class.to_s
      "#{attribute_name} should be type of #{value}" if attribute_value != value
    end
  end
end
