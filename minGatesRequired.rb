def min_gates_required(arrivals, departures)
  arrivals.sort!
  departures.sort! 
  
  # A flight arrives before the next departure → need an extra gate.
  # A flight departs before the next arrival → free one gate. 
  
  i = j = gates = max_gates = 0
  
  while i < arrivals.length && j < departures.length
    
    if (arrivals[i] < departures[j]) 
      gates += 1
      max_gates = [max_gates, gates].max
      i += 1
    else 
      gates -= 1
      j += 1
    end
  end

  return max_gates
  
end 


arrivals = [900, 940, 950, 1100, 1500, 1800]
departures = [910, 1200, 1120, 1130, 1900, 2000] 
puts min_gates_required(arrivals, departures)  # Output: 3
