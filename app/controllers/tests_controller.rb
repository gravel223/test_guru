class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def destroy
    @tests.destroy

    redirect_to test_path
  end

  private

  def test_find
    @tests = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end


end
