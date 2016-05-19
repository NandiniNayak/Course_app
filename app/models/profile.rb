class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :images

  accepts_nested_attributes_for :images
  validates :username, presence: true
  validates :username,uniqueness: true

  extend FriendlyId
  friendly_id :username, use: :slugged
end
