Types::MovieType = GraphQL::ObjectType.define do
  name 'Movie'

  field :id, !types.ID
  field :title, !types.String
  field :director, !types.String
  field :reviews, !types[Types::ReviewType]
  # field :release_date, !types.DateTime
end
