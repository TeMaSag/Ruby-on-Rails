class Book < ApplicationRecord
    belongs_to  :library
    validates :TitleOfTheBook, presence: true,
                length: { maximum: 2000 }
    validates :author, presence: true,
                length: { maximum: 1000 }
    validates :cipher, presence: true,
                    length: { maximum: 100 }
    validates :publishing_house,  presence: true,
                            length: { maximum: 256 } 
    validates :TheYearOfPublishing, numericality: { only_integer: true }
    validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:han_or_equal_to => 0, :less_than => 10}
    validates :receipt_date , date: true
end
