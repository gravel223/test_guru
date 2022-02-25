class PassedTestsController < ApplicationController
  before_action :set_passed_test, only: %i[ show edit update destroy ]

  def show
  end

  def edit
  end

  def update
      @passed_tests.accept!(params[:answer_ids])

    if @passed_tests.completed?
      redirect_to result_passed_test_path(@passed_tests)
    else
      render :show
    end
  end

  private

    def set_passed_test
      @passed_test = PassedTest.find(params[:id])
    end


end
