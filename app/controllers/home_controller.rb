class HomeController < ApplicationController

  def form
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to dishes_path, notice: 'Dish was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def  survey_params
    params.require(:survey).permit(:name, :chocolate, :rainbows, :puppies, :cash)
  end



end
