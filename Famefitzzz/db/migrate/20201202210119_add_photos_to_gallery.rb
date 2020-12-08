class AddPhotosToGallery < ActiveRecord::Migration[6.0]
  def change
    add_column :celebs, :photos, :text, array: true, default: [] 
  end
end
