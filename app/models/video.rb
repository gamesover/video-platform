class Video < ApplicationRecord
  belongs_to :organization

  has_one_attached :video
  has_one_attached :thumbnail
end
