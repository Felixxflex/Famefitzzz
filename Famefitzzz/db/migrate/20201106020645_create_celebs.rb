class CreateCelebs < ActiveRecord::Migration[6.0]
  def change
    create_table :celebs do |t|
      t.string :name
      t.integer :date

      t.timestamps
    end
  end
end
