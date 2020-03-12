class Zoo
    attr_reader :cages, :employees
    def initialize(name, opening_date, closing_date)
        @name = name
        @opening_date = opening_date
        @closing_date = closing_date
        @cages = create_cages(10)
        @employees = []
        
        # @cages = Array.new(10, Cage.new)
       
        # @cages = [Cage.new] * 10

        # @cages = []
        # 10.times do
        #   @cages << Cage.new
        # end
    end

    def create_cages(num_cages)
        cage_array = []
        num_cages.times do
            cage_array.push(Cage.new)
        end
        cage_array
    end

    def add_employee(employee)
        @employees << employee
    end

    def open?(date)
        if date <= @closing_date && date >= @opening_date
            true
        else
            false
        end

        # date <= @closing_date && date >= @opening_date ? true : false
        
        # date <= @closing_date && date >= @opening_date
    end 
    

    def add_animal(animal)
      @cages.each do |cage|
        if cage.empty?
            return cage.animal = animal
        end
      end
      return "Your zoo is already at capacity!"
    end

    def visit
      visit_summary = ""
      @employees.each { |employee| 
        visit_summary += "#{employee.greet}\n"
      }
      @cages.each { |caged_animal|
        if !caged_animal.empty?
            visit_summary += "#{caged_animal.animal.speak}\n"
        end
      }
      return visit_summary
    end

end