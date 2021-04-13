module Types
  class VehicleType < Types::BaseObject
    field :id, ID, null: false do
      description "Vehicle id"
    end  
    field :name, String, null: true do
      description "Vehicle's name ex: Dirt bike"
    end  
    field :description, String, null: true do
      description "Description of the vehicle"
    end
    field :slug, String, null: true do
      description "Url to find this vehicle"
    end
    field :price, Float, null: true do
      description "The price to rent the vehicle"
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time the vehicle was added to database"
    end
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time the vehicle was last updated in database"
    end
    field :review, [ReviewType], null: true do
      description "Reveiws associated with this vehicle"
    end
  end
end
