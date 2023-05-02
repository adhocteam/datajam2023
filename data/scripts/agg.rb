require 'csv'
all = []
lookup_hash = {}
years = [2015, 2016, 2017, 2018, 2019, 2021]
years.each do |year|
  res = File.read("#{year}.csv").lines.map{|l| 
   r = l.chomp.delete('[]').split(',').first(5).map{|e| e.gsub("\"",'').gsub(/^\s/,"")}
   county, state, total_pop, vet_pop, _x = r
   vet_percent = ((vet_pop.to_f / total_pop.to_f)*100).round(2)
   lookup_hash[year] ||= {}
   lookup_hash[year][state] ||= {}
   lookup_hash[year][state][county] ||= {total_pop: total_pop, vet_pop: vet_pop, vet_percent: vet_percent}
   [county, state, total_pop, vet_pop, vet_percent]
  }
  res.each {|r| all << [year, r].flatten.join(",")}
end

all_with_delta = []
all.each do |r|
  year, county, state, total_pop, vet_pop, vet_percent = r.split(",")
  vet_percent_delta = ''
  if year == '2021'
    # pp [year, county, state, total_pop, vet_pop, vet_percent, vet_percent_delta]
    found_county_data = lookup_hash[2019][state][county]
    # pp vet_percent_delta
    unless vet_percent.to_s.empty? || found_county_data.nil? || found_county_data[:vet_percent].nan? || vet_percent == "NaN"
      vet_percent_delta = (vet_percent.to_f - found_county_data[:vet_percent]).round(2)
    end
  end
  
  add_to = [year, county, state, total_pop, vet_pop, vet_percent, vet_percent_delta]
  all_with_delta << add_to.join(",")
end


puts all_with_delta.join("\n")

# all = {}
# years.each do |year|
#   all[year] = []
#   CSV.parse(File.read("./DATA/POP#{year}/POP#{year}.csv"), headers: true).each do |row|
#     tot_pop = row["S0101_C01_001E"].to_i
#     percent_over_18 = row["S0101_C01_025E"].to_f
#     all[year] << [row["NAME"], row["S0101_C01_001E"], row["S0101_C01_025E"], ]
#   end
#   pp all[year]
#   exit
# end

