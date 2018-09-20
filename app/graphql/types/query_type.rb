Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allMovies, !types[Types::MovieType] do
    description "Fetch all the movies"

    resolve ->(obj, args, ctx) {
      Movie.all
    }
  end
end
