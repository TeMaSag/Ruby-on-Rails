class Collaborator < ApplicationRecord
  belongs_to :library
  validates :birthday, :date_of_employment ,allow_blank: true, date: true
  validates :surname, :name, presence: true,
                        length: { maximum: 100 }
  validates :patronymic, :education,allow_blank: true,length: { maximum: 100 }
  validates :post, presence: true,
                        length: { maximum: 256 }
                        
end
