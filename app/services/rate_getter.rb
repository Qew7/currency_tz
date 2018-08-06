require 'open-uri'

class RateGetter
  CUR_CODE = 'R01235'.freeze
  private_constant :CUR_CODE

  def call(date=Date.today)
    @date = date
    correct_date if date_incorrect?
    currency_rate_for(date)
  end

  private

  def date_incorrect?
    @date.monday? || @date.sunday?
  end

  def correct_date
    @date = @date - (@date.wday.zero? ? 1.day : 2.days)
  end

  def currency_rate_for(date)
    Nokogiri::HTML(open(url)).xpath('//value').text.gsub(/,/, '.')
  end

  def url
    formatted_date = @date.strftime("%d/%m/%Y")
    "http://www.cbr.ru/scripts/XML_dynamic.asp?date_req1=#{formatted_date}&date_req2=#{formatted_date}&VAL_NM_RQ=#{CUR_CODE}"
  end
end
