class TestsController < ApplicationController
 before_action :find_test, only: %i[show edit update destroy start]
  before_action :set_user, only: :start

  def edit; end

  def show; end

  def start
    @user.tests.push(@test)
    redirect_to @user.passed_test(@test)
  end

  def index
    @tests = Test.all
  end

  def new
   @test = Test.new
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  def destroy
    @tests.destroy

    redirect_to test_path
  end

  def update
    if @test.update(test_params)
      redirect_to @test
    else
      render :edit
    end
  end

  def set_user
    @user = User.first
  end

  def destroy
    @test.destroy

    redirect_to tests_path
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :author_id)
  end


end
