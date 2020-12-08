class ChangeDateToText < ActiveRecord::Migration[6.0]
  def change
    def self.up
      change_column :celebs, :date, :text
    end
  
    def self.down
      change_column :celebs, :date, :date
    end
  end
end
