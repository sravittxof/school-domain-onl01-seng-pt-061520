# code here!
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student=(name, grade)
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