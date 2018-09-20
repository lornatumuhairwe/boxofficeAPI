Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allMovies, function: Resolvers::AllMovies.new
end
