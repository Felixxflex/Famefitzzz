class AddTitlesToCelebs < ActiveRecord::Migration[6.0]
  def change
    add_column :celebs, :title_link2, :string
    add_column :celebs, :title_link3, :string
    add_column :celebs, :title_link4, :string
    add_column :celebs, :title_link5, :string
    add_column :celebs, :title_link6, :string
    add_column :celebs, :title_link7, :string
    add_column :celebs, :title_link8, :string
  end
end
