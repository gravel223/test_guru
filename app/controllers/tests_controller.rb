class TestsController < ApplicationController
  before_action :find_test, only: %i[show edit update destroy]

  def edit; end

  def show; end

  def index
    @tests = Test.all
  end

  def new
   @tests = Test.new
  end

  def destroy
    @tests.destroy

    redirect_to test_path
  end


  private

  def find_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end


end
