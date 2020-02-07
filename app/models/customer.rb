class Customer

  @@all = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)

    @given_name = given_name
    @family_name  = family_name
    @@all << self

  end

  def self.all

    @@all

  end

  def full_name

    "#{given_name} #{family_name}"
  
  end

  def restaurants

    output = []

    for review in Review.all

      if review.customer == self

        output << review.restaurant

      end

    end

    output.uniq

  end

  def add_review(restaurant, review)

    Review.new(self, restaurant, review)

  end

  def num_reviews

    count = 0

    for review in Review.all

      if review.customer == self

        count += 1

      end

    end

    count

  end

  def self.find_by_name(name)

    for customer in self.all

      if name == customer.full_name

        return customer

      end

    end

    nil

  end
  
  def self.find_all_by_given_name(name)

    output = []

    for customer in self.all

      if name == customer.full_name

        output << customer

      end

    end

    output

  end

end
