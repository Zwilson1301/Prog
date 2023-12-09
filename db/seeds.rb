default_users = [
  {
    :email => "admin@projects.local",
    :password => "Pass1234"
  }
]
User.create(default_users)

pro_hash = [
  {
    :name => "Project 1",
  },
  {
    :name => "Project 2",
  },
  {
    :name => "project 3",
  }
]
Project.create(pro_hash)

Project.all.each do |project|
  10.times do |index|
    Task.create(
      {
        :name => "Task #{index}",
        :due_date => Date.today + 5 - rand(10),
        :complete => [true, false].sample,
        :project_id => project.id
      }
    )
  end
end
