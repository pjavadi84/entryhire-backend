class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.integer :zipcode
      t.string :email
      t.bigint :phone
      t.string :website
      t.text :about_us

      t.timestamps
    end
  end
end
