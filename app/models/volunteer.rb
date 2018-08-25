class Volunteer < ApplicationRecord
  has_many :oh_vols
  has_many :shop_vols

  has_many :openhours, :through => :oh_vols
  has_many :openhours, :through => :shop_vols

  validates :name, presence: true, uniqueness: true
end
