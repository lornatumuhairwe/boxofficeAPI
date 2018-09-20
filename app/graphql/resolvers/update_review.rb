class Resolvers::UpdateReview < GraphQL::Function
  argument :id, !types.Int
  argument :comment, !types.String

  type Types::ReviewType

  def call(_obj, args, _ctx)
    review = Review.find(args[:id])
    return unless review

    review.update(comment: args[:comment])

    review
  end
end
