class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def statement
    total, frequent renter_points = 0, 0
    result = "Rental Record for #{@name}\n"

    @rentals.each do |rental|
      sub_total = 0

      case rental.movie.price_code
      when Movie::REGULAR
        sub_total += 2
        sub_total += (rental.days_rented - 2) * 1.5 if rental.days_rented > 2
      when Movie::NEW_RELEASE
        sub_total += rental.days_rented * 3
      when Movie::CHILDRENS
        sub_total += 1.5
        sub_total += (rental.days_rented - 3) * 1.5 if rental.days_rented > 3
    end

    frequent_renter_points += 1

    if rental.movie.price_code == Movie::NEW_RELEASE && rental.days_rented > 1
      frequent_renter_points += 1
    end

    result += "\t" + rental.movie.title + "\t" + sub_total.to_s + "\n"
    total += sub_total
  end

  result += "Amount owed is #{total}\n"
  result += "You earned #{frequent_renter_points} frequent renter points"
  result
end