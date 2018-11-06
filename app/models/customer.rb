class Customer
  attr_accessor :first_name, :last_name
  @@all =[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @count = 0
    @all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  # should return **all** of the customer instances
  def self.all
    @@ll

  end

  #- given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(full_name)
    found_customer = self.all.find {|customer| customer.full_name == full_name}
    found_customer


  end

  #given a string of a first name, returns an **array** containing all customers with that first name
  def self.find_all_by_first_name(first_name)
    found_customer= []

       self.all.find do|customer| customer.first_name == first_name
          found_customer  << customer
        end
        found_customer
  end



  def add_review(restaurant, content, rating)
    Review.new(self,restaurant, content, rating)
    @count += 1
  end

  def num_reviews
    @count
  end


end
