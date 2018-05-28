class Checkpoint < ApplicationRecord
  belongs_to :user
  has_many :measurements, :dependent => :destroy
end
