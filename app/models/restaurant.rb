class Restaurant < ActiveRecord::Base

  # has_many :reviews
  validates :name, length: { minimum: 3 }

  has_many :reviews,
      -> { extending WithUserAssociationExtension },
      dependent: :destroy

end
