class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :ratings

  belongs_to :user
end
