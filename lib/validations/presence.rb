# frozen_string_literal: true

module Validations
  class PresenceValidator < BaseValidator
    def validate_object(record)
      attribute_value = record.send(attribute_name).to_s
      "#{attribute_name} should be present" if attribute_value.empty?
    end
  end
end
