class Resolvers::CreateMovie < GraphQL::Function
  argument :title, !types.String
  argument :director, !types.String

  type Types::MovieType

  def call(_obj, args, _ctx)
    Movie.create!(
     title: args[:title],
     director: args[:director]
    )
  end
end
