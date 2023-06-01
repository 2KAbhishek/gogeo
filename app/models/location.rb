# frozen_string_literal: true

# Location model
class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
