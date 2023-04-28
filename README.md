# Connections & correlations: Veteran population and primary care wait times 2015-2021
## Introduction
We’ve created a tool to help make visible the interconnected nature of the Veteran population and VA facilities. For the limited scope of this DataJam, we’ve focused on a proof of concept that includes Veteran population by county over time, VA facility location, and appointment wait times year-to-year.

- [🔎 Explore the tool on Tableau.](https://public.tableau.com/app/profile/ad.hoc.data.guild/viz/ConnectionscorrelationsVeteranpopulationandprimarycarewaittimes2015-2021/YoYPercentSlider)
- [🎦 Watch the intro video.](https://drive.google.com/file/d/1Z41ENwJurBq4HljXeRpP-QJjUn58aE_q/view?usp=sharing)

## Setting the stage
In 2021, about 6.2 million of the total 9.2 million Veterans enrolled in health care sought care from VHA. Wait times varied sharply across VA’s 1284+ facilities (~171 medical centers, ~1113 VHA outpatient clinics).

The U.S. is divided into 18 Veterans Integrated Service Networks (VISNs). These are regional systems of care working together to meet the local health care needs of Veterans. A recent study by JAMA Network found substantial geographic variation in appointment wait times.

### Primary care VISN-level appointment wait time ranges
- VHA: 22.4 to 43.4 days (VA target wait time: 20 days)
- Community care: 25.4 to 52.4 days

### Mental health VISN-level appointment wait time ranges
- VHA: 24.7 to 42.0 (VA target wait time: 20 days)
- Community care: 29.3 to 65.7 days

### All other specialties VISN-level appointment wait time ranges
- VHA: 30.3 to 41.9 (VA target wait time: 28 days)
- Community care: 34.7 to 54.8 days

We believe that a number of factors contribute to this regional variance in wait time, including inconsistency in how wait times are measured. We also hypothesize that increases or decreases in the number of Veterans living near a VA facility contribute to changes in wait times.

## Opportunities
In an ideal world we’d change a few things about our prototype, so we’d like to acknowledge those gaps that may lead to skewed outcomes when using it: 

- Manual data retrieval and clean up, ideally an API would exist from VA or other sources to supply this data on an as-needed basis
- Tightly time-boxed data, our tool only looks across the last few years – a long tail of data could help paint more specific pictures
- Our data currently presents the Veteran population as a monolith, instead of a number of unique groups with a shared connection. Ideally, we would add facets to the Veteran population data allowing us to break the data down by categories such as gender, ethnicity, income, marital status, and housed or unhoused status
- Wait time data is inconsistent, and we weren’t able to specifically determine how it is measured and aggregated

And, while not a gap in our prototype, we feel that a nice-to-have feature would be some way to include data about when certain VA changes or congressional mandates came into effect or ended so that we could allow users to see how those impacted the Veteran population and VA facilities.

## What the tool provides
Users of our dashboard can use the map views to quickly identify counties with high Veteran populations, those with a high percentage of residents who are Veterans, and those that saw large increases or decreases in Veteran populations over time. This data is presented alongside information about VA location wait times, enabling users to recognize whether population changes might have been a factor in changes to VA facility wait times.

The purpose of this tool is to enable VA researchers and other interested parties to explore the relationship between Veteran population changes and medical center wait times. We hope that exploring this relationship will expose opportunities for improvements to the experience and outcomes of Veterans seeking care.

## Data Note
*Only counties with total populations of at least 20,000 are included.*

### Veteran Population Percentage
This view helps to identify counties with a high percentage of Veterans. It does this by showing the total population per county, the total Veteran population of that county, and the percentage of the total county population who are Veterans. All data is for the time period between 2025 and 2021, with 2020 excluded because no data was collected that year by VA. The color demonstrates the Veteran population’s density in a given county. 

### Veteran Population Count
This view is similar to the Veteran Population Percentage but helps to identify counties with a large number of total Veterans. LA County in California is a good example of this – that county has a very high number of Veterans that make up a very small percentage of the total population.

### Veteran Population Change
This view shows a more consolidated view of the previous tabs, but this time it highlights the change in Veteran percentage in a more tightly timeboxed timelord around the peak of the COVID-19 Pandemic.  

### VA Facility Location
This view shows all VA facilities. The size of the facility’s dot on the map indicates the facility’s wait time in days.

### Veteran Population and VA Facility Wait Time tables
These two table views offer more granular access to the raw data feeding the previous tabs.

## Who we are
- An interdisciplinary team of researchers, product managers, and engineers
- Diverse experience supporting partners at VA, and government benefits administrations
- [Employees at Ad Hoc, LLC](https://adhocteam.us/)

## Primary sources
These are the sources we used for the tool itself. 

- [American Community Survey Data (Census Data)](https://www.census.gov/programs-surveys/acs/data.html)
- [VA Facilities Data](https://www.data.va.gov/dataset/PAI-Data-Set-For-Open-Data-Maps-Data-Story-1-of-3/cg9c-gfgn)
- [VA Wait-time dataset - SAIL Fiscal Year datasets](https://www.data.va.gov/browse?q=SAIL&sortBy=relevance)

## Auxiliary sources
- [The Veterans Community Care Program: Background and Early Effects](https://www.cbo.gov/publication/57583)
- [New Patient Scheduling System Needs Improvement as VA Expands Its Implementation](https://www.oversight.gov/report/VA/New-Patient-Scheduling-System-Needs-Improvement-VA-Expands-Its-Implementation)
- [Geographic Variation in Appointment Wait Times for US Military Veterans](https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2795631)
- [Waiting for Care in Veterans Affairs Health Care Facilities and Elsewhere](https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2720912)
- [VA Stats at a glance, 2020](https://www.va.gov/vetdata/docs/Quickfacts/Stats_at_a_glance_12_31_20.PDF)
- [VA Stats at a glance, 2021](https://www.va.gov/vetdata/docs/Quickfacts/Stats_at_a_glance_12_31_21.PDF)
- [VA Launches New Patient Scheduling Tool as Part of Records Modernization Project](https://www.nextgov.com/it-modernization/2020/08/va-launches-new-patient-scheduling-tool-part-records-modernization-project/168013/)
- [VA Patient Appointment Wait Times Vary Across the United States](https://patientengagementhit.com/news/va-patient-appointment-wait-times-vary-across-the-united-states)
- [Wait Times for Veterans Scheduling Health Care Appointments](https://www.rand.org/multimedia/video/2022/09/21/wait-times-for-veterans-scheduling-health-care-appointments.html)
- [The Mission Act is supposed to help US veterans get health care outside the VA. For some, it's not working.](https://www.usatoday.com/in-depth/news/investigations/2021/11/01/mission-act-aid-veterans-healthcare-va-isnt-letting-it/8561618002/)

