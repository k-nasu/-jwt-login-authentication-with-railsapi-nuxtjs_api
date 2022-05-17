50.times do |n|
  date = Date.new(2022,5,15)
  name = "task#{n}"

  task = Task.find_or_initialize_by(name: name)

  task.user_id = "1"
  task.project_id = "#{n}"
  task.in_charge ="user-#{n}"
  task.status = 1
  task.created_by = "user-1"
  task.started_at = date
  task.completed_at = date

  task.save!
end

puts "tasks = #{Task.count}"