class Delivery < ApplicationRecord
  belongs_to :book
  belongs_to :subscriber
  validates :date_delivery, :date_return, date: true
end
