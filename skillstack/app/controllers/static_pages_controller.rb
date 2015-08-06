class StaticPagesController < ApplicationController
  def home
    @search = Lesson.search(params[:q])
    @lessons = @search.result
    @categories = Category.all
  end
end
