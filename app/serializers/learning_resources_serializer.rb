class LearningResourcesSerializer
  include JSONAPI::Serializer

  set_id {nil}
  attributes :video, :images, :country
end