class Person < ApplicationRecord
  # self.primary_key = "person_id"



  # validates :name, length: { minimum: 2 }, presence: true
  # # validates :terms_of_service, acceptance: true
  #   validates :terms_of_service, acceptance: { message: 'must be abided' }end
  #     validates :terms_of_service, acceptance: { accept: 'yes' }
    # validates :email, confirmation: true
      validates :email_confirmation, presence: {strict: true}

      # validates :name, length: { maximum: 5,
    # too_long: "%{count} characters is the maximum allowed" }

      validates :points, numericality: true
      # validates :games_played, numericality: { only_integer: true }
      has_many :phone_numbers


      validate :points_check
      
      def points_check
        if points>100
          errors.add(:points, "can't be greater than 100")
        end
      end
    
end

# class GoodnessValidator < ActiveModel::Validator
#   def validate(record)
#     if record.name == "Evil"
#       record.errors.add :base, "This person is evil"
#     end
#   end
# end

# class Person < ApplicationRecord
#   validates_with GoodnessValidator
# end

