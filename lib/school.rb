# code here!
class School

    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] = [] if @roster[grade] == nil
        roster[grade] << name
    end

    def grade(number)
        @roster[number]
    end

    def sort
        sorted = {}
        @roster.each do |grade, name|
        sorted[grade] = name.sort
        end
        sorted
    end
end