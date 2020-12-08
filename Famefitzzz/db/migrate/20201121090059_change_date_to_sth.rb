class ChangeDateToSth < ActiveRecord::Migration[6.0]
  def change
    change_column :celebs, :date, :text
  end
end
