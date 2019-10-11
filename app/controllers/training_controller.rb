class TrainingController < ApplicationController

before_action :authenticate_user!

  def index
	flash[:success] = ''
	if !params[:my_answer].blank?
		if params[:my_answer].to_s == session[:answer].to_s
			#flash[:success] = '<span>&#9989;</span> correct!'
			#flash[:success] = 'Correct!'
			session[:answer] = ''
		else
			flash[:success] = ' Incorrect, the answer is ' + session[:answer].to_s
			session[:answer] = ''
		end
	end

	@question = Question.new
	session[:answer] = @question.answer
  end
end
