class Question

	attr_accessor :operand1, :operand2, :operation, :question_string, :answer

	def initialize
		@operation = '-'		
		@operand1 = rand(12)		
		@operand2 = rand(12)
        	@question_string = "#{@operand1} #{@operation} #{@operand2}"
        	@answer = eval(@question_string)
	end	

end
