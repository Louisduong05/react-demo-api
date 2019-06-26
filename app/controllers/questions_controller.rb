class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    questions = Question.all.includes(:answers)
    res = []
    questions.each do |question|
      res << {
        id: question.id,
        title: question.title,
        answers: question.answers
      }
    end
    render json: res, status: :ok
  end
  
  def answer
    question = Question.find(params[:id])
    user = User.find_or_create_by(name: params[:name])
    answer = question.answers.find(params[:answer_id])
    user.answers << answer
    render json: {}, status: :ok
  end
end