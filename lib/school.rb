# code here!

class School
  def initialize(school)
    @school = school
  end
  
  attr_accessor
  
  def add_student(name, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end  
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.collect do |key, value|
      value.sort
    end
  end
  
end