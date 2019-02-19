class Activity < ApplicationRecord
    belongs_to :campground
    has_many :register_activities
    has_many :registers, through: :register_activities
end
