# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    i = j = 0

    while (i < m && j < n)
        if (nums1[i] <= nums2[j])
            i += 1 
        else 
            nums1[i], nums2[j] = nums2[j], nums1[i]
            i +=1 
        end
    end

    (m...nums1.length).each do |ind|
        nums1[ind], nums2[j] = nums2[j], nums1[ind]
        j +=1
    end
    
end


#create a new array to store the elements 
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
