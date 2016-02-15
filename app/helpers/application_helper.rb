module ApplicationHelper
  def show_date
    Date.today.strftime('%d/%m/%Y, %A')
  end
end
