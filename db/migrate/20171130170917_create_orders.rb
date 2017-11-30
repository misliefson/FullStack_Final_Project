class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :amount
      t.decimal :gst
      t.decimal :pst
      t.decimal :hst
      t.integer :customer_id

      t.timestamps
    end
  end
end
