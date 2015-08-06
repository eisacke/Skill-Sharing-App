class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @search = Lesson.search(params[:q])
    @lessons = @search.result
    @categories = Category.all
  end

  def teacher_lessons
    @lessons = current_user.lessons
    render :teacher_lessons
  end

  def upvote 
    @lesson = Lesson.find(params[:id])
    @lesson.upvote_by current_user
    redirect_to :back
  end  

  def downvote
    @lesson = Lesson.find(params[:id])
    @lesson.downvote_by current_user
    redirect_to :back
  end

  def show
    @categories = Category.all
  end

  def new
    @lesson = Lesson.new
  end

  def edit
  end

  def create
   params[:lesson][:teacher_id] = current_user.id
   @lesson = Lesson.new(lesson_params)
   if @lesson.save
     redirect_to @lesson
   else
     render :new
   end
 end

  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url }
    end
  end

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def lesson_params
      params.require(:lesson).permit(:title, :description, :image_one, :image_two, :image_three, :location, :cost, :teacher_id, :category_id, :city, :longitute, :latitude)
    end
  end
