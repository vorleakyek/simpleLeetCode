def merge_sorted_arr(arr1, arr2)
  i = 0
  j = 0 
  result = []
  
  while (i<arr1.length && j<arr2.length)
    if (arr1[i] < arr2[j])
      result << arr1[i]
      i += 1 
    else 
      result << arr2[j]
      j += 1 
    end
  end
  
  if (i < arr1.length) 
    result.push(*arr1.slice(i..-1))
  end 
  
  if (j < arr2.length)
    result.push(*arr2.slice(j..-1))
  end

  result
end

print merge_sorted_arr([2,3,4,5], [1,2])


def merge_sorted_arr(a, b)
  i = j = 0
  result = []

  while i < a.length && j < b.length
    if a[i] <= b[j]
      result << a[i]
      i += 1
    else
      result << b[j]
      j += 1
    end
  end

  # Append leftovers (no slicing, no splat)
  result.concat(a[i..]) if i < a.length
  result.concat(b[j..]) if j < b.length

  result
end
