Types::ReviewType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'Link'

  # it has the following fields
  field :id, !types.ID
  field :comment, !types.String
  field :author, !types.String
end
