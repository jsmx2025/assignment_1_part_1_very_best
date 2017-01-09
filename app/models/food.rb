class Food < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :bookmarks,
             :dependent => :nullify

  # Indirect associations

  has_one    :venue,
             :through => :bookmarks,
             :source => :venue

  # Validations

end
