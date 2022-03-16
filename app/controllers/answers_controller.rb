class AnswersController < ApplicationController
  before_action :find_question, only: %i[ new create ]
  before_action :set_answer, only: %i[ show edit update destroy ]

   def show; end

  def new
    @answer = @question.answer.new
  end

    def edit; end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to @question
    else
      render :new
    end
  end

  private

    def find_question
      @question = Question.find(params[:question_id])
    end

    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:body, :correct)
    end
end
