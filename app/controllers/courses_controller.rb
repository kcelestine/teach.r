class CoursesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  def index
    @courses = Course.all # where session is not 0
  end

  def show
    @course = Course.find(params[:id])
    @sessions = Session.where(course_id: @course.id)
    @students = @course.students
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

  def new_student
    @student = Student.new
    render :new_student
  end

  def create_student
    #need course id passed through params
    @course = params[:course_id]
    pass = Generator.alphabetic_string(8)
    @student = Student.new(name: "Student #{@course.students.count + 1}", email: params[:email], password: pass, password_confirmation: pass)
    if @student.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def student_params
    params.require(:student).permit(:name, :email, :password, :pasword_confirmation)
  end

  def course_params
    params.require(:course).permit(:name, :user_id, :start_date, :end_date)
  end
end
