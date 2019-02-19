class Register < ApplicationRecord
    belongs_to :user
    has_many :register_activities
    has_many :activities, through: :register_activities
end
