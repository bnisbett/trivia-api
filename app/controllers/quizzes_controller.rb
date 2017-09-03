class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[show update destroy]

  # GET /quizzes
  def index
    @quizzes = Quiz.all

    render json: @quizzes, include: ["questions", "questions.answers"]
  end

  # GET /quizzes/1
  def show
    render json: @quiz, include: ["questions", "questions.answers"]
  end

  # POST /quizzes
  def create
    @quiz = Quiz.new(quiz_params)

    if @quiz.save
      render json: @quiz, status: :created, location: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      render json: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def quiz_params
    params.fetch(:quiz, {})
  end
end
