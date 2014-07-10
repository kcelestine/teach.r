class SessionsController < ApplicationController
  def show
    @questions = Question.find_by(session_id: params[:id])
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to sessions_path
    else
      render :new
    end
  end

  def edit
    @session = Session.find(params[:id]
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
  end
end
