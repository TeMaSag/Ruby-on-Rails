class Delivery < ApplicationRecord
  belongs_to :book
  belongs_to :subscriber
  validates :date_delivery, date: true
  validates :date_return, allow_blank: true,date: true
end
