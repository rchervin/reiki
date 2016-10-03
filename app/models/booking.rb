class Booking < ApplicationRecord
  belongs_to :therapy
  has_many :appointments
end
