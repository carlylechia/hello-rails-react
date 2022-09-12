class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :text
end
