module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false do
      description "The review ID"
    end
    field :title, String, null: true do
      description "The review's title"
    end
    field :description, String, null: true do
      description "The body of the review"
    end
    field :score, Integer, null: true do
      description "The score given by user in this review"
    end
    field :vehicle_id, Integer, null: false do
      description "The ID of this reviews vehicle"
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "When this review was first created"
    end
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "When this review was last updated"
    end
    field :vehicle, VehicleType, null: true
  end
end
