class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :authors, :publisher, :published_date, :description, :image, :main_category
 
  has_many :reviews

end
