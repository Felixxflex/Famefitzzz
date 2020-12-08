class AddShoptitleToCelebs < ActiveRecord::Migration[6.0]
  def change
    add_column :celebs, :shop_title, :string
  end
end
