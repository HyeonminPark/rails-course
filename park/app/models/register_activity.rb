class RegisterActivity < ApplicationRecord
    belongs_to :register, dependent: :destroy
    belongs_to :activity, dependent: :destroy
end
