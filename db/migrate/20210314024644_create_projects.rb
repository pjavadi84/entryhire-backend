class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.daterange :duration
      t.string :prize
      t.string :technologies

      t.timestamps
    end
  end
end
