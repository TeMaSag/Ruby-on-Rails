class Library < ApplicationRecord
    has_many  :books
    validates :number,
                :format => { :with => /\A\d+(?:\.\d{0,0})?\z/ }, :numericality => {:greater_than => 0, :less_than => 99999999999999999999999999999999999999}
                    
    validates :name, presence: true,
                    length: { maximum: 1000 }
    validates :adress, presence: true,
                    length: { maximum: 500 }
end 
