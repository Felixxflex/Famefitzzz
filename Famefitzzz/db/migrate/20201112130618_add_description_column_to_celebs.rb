class AddDescriptionColumnToCelebs < ActiveRecord::Migration[6.0]
  def change
    add_column :celebs, :description, :string
  end
end
