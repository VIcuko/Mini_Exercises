class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end

    def show_name
    	@name
    end
    def show_email
    	@email
    end
end


