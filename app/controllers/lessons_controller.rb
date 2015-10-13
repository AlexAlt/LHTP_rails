class LessonsController < ApplicationController
  def index
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    render :show
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to sections_path
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
    render :new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "You did it!! Lesson added."
      redirect_to sections_path(@lesson.section)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render :edit
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to sections_path(@lesson.section)
    else
      render :edit
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :description, :number)
  end
end
