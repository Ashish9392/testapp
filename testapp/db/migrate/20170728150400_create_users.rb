class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :adharno
      t.string :panno
      t.integer :mobileno

      t.timestamps
    end
  end
end
