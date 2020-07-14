class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :address
      t.string :phone
      t.string :hobby
      t.string :gender
      t.string :father
      t.string :mother
      t.string :description
      t.integer :coins
      t.integer :rating
      t.boolean :active
    end
  end

end