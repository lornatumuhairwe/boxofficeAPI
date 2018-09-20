class Resolvers::CreateReview < GraphQL::Function
  argument :movie_id, !types.Int
  argument :comment, !types.String
  argument :author, !types.String

  type Types::ReviewType

  def call(_obj, args, _ctx)
    movie = Movie.find(args[:movie_id])

    movie.reviews.create!(
     comment: args[:comment],
     author: args[:author]
    )
  end
end
