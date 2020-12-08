class RemoveColumnOfCelebs < ActiveRecord::Migration[6.0]
  def change
    remove_column :celebs, :token
  end
end
