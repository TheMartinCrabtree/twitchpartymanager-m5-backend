class JoinusereventSerializer < ActiveModel::Serializer
  attributes :id, :ingamename, :inparty, :waitlist
  has_one :user
  has_one :event
end
