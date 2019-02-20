class Register < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :register_activities, dependent: :destroy
    has_many :activities, through: :register_activities, dependent: :destroy
end
