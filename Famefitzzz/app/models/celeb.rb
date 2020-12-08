class Celeb < ApplicationRecord
  
  has_many_attached :photos
  # mount_uploader :photos, PhotosUploader
  validates :name, presence: true
  validates :date, presence: true
  
  ratyrate_rateable 'visual_effects'

    include PgSearch::Model
  pg_search_scope :search_by_name_and_date,
    against: [ :name, :date ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
