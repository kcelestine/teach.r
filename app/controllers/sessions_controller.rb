class SessionsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  def show
    @questions = Question.where(session_id: params[:id]).where.not( answer: nil)
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
    @courses = Course.where(user_id: current_user.id)
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to course_path(@session.course_id)
    else
      render :new
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    if @session.update(session_params)
      redirect_to session_path(@session) #should go to show page?
    else
      render :edit
    end
  end

  def session_params
    params.require(:session).permit(:name, :date, :sequence_num, :course_id)
  end
end
