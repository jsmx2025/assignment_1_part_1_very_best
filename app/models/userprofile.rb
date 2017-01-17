class Userprofile < ApplicationRecord
  # Direct associations

  belongs_to :bookmark

  belongs_to :user

  # Indirect associations

  # Validations

end
