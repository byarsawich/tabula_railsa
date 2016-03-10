class HomeController < ApplicationController

  def new
    @survey = Survey.new
  end

  def show
    @survey = Survey.find(params[:id])
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

  def  survey_params
    params.require(:survey).permit(:name, :chocolate, :rainbows, :puppies, :cash)
  end

end
