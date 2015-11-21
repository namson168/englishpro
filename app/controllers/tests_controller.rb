class TestsController < ApplicationController
  before_action :init_test, only: [:edit, :update]
  before_action :init_lesson, only: [:create, :edit, :update]
  before_action :logged_in_user
  
  def create
    @test = Test.new lesson_id: @lesson.id, user_id: current_user.id
    if @test.save
      flash[:success] = t "create_test_success"
      redirect_to edit_lesson_test_path(@lesson, @test)
    else
      full_messages = ""
      @test.errors.full_messages.each do |message|
        full_messages += message
      end
      flash[:danger] = full_messages
      redirect_to lessons_path
    end
  end

  def edit
    @time_remain = @test.time_remain
    @time_over = @test.time_remain <= 0
  end

  def update
    if @test.update_attributes test_params
      flash[:success] = t "update_test_success"
      redirect_to edit_lesson_test_path
    else
      flash[:danger] = t "update_test_fail"
      redirect_to lessons_path
    end
  end

  private
  def init_test
    @test = Test.find params[:id]
  end

  def init_lesson
    @lesson = Lesson.find params[:lesson_id]
  end

  def test_params
    params.require(:test).permit results_attributes: [:id, :word_id, :answer_id]
  end

end