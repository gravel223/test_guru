class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index create]
  before_action :find_question, only: %i[show destroy]

  def index
    @questions = @test.questions
  end

  def create
    render plain: @question.body
  end

  def show

  end

  def destroy
    question = @question.destroy

    render plain: "Question '#{question[:body]}' deleted"
  end


  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

end

