class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :library, foreign_key: true
      t.text :TitleOfTheBook, :limit => 2000, :null => true
      t.text :author, :limit => 1000
      t.string :cipher, :limit => 100, :null => true
      t.string :publishing_house
      t.integer :TheYearOfPublishing
      t.decimal :price, :precision => 8, :scale => 2
      t.date :receipt_date

      t.timestamps
    end
  end
end
