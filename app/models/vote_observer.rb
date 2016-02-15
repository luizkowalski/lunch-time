class VoteObserver < ActiveRecord::Observer
  def after_save(vote)
    SlackPoster.process("#{vote.user} just voted!") unless Rails.env.test?
  end

  private

  def results_presented
    VotesResultPresenter.new.present(results)
  end

  def results
    VoteAggregator.new.process
  end
end
