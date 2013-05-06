users = User.first_or_create([
  
  {
    name: 'Danny'
  },
  {
    name: 'Joe'
  },
  {
    name: 'Emily'
  }
])

projects = Project.first_or_create([
  {
    name: "My new album",
    goal: 1000,
    user_id: 1
  },
  {
    name: "My new documentary",
    goal: 2000,
    user_id: 1
  }
])

User.all.each do |user|
  user.contributions.create(project_id: 1, amount: 200)
  user.contributions.create(project_id: 2, amount: 700)
end