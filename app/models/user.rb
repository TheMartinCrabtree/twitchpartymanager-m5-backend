class User < ApplicationRecord
    has_many :joinuserevents
    has_many :events, through: :joinuserevents
    has_many :announcements
end
