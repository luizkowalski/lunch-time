require 'rails_helper'

describe VoteAggregator do
  let(:result) { [['1', 3], ['3', 2], ['2', 1]] }

  context 'when calculating votes' do
    before(:each) do
      create(:vote_1)
      create(:vote_2)
      create(:vote_3)
    end

    it 'expect the array to be correct' do
      expect(VoteAggregator.new.process).to be_eql result
    end
  end
end
