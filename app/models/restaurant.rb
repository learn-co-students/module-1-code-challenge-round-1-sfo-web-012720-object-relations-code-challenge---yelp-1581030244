class Restaurant

  attr_reader :name

  def initialize(name)

    @name = name
  
  end

  def reviews

    output = []

    for review in Review.all

      if review.restaurant == self

        output << review

      end
      
    end

    output

  end

  def customers

    output = []

    for review in Review.all

      output << review.customer

    end

    output.uniq

  end

  def average_star_rating

    count = 0
    rating = 0

    for review in Review.all

      if review.restaurant == self

        count += 1
        rating += review.rating

      end

    end

    rating / count

  end

end
