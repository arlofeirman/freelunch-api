class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :conversation_id
end
