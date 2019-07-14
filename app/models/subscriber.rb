class Subscriber < ApplicationRecord
  belongs_to :library
  has_many :deliveries
  has_many :books, through: :deliveries
  validates :ticket, :phone, numericality: { only_integer: true }
  validates :adress, presence: true,
                    length: { maximum: 1000 }
  validates :surname, :name,  presence: true,
                    length: { maximum: 100 }
  validates :patronymic,allow_blank: true,length: { maximum: 100 }
  validates :phone, :format => { :with => /^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$/, multiline:true }
end
