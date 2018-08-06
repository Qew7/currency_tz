module MainHelper
  def present(model)
    presenter = RatePresenter.new(model)
    yield(presenter) if block_given?
  end
end
