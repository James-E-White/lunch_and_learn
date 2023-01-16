class RecipesSerializer
  include JSONAPI::Serializer

  set_id {nil}
  attributes :label, :uri, :image, :country
end