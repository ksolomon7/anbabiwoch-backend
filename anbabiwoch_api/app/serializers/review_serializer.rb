class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :ratings, :book_id

  belongs_to :user
end
