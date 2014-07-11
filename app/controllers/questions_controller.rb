class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @session = Session.find(@question.session_id)
    if @question.save
      redirect_to session_path(@session)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path(@question)
    else
      render :edit
    end
  end

  def question_params
    params.require(:question).permit(:question, :answer, :session_id)
    # always require session_id? teacher should be able to move a question to a different session
  end

end
