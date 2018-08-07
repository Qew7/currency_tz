class MainController < ApplicationController
  before_action :choose_rate, only: [:rate, :admin]

  #GET /
  def rate
  end

  # GET /admin
  def admin
  end

  # POST /admin
  def force
    @rate = ForcedRate.new(forced_rate_params)

    respond_to do |format|
      if @rate.save
        format.html  { redirect_to(admin_url,
                      notice: "Новый курс #{@rate.value} продержится до #{@rate.last_to}.") }
      else
        format.html  { redirect_to(admin_url,
                      error: "Ошибка!") }
      end
    end
  end

  private

  def choose_rate
    @rate = RateChooser.new.call
  end

  def forced_rate_params
    params.require(:forced_rate).permit(:value, :last_to)
  end
end
