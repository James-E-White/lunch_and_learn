class RecipesSerializer
  include JSONAPI::Serializer

  set_id {nil}
  attributes :label, :url, :image, :country
end