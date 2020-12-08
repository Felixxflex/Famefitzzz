class AddthingsToCelebs < ActiveRecord::Migration[6.0]
  def change
    add_column :celebs, :description_link2, :string
    add_column :celebs, :description_link3, :string
    add_column :celebs, :description_link4, :string
    add_column :celebs, :description_link5, :string
    add_column :celebs, :description_link6, :string
    add_column :celebs, :description_link7, :string
    add_column :celebs, :description_link8, :string
  end
end
