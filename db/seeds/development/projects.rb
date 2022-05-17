50.times do |n|
  date = Date.new(2022,5,15)
  name = "project#{n}"

  project = Project.find_or_initialize_by(name: name)

  project.user_id = "#{n}"
  project.budget = 10000000
  project.owner ="user-#{n}"
  project.status = 1
  project.started_at = date
  project.completed_at = date

  project.save!
end

puts "projects = #{Project.count}"