def line(katz_deli)
    if katz_deli.length == 1
      katz_deli.each_with_index do |name, index|
        newLine = ["The line is currently:"]
        newLine.push("#{index + 1}. #{name}")
        puts newLine.join(" ")
      end
     else
       puts "The line is currently empty."
     end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0 
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.delete(katz_deli.first)
  else
    puts "There is nobody waiting to be served!"
  end
end