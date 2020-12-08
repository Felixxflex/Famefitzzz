class ChangeDateToDate < ActiveRecord::Migration[6.0]
  def self.up
    change_column :celebs, :date, :date
  end

  def self.down
    change_column :celebs, :date, :datetime
  end
end
