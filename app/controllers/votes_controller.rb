class VotesController < ApplicationController
  before_action :authenticate

  def index
    @vote = Vote.find_or_initialize_by(user: user, created_at: [Date.today.beginning_of_day..Date.today.end_of_day])
    @places = Place.all
  end

  def create
    Vote.create(user: user, places: params[:votes].to_json)
    redirect_to root_path
  end

  def destroy
    Vote.find(params[:id]).delete
    redirect_to root_path
  end

  def post_to_slack
    SlackPoster.process results
    render nothing: true
  end

  private

  def results
    VotesResultPresenter.new.present(VoteAggregator.new.process)
  end
end
