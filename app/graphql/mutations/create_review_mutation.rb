module Mutations
  class CreateReviewMutation < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :review, Types::ReviewType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :title, String, required: true do
      description "The title is a string and is required to post a review"
    end
    argument :description, String, required: true do
      description "The description is the review body, is a string and is required to post a review"
    end
    argument :score, Integer, required: true do
      description "The score is an integer and it is required to leave a review"
    end
    argument :vehicle, Integer, required: true do
      description "The id of this reviews vehicle"
    end

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(title:, description:, score:, vehicle:)
      @review = Review.new(title: title, description: description, score: score, vehicle: Vehicle.find_by_id(vehicle))

      if (@review.save)
        {
          review: @review,
          errors: []
        } else {
          review: nil,
          errors: @review.errors.full_messages
        }
      end
    end

   
  end
end
