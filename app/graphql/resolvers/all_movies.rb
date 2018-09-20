class Resolvers::AllMovies < GraphQL::Function
  type !types[Types::MovieType]

  def call(_obj, args, _ctx)
    Movie.all
  end
end
