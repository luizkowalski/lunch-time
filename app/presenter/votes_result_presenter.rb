class VotesResultPresenter
  include ActionView::Helpers::TextHelper

  # Example of results: [["1", 3], ["3", 2], ["2", 1]]
  def present(results)
    result_presented = []
    results.each do |result|
      vote = result[1]
      result_presented << "#{select_place_name(result[0])} with #{pluralize(vote, 'vote')}"
    end

    result_presented.join(', ')
  end

  private

  def select_place_name(id)
    Place.find(id).name
  end
end
