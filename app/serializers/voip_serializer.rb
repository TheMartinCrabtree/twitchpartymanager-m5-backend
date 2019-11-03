class VoipSerializer < ActiveModel::Serializer
  attributes :id, :servername, :voipaddress, :servernote
end
