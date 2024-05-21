class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :password
      t.string :password_confirmation

      t.index :name
      t.index :email, unique: true 

      t.timestamps
    end
  end
end
