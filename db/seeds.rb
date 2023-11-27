# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 1
catigory_hashes = [
  {
    :name => "smart phone"
  },
  {
    :name => "laptop"
  },
  {
    :name => "desktop"
  }
]
#2
Catigory.create(catigory_hashes)

manufacturers_hashes = [
  {
    :name => "Apple",
    :website => "https://www.apple.com"
  },
  {
    :name => "Lenovo",
    :website => "https://www.lenovo.com"
  },
  {
    :name => "Dell",
    :website => "https://www.dell.com"
  }
]
#3
Manufacturer.create(manufacturers_hashes)

5.times do |index|
  Employee.create(
    :Firstname => "Employee",
    :Lastname => "#{index + 1}"
  )
end
#4
Employee.all.each do |employee|
  (1..3).each do |category_id|
    (1..3).each do |manufacturer_id|
      device_name = "Device #{rand(1..100)}"
      category = Catigory.find(category_id)
      manufacturer = Manufacturer.find(manufacturer_id)
     
      if employee.devices.count < 3
        device = Device.create(
          Name: device_name,
          catigory: category,
          manufacturer: manufacturer,
          employee: nil
        )
        employee.devices << device
      end
    end
  end
end
#6
5.times do |index|
  Software.create(name: "Software #{index + 1}", License_count: rand(1..5))
end

#7-8
3.times do
  Employee.all.each do |employee|
    software_id = rand(1..5)
    software = Software.find(software_id)
      employee.softwares << software
  end
end
