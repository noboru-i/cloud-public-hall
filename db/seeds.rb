require "csv"

CSV.foreach('db/halls.csv') do |row|
  Hall.create(
    :name       => row[0],
    :address1   => row[1],
    :address2   => row[2],
    :address3   => row[3],
    :tel        => row[4],
    :email      => row[5],
    :tatami_num => row[6],
    :message    => row[7],
  )
end
