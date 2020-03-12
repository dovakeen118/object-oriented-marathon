class Cage
  attr_accessor :animal

    def initialize()
        @animal = nil
    end

    def empty?
      !@animal

      # @animal.nil?

      # @animal == nil

      # @animal == nil ? true : false

      # if @animal == nil
      #   true
      # else
      #   false
      # end

    end

end
