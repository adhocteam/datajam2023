require 'csv'
all = [%w[year id station_id name pc sc mh]]
[2015, 2016, 2018, 2017, 2019, 2020, 2021].each do |year|
  table = CSV.parse(File.binread("#{year}.csv"), headers: true, row_sep: "\r\n")
  table.each do |row|
    r = row.to_h
    f = r['facility']
    # pp r if year == 2017
    next if f.nil?
    splits = f.split(" ")
    id = splits.shift.delete('()')
    station_id = splits.shift.delete('()')
    name = splits.map(&:chomp).join(" ")
    ret = [year, id, station_id, name]
    r.keys.compact.last(3).each do |k|
      ret << r[k]
    end
    # if year == 2017
    #   pp ret
    #   exit
    # end
    all << ret
  end
end
puts all.map{|r| r.to_csv}