class Library < ApplicationRecord
    has_many  :books
    validates :number,presence: true,
                    length: { maximum: 100 } 
                    
    validates :name, presence: true,
                    length: { maximum: 1000 }
    validates :adress, presence: true,
                    length: { maximum: 500 }
end 
