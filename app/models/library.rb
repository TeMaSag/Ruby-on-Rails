class Library < ApplicationRecord
    # belongs_to  :book
    validates :number, presence: true,
                    length: { minimum: 1,
                              maxsimum: 100 }
    validates :name, presence: true,
                    length: { minimum: 1,     
                              maxsimum: 1000 }
    validates :name, presence: true,
                    length: { minimum: 1,
                              maxsimum: 500 }
end 
