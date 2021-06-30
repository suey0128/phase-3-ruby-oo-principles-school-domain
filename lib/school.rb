require 'pry'
class School
    attr_accessor :name, :roster

    def initialize name, roster={}
        @name = name
        @roster = roster
    end 

    def add_student name, grade
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade grade
        @roster[grade]
    end

    def sort 
        # @roster.sort_by{|grade, name_arr| name_arr[0]}.to_h
        # @roster.sort.to_h
        # @roster[grade].map{|name_arr| 
        #     name_arr.sort
        # }
        @roster.map{|grade, name_arr|
            name_arr.sort!
        }
        @roster

    end

end

school = School.new("Bayside High School") 

# binding.pry