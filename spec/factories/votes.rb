FactoryGirl.define do
  factory :vote_1, class: 'Vote' do
    places %w(1 2 3)
  end

  factory :vote_2, class: 'Vote' do
    places ['1']
  end

  factory :vote_3, class: 'Vote' do
    places %w(1 3)
  end
end
