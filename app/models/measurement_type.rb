class MeasurementType < ApplicationRecord
	has_many :measurements, dependent: :destroy
	has_many :images, dependent: :destroy
end
