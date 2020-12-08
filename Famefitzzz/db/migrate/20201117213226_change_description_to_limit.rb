class ChangeDescriptionToLimit < ActiveRecord::Migration[6.0]
  def change
    def self.up
      change_column :celebs, :description, :string, limit: 5
    end
  
    def self.down
      change_column :celebs, :description, :string
    end
  end
end
