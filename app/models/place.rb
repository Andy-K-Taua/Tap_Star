class Place < ApplicationRecord

  belongs_to :user, optional: true

  has_many :ratings

  has_many :photos

end
