class Ticket
  VENUES = ["convention center","Fairgrounds", "Town Hall"]

  def initialize(venue, date)
    if VENUES.include? (venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
end

jijo = Ticket.new
puts jijo::VENUES
