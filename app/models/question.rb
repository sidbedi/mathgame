class Question

	attr_accessor :operand1, :operand2, :operation, :question_string, :answer

	def initialize(operation = '+')
		@operation = operation
		@operand1 = rand(12)		
		@operand2 = rand(12)
		if @operand1 <  @operand2
			@operand1, @operand2 = @operand2, @operand1
		end
        	@question_string = "#{@operand1} #{@operation} #{@operand2}"
		Rails.logger.debug @question_string
        	@answer = eval(@question_string)
	end	

end
