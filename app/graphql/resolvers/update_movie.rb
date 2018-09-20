class Resolvers::UpdateMovie < GraphQL::Function
  argument :id, !types.ID
  argument :title, !types.String
  argument :director, types.String

  type Types::MovieType

  def call(_obj, args, _ctx)
    movie = Movie.find(args[:id])
    return unless movie

    movie.update(
     title: args[:title]
    )

    movie

  rescue ActiveRecord::RecordNotFound => e
    GraphQL::ExecutionError.new("No movie with ID #{args[:id]} found.")
  end

end
