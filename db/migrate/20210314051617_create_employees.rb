class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.bigint :phone
      t.string :address
      t.string :city
      t.string :country
      t.integer :zipcode
      t.string :website
      t.string :github
      t.string :linkedin
      t.string :tweeter
      t.text :about_me
      t.stringinterests :technologies

      t.timestamps
    end
  end
end
