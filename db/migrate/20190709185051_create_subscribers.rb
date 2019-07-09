class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.references :library, foreign_key: true
      t.integer :ticket_number
      t.string :surname, :limit => 100, :null => true
      t.string :name, :limit => 100, :null => true
      t.string :patronymic, :limit => 100, :null => true
      t.text :adress, :limit => 1000, :null => true
      t.integer :phone

      t.timestamps
    end
  end
end
