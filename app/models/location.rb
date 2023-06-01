# frozen_string_literal: true

# Location model
class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode, if: :latitude_changed? || :longitude_changed?
end
