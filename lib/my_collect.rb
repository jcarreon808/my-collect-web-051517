def my_collect(arr)
  if block_given?
    i = 0
    result=[]
    while i < arr.length
      result<<yield(arr[i])
      i = i + 1
    end
    result
  else
     "Hey! No block was given!"
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
