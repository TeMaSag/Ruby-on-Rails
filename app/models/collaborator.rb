class Collaborator < ApplicationRecord
  belongs_to :library
  validates :birthday, :date_of_employment , date: true
  validates :surname, :name, :patronymic, :education,  presence: true,
                        length: { maximum: 100 }
  validates :post, presence: true,
                        length: { maximum: 256 }
end
