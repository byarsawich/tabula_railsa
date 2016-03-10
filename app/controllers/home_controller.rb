class HomeController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def edit
  end

  def show
  end

  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to survey_path(@survey.id), notice: 'Survey was successfully created.' }
      else
        flash.now[:notice] = "Survey was not save."
        format.html { render :new }
      end
    end
  end

  def update

  end

  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end

  private
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:name, :chocolate, :rainbows, :puppies, :cash)
    end

end
