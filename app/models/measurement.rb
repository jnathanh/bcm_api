class Measurement < ApplicationRecord
  belongs_to :checkpoint
  belongs_to :measurement_type
end
