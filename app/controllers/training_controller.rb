class TrainingController < ApplicationController

before_action :authenticate_user!

  def index
	flash[:success] = ''
	if !params[:operation].blank?
		session[:active_operation] = params[:operation]
	end	
	if session[:active_operation].blank?
		session[:active_operation] = '+'
	end	

	if !params[:my_answer].blank?
		if params[:my_answer].to_s == session[:answer].to_s
			flash[:success] = '<span>&#9989;</span> correct!'
			session[:answer] = ''
			prev_answer = Answer.new
			prev_answer.operand1 = session[:operand1]
			prev_answer.operand2 = session[:operand2]
			prev_answer.operation = session[:operation]
			prev_answer.user_id = current_user.id
			prev_answer.correct = true
			prev_answer.save
			
		else
			flash[:success] = '<span>&#10060;</span> incorrect, the answer is ' + session[:answer].to_s
			session[:answer] = ''
			prev_answer = Answer.new
			prev_answer.operand1 = session[:operand1]
			prev_answer.operand2 = session[:operand2]
			prev_answer.operation = session[:operation]
			prev_answer.user_id = current_user.id
			prev_answer.correct = false
			prev_answer.save
		end
	end
	
	#if !params[:operation].blank?
	#	session[:operation] = 
	
	@question = Question.new(session[:active_operation])
	session[:operand1] = @question.operand1
	session[:operand2] = @question.operand2
	session[:operation] = @question.operation
	session[:answer] = @question.answer
  end
end
