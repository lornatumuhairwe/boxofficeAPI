class Resolvers::DeleteMovie < GraphQL::Function
  argument :id, !types.ID

  type types.String

  def call(_obj, args, _ctx)
    movie = Movie.find(args[:id])
    return unless movie

    movie.destroy

    'Deleted'
  end
end
