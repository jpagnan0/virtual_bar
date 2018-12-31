class DrinkUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions, :source, :proportions
  belongs_to :user
end
