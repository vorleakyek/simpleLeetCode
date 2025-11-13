def array_rotation(arr, k)
  
  result = []
  
  (0...arr.length).each do |i| 

    result << arr[(i+k)%arr.length] 
  end
  
  result
end

print array_rotation([1,2,3,4,5,6,7], 3)

# pulling elements from ahead and placing them earlier — which is the essence of left rotation.
