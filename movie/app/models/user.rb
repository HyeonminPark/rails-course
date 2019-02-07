class User < ApplicationRecord
    has_many :user_films
    has_many :films, through: :user_films
end
