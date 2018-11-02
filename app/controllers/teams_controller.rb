class TeamsController < ApplicationController
  before_action :set_teams, only: [:league]
  def league
  end

  private

  def set_teams
    puts params
  @teams  = case params[:conference]
            when "Eastern"
              Team.eastern.ordered
            when "Western"
              Team.western.ordered
            else
              Team.all.ordered
            end   
  end
end
