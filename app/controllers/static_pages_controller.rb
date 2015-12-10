class StaticPagesController < ApplicationController
  def home
    @sliders = Slider.all
  end
end
