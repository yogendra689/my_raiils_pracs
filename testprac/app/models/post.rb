class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :title, presence: true

  def leg
  	s="this is what i wanna to say!"
  end
end
