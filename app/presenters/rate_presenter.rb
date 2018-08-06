class RatePresenter < BasePresenter
  def initialize(model)
  	@model = model  	
  end

  def value
    if @model.respond_to?(:value)
      value = @model.value
    else
      value = RateGetter.new.call
    end
    value.to_f.round(2)
  end
end