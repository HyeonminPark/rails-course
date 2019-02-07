class Film < ApplicationRecord
    has_many :user_films
    has_many :users, through: :user_films
end
