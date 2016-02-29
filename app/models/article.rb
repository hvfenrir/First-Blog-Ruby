class Article < ActiveRecord::Base
	
  # attr_accessible :title, :body
 
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  validates :comment, presence: true
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end
end
