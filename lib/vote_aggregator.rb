class VoteAggregator
  def process
    votes = Vote.where(created_at: [Date.today.beginning_of_day..Date.today.end_of_day]).map(&:places)
    votes = votes.zip.flatten.inject(Hash.new(0)) { |a, e| a.update(e => a[e] + 1) }
    votes.sort_by { |_k, v| v }.reverse
  end
end
