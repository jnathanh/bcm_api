class Checkpoint < ApplicationRecord
  belongs_to :user
  has_many :measurements, dependent: :destroy
  has_many :images, dependent: :destroy
end
