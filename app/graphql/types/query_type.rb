module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :vehicles, [Types::VehicleType], null: false do
      description "Query to get all vehicles"
    end

    field :vehiclesCount, Integer, null:false do
      description "Query that returns total number of vehicles"
    end

    def vehicles
      return Vehicle.all
    end
    def vehiclesCount
      return Vehicle.count
    end

    field :reviews, [Types::ReviewType], null: false do
      description "Query to get all reviews"
    end

    field :reviewsCount, Integer, null:false do
      description "Query that returns total number of reviews"
    end

    def reviews
      return Review.all
    end
    def reviewsCount
      return Review.count
    end



  end
end
