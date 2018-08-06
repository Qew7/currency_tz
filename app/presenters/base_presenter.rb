class BasePresenter < SimpleDelegator
  def initialize(model)
    super(model)
  end
end