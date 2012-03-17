class QuestionsController < ApplicationController

  def index
    render :json => Question.all.to_json()
  end

  def show
    render :json => Question.find(params[:id])
  end

  def create
    question = Question.create! params
    render :json => question
  end

  def update
    question = Question.find(params[:id])
    question.update_attributes! params
    render :json => question
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to index
  end

end
