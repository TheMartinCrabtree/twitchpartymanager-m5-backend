class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :title, :bodytext
  has_one :user
end
