class Campground < ApplicationRecord
    has_many :activities, dependent: :destroy
end
