class LessonsController < ApplicationController
  before_action :logged_in_user

  def index
    @lessons = if params[:search_lesson]
      Lesson.search_lesson(params[:search_lesson]).ordered_by_create_at
        .paginate page: params[:page], per_page: Settings.per_page
    else
      Lesson.ordered_by_create_at
        .paginate page: params[:page], per_page: Settings.per_page
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @lesson = Lesson.find params[:id]
    @words = @lesson.words.paginate(page: params[:page],
      per_page: Settings.length.page).alphabet
  end

end
