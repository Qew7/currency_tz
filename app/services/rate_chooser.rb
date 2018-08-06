class RateChooser
  def call
  	forced_rate = ForcedRate.last
  	if forced_rate.present? && forced_rate.last_to > DateTime.now
  	  result = forced_rate
  	else
  	  result = Rate.last
  	end
  	result
  end
end