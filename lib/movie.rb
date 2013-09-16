class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS =2

  attr_reader :title
  attr_accessible :price_code

  def intiialize(title, price_code)
    @title, @price_code = title, price_code
  end
end