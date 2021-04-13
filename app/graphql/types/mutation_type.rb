module Types
  class MutationType < Types::BaseObject
    field :create_review_mutation, mutation: Mutations::CreateReviewMutation
    field :create_vehicle_mutation, mutation: Mutations::CreateVehicleMutation
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
