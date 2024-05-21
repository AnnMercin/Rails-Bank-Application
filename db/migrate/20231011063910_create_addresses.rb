class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.references :account, null: false, foreign_key: true
      t.string :house_pin
      t.string :street_name
      t.string :country
      t.string :pincode

      t.timestamps
    end
  end
end
