class CareersController < ApplicationController
  include ActionView::Helpers::TextHelper

  before_action :set_career, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  def index
    @careers = Career.all
  end

  def new
    @career = Career.new
  end

  def show
  end

  def edit
  end

  def create
    @career = Career.new(career_params)
    respond_to do |format|
      if @career.save
        format.html { redirect_to @career, notice: 'Job Posting Created' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @career.update(career_params)
        format.html { redirect_to @career, notice: 'Job Posting Updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @career.destroy
    respond_to do |format|
      format.html {redirect_to careers_url, notice: 'Job Posting deleted' }
    end
  end

  private

  def set_career
    @career = Career.find(params[:id])
  end

  def career_params
    params.require(:career).permit(:position, :location, :description, :user_id, :username, :name, :dob, :gender)
  end
end
