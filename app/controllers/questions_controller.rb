class QuestionsController < ApplicationController

  def index
    render :json => Question.random.to_json()
  end

  def show
    render :json => Question.find(params[:id])
  end

  def create
    question = Question.new
    question.question = params[:question]
    question.answer = params[:answer]
    question.created_at = Date.current
    question.updated_at = Date.current
    question.save()
    render :json => question
  end

  def update
    question = Question.find(params[:id])
    question.update_attribute("question", params[:question])
    question.update_attribute("answer", params[:answer])
    question.update_attribute("updated_at", Date.current)
    #question.save()
    render :json => question
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    redirect_to index
  end

end
