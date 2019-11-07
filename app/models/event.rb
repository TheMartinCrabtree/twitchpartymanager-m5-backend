class Event < ApplicationRecord
    has_many :joinuserevents
    has_many :user, through: :joinuserevents
end
