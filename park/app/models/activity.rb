class Activity < ApplicationRecord
    belongs_to :campground, dependent: :destroy
    has_many :register_activities, dependent: :destroy
    has_many :registers, through: :register_activities, dependent: :destroy
end
