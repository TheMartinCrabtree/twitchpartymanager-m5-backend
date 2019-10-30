class EventSerializer < ActiveModel::Serializer
  attributes :id, :eventname, :dateandtime, :serverinfo, :voip, :eventnote
end
