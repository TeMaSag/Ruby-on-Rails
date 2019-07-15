class Book < ApplicationRecord
    belongs_to  :library
    has_many :deliveries, dependent: :delete_all
    validates :library_id, presence: true
    # has_many :deliveries
    # has_many :subscribers, through: :deliveries
    validates :TitleOfTheBook, presence: true,
                length: { maximum: 2000 }
    validates :author, presence: false,
                length: { maximum: 1000 }
    validates :cipher, presence: true,
                    length: { maximum: 100 }
    validates :publishing_house,  allow_blank: true,
                            length: { maximum: 256 } 
    validates :TheYearOfPublishing, allow_blank: true, numericality: { only_integer: true }
    validates :price,allow_blank: true, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:han_or_equal_to => 2, :less_than => 1000000000}
    validates :receipt_date,allow_blank: true, date: true
end
