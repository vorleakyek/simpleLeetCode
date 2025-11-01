def min_gates_required(arrivals, departures)
  sorted_arrivals = arrivals.sort
  sorted_departures = departures.sort
  
  # A flight arrives before the next departure → need an extra gate.
  # A flight departs before the next arrival → free one gate. 
  
  
end 



arrivals = [900, 940, 950, 1100, 1500, 1800]
departures = [910, 1200, 1120, 1130, 1900, 2000] 
puts min_gates_required(arrivals, departures)  # Output: 3
