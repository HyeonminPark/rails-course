class Host < ApplicationRecord
    has_many :guests, dependent: :destroy
end
