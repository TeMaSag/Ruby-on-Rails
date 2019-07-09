class CreateCollaborators < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborators do |t|
      t.references :library, foreign_key: true
      t.string :name, :limit => 100, :null => true
      t.string :surname, :limit => 100, :null => true
      t.string :patronymic, :limit => 100, :null => true
      t.date :birthday
      t.date :date_of_employment
      t.string :post
      t.string :education, :limit => 100, :null => true

      t.timestamps
    end
  end
end
