class Activity < ApplicationRecord
    belongs_to :campground
    has_many :register_activities, dependent: :destroy
    has_many :registers, through: :register_activities
end
