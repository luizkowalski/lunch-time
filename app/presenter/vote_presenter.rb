class VotePresenter
  def present(vote)
    Place.where('id in (?)', vote.places).pluck(:name).join(', ')
  end
end
