class AddPartnerToProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :partner, null: false, foreign_key: true
  end
end
