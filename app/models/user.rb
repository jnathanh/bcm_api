class User < ApplicationRecord
	has_many :checkpoints, dependent: :destroy
end
