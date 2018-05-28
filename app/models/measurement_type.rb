class MeasurementType < ApplicationRecord
	has_many :measurements, dependent: :destroy
end
