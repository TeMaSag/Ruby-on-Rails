class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.references :book, foreign_key: true
      t.references :subscriber, foreign_key: true
      t.date :date_delivery
      t.date :date_return

      t.timestamps
    end
  end
end
