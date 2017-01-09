class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
