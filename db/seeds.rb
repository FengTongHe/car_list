require "csv"

ModelCategory.delete_all
Category.delete_all
Model.delete_all
Style.delete_all
Year.delete_all
Manufacture.delete_all

filename = Rails.root.join("db/data.csv")
puts "Loading Vehicles from the csv file: #{filename}"

csv_data = File.read(filename)
models = CSV.parse(csv_data, headers: true, encoding: "utf-8")

models.each do |m|
  manufacture = Manufacture.find_or_create_by(name: m["Make"])

  next unless manufacture && manufacture.valid?

  style = manufacture.styles.create(name: m["Vehicle Style"])
  year =  manufacture.years.create(year: m["Year"])

  next unless style && style.valid? && year && year.valid?

  model = year.models.create(
    name:         m["Model"],
    fuel:         m["Engine Fuel Type"],
    horsepower:   m["Engine HP"],
    cylinder:     m["Engine Cylinders"],
    transmission: m["Transmission Type"],
    driven_wheel: m["Driven_Wheels"],
    door:         m["Number of Doors"],
    size:         m["Size"],
    highway_mpg:  m["highway MPG"],
    city_mpg:     m["city mpg"],
    popularity:   m["Popularity"],
    msrp:         m["MSRP"]
  )

  puts "Invalid Model #{m['Model']}" unless model&.valid?
end

puts "Created #{Manufacture.count} Manufacture"
puts "Created #{Style.count} Style"
puts "Created #{Year.count} Year"
puts "Created #{Model.count} Model"
