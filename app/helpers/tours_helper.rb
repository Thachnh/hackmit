module ToursHelper
  def total_booking bookings
 	return bookings.length rescue nil
  end
end
