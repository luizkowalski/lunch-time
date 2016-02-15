class SlackPoster
  def self.process(attrs)
    new(attrs).tap(&:process)
  end

  def initialize(attrs)
    @message = attrs
    @url = ENV['SLACK_WEBHOOK']
    @poster = Slack::Poster.new(@url, options)
  end

  def process
    @poster.send_message(@message)
  end

  private

  def options
    {
      icon_emoji: ':pizza:',
      username: 'Tweek Lunch Bot',
      channel: '#lunch-plans'
    }
  end
end
