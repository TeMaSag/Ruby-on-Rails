class Subscriber < ApplicationRecord
  belongs_to :library
  has_many :deliveries
  has_many :books, through: :deliveries
  validates :ticket_number, :phone, numericality: { only_integer: true }
  validates :adress, presence: true,
                    length: { maximum: 1000 }
  validates :surname, :name, :patronymic, presence: true,
                    length: { maximum: 100 }
end
