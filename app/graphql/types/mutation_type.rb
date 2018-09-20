Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createMovie, function: Resolvers::CreateMovie.new
  field :updateMovie, function: Resolvers::UpdateMovie.new
  field :deleteMovie, function: Resolvers::DeleteMovie.new
  field :createReview, function: Resolvers::CreateReview.new
  field :updateReview, function: Resolvers::UpdateReview.new
  field :deleteReview, function: Resolvers::DeleteReview.new
end
