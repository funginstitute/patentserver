require 'csv'

desc "Import from csv file"
task :importdummy => [:environment] do

  filename = "db/csv/assignee.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Assignee.create!(row.to_hash)
  end

  filename = "db/csv/citation.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Citation.create!(row.to_hash)
  end

  filename = "db/csv/class.csv"
  CSV.foreach(filename, :headers => true) do |row|
      PatentClass.create!(row.to_hash)
  end

  filename = "db/csv/inventor.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Inventor.create!(row.to_hash)
  end

  filename = "db/csv/invpat_new.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Invpat.create!(row.to_hash)
  end

  filename = "db/csv/lawyer.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Lawyer.create!(row.to_hash)
  end

  filename = "db/csv/patdesc.csv"
  CSV.foreach(filename, :headers => true) do |row|
      PatDesc.create!(row.to_hash)
  end

  filename = "db/csv/patent.csv"
  CSV.foreach(filename, :headers => true) do |row|
      Patent.create!(row.to_hash)
  end

end
