class ChangesCelebsColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :celebs, :photos, :string, array: true, default: [] 
  end
end
