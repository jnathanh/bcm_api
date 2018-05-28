class Image < ApplicationRecord
  belongs_to :checkpoint
  belongs_to :measurement_type
end
