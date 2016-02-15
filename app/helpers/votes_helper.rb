module VotesHelper
  def print_places(vote)
    VotePresenter.new.present(vote)
  end

  def print_choices
    VotesResultPresenter.new.present(VoteAggregator.new.process)
  end
end
