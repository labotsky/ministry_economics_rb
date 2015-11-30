module NewsHelper
  def date_format(date)
    date.strftime("%d/%m/%Y")
  end
end
