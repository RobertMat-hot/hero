class HomeController < ApplicationController
  before_action :common, :only => [:index, :team, :custom]

  def common
    @name = Faker::Superhero.name
    @power = Faker::Superhero.power

    @rand_num = rand(1..1000)
    @set_num = rand(1..4)
    if @set_num == 1
      @set = "set1"
    elsif @set_num == 2
      @set = "set2"
    elsif @set_num == 3
      @set = "set3"
    elsif @set_num == 4
      @set = "set4"
    end

    @avatar = Faker::Avatar.image(slug: @rand_num, size: "300x300", format: "png", set: @set, bgset: "bg1")
  end

  def index
   
  end

  def team
    @team_number = params[:team_number].to_i
  end

  def custom
    @hero_name = params[:heroname]
    @superpower = params[:superpower]
    @vary = params[:vary].to_i
  end
end
