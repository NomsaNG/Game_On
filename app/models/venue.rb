class Venue < ApplicationRecord
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :games

  validates :address, :description, presence: true
end
