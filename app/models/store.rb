class Store < ApplicationRecord

  # validations
  validates_presence_of :name, :opening_time, :closing_time

end