class Resolvers::GetMovie < GraphQL::Function
  argument :id, !types.ID

  type Types::MovieType

  def call(_obj, args, _ctx)
    Movie.find(args[:id])
  end
end