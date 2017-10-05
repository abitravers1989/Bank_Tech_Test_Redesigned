require 'Date'
# Class is responsible for creating today's date in the correct format.
class DateNow
  def createdate
    Date.today.strftime('%d/%m/%Y')
  end
end
