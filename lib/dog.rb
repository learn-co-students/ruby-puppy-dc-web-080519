class Dog
  # class variable to save all Dog instances
  @@all = []

  # program can read and write to this instance variable
  attr_accessor :name

  def initialize(name)
    # each new instance is assigned its argument name and calls save function
    @name = name
    save
  end

  def save
    # push this instance onto array of all Dogs
    @@all << self
  end

  def self.all
    # return array of all Dog instances
    @@all
  end

  def self.clear_all
    # empty dog array
    @@all.clear
  end

  def self.print_all
    # find name value of each instance in @@all and puts it out
    self.all.each do |dog|
      puts dog.name
    end
  end
end
