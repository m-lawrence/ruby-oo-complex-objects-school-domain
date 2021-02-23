class School 

    attr_reader :roster

    def initialize(roster={})
        @roster = roster={} 
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name 
        else
        @roster[grade] = []
        @roster[grade] << name
    end
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roster.map do |grade, name|
      @roster[grade] = @roster[grade].sort
      end
      @roster
    end

end