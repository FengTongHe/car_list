require "csv"

ModelCategory.delete_all
Category.delete_all
Model.delete_all
Year.delete_all
Manufacture.delete_all

filename = Rails.root.join("db/data.csv")
puts "Loading Vehicles from the csv file: #{filename}"

csv_data = File.read(filename)
models = CSV.parse(csv_data, headers: true, encoding: "utf-8")

models.each do |m|
  manufacture = Manufacture.find_or_create_by(name: m["Make"])

  next unless manufacture && manufacture.valid?

  year = manufacture.years.create(year: m["Year"])
end

models.each do |m|
  year = Year.find_or_create_by(year: m["Year"])

  next unless year && year.valid?

  model = year.models.create(
    name:         m["Model"],
    fuel:         m["Engine Fuel Type"],
    horsepower:   m["Engine HP"],
    cylinder:     m["Engine Cylinders"],
    transmission: m["Transmission Type"],
    driven_wheel: m["Driven_Wheels"],
    door:         m["Number of Doors"],
    style:        m["Vehicle Style"],
    size:         m["Size"],
    highway_mpg:  m["highway MPG"],
    city_mpg:     m["city mpg"],
    popularity:   m["Popularity"],
    msrp:         m["MSRP"]
  )
  puts "Invalid Model #{m['Model']}" unless model&.valid?

  categories = m["Market Category"].split(",").map(&:strip)

  categories.each do |category_name|
    category = Category.find_or_create_by(name: category_name)


  end
end

puts "Created #{Manufacture.count} Manufacture"
puts "Created #{Year.count} Year"
puts "Created #{Model.count} Model"
