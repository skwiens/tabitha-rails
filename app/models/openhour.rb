class Openhour < ApplicationRecord
  has_many :oh_vols
  has_many :shop_vols

  has_many :volunteers, :through => :oh_vols
  has_many :volunteers, :through => :shop_vols

  has_many :notes

  validates :date, presence: true, uniqueness: true
end
