100.times do |i|
    Task.create(title: "Title #{i}", content: "Content #{i}")
end