class Book < ActiveRecord::Base
  attr_accessible :author, :title
  has_many :reviews
  belongs_to :user
end
