class Suggestion < ApplicationRecord
	validates :description, presence: true
end
