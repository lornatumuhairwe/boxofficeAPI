class Resolvers::DeleteReview < GraphQL::Function
  argument :id, !types.ID

  type types.String

  def call(_obj, args, _ctx)
    review = Review.find(args[:id])
    return unless review

    review.destroy

    'Review Deleted!'
  end
end