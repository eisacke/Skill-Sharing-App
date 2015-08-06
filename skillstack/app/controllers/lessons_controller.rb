class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  # GET /lessons
  # GET /lessons.json
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

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
   params[:lesson][:teacher_id] = current_user.id
   @lesson = Lesson.new(lesson_params)
   if @lesson.save
     redirect_to @lesson
   else
     render :new
   end
 end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:title, :description, :image_one, :image_two, :image_three, :location, :cost, :teacher_id, :category_id, :city, :longitute, :latitude)
    end
  end
