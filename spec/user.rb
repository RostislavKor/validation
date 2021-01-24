# frozen_string_literal: true

require '././lib/validation'

class User
  include Validation

  attr_accessor :name, :age, :phone_number

  def initialize(name, age, phone_number)
    @name = name
    @age = age
    @phone_number = phone_number
  end

  validate :name, presence: true
  validate :phone_number, type: 'PhoneNumber'
  validate :age, format: /[0-9]/
end

class PhoneNumber
  attr_accessor :number

  def initialize(number)
    @number = number
  end
end

class PostCode
  include Validation

  attr_accessor :code, :city

  validate :city, presence: true

  def initialize(code, city)
    @code = code
    @city = city
  end
end
