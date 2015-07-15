class School
  attr_accessor :students, :instructors
  attr_reader :ranking, :name, :location

  def initialize(name, location, ranking)
    @name = name
    @location = location
    @ranking = ranking
    @@schools << self
    @@school_count += 1
    @students = []
    @instructors = []
  end

  @@school_count = 0
  @@schools = []
  
  def self.all
    @@schools
  end

  def self.count
    @@school_count
  end

  def self.reset_all
    @@schools = []
    @@school_count = 0
  end

  def add_student(name, grade, semester)
    @students << { name: name, grade: grade, semester: semester }
  end

  def remove_student(name)
    @students.delete(name)
  end
end

school = School.new("Flatiron School", "NYC", 5)