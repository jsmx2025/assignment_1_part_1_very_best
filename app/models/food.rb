class Food < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
