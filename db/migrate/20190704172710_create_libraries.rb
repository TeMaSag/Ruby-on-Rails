class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :number, :limit => 100
      t.text :name, :limit => 1000
      t.text :adress, :limit => 500

      t.timestamps null:false
    end
  end
end
