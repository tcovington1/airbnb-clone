module Mutations
  class CreateVehicleMutation < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :vehicle, Types::VehicleType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :name, String, required: true do
      description "The name field is a string and is required to create a new vehicle"
    end
    argument :description, String, required: true do
      description "The description field is a string and is required to create a new vehicle"
    end
    argument :slug, String, required: true do
      description "The slug field is a string and is required to create a new vehicle"
    end
    argument :price, String, required: true do
      description "The price field is a decimal and is required to create a new vehicle"
    end
    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(name:, description:, slug:, price:)
      @vehicle = Vehicle.new(name: name, description: description, slug: slug, price: price)

      if (@vehicle.save)
        {
          vehicle: @vehicle,
          errors: []
        } else {
          vehicle: nil,
          errors: @vehicle.errors.full_messages
        }
      end
    end  
  end
end
