class RateUpdateJob
  def perform
  	actualize(rate)
  end

  private

  def actualize(rate)
  	Rate.create!(value: rate) if rate.present?
  end

  def rate
    RateGetter.new.call
  end
end
