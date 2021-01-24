# frozen_string_literal: true

module Validation
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  def valid?
    validation_errors.none?
  end

  def validate!
    errors = validation_errors
    raise StandardError, errors.compact if errors.any?
  end

  def validation_errors
    self.class.added_validations.map do |validator|
      validator.validate_object(self)
    end
  end

  module ClassMethods
    def added_validations
      @added_validations ||= []
    end

    def validate(attribute_name, validation_condition)
      validation_condition.each do |k, value|
        validator = Object.const_get("Validations::#{(k.to_s).camelize}Validator")

        added_validations << validator.new(attribute_name, value)
      end
    end

  end
end

Dir[File.expand_path('validations/*.rb', __dir__)].sort.each { |file| require file }
