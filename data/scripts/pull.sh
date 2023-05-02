# for YEAR in 2015 2016 2017 2018; do
#   curl "https://api.census.gov/data/${YEAR}/acs/acs1/profile?get=DP02_0068E,DP02_0069E,DP02_0069PE,NAME&for=county:*&in=state:*" | sort > ${YEAR}.csv
# done

# for YEAR in 2019 2021; do
#   curl "https://api.census.gov/data/${YEAR}/acs/acs1/profile?get=DP02_0069E,DP02_0070E,DP02_0070PE,NAME&for=county:*&in=state:*" | sort > ${YEAR}.csv
# done

# # DP05_0021E


# TAKE 2
for YEAR in 2015 2016 2017 2018 2019 2021; do
  curl "https://api.census.gov/data/${YEAR}/acs/acsse?get=NAME,K202101_001E,K202101_002E&for=county:*&in=state:*" | sort > ${YEAR}.csv
done
