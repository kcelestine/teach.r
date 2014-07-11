class CoursesController < ApplicationController
  def index
    @courses = Course.all # where session is not 0
  end

  def show
    @course = Course.find(params[:id])
    @sessions = Session.where(course_id: @course.id)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if Course.update(course_params)
      redirect_to course_path(@course)
    else
      render :edit
    end
  end

  def course_params
    params.require(:course).permit(:name, :user_id, :start_date, :end_date)
  end
end
