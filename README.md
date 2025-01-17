[![Bash Command Line](https://github.com/nogibjj/hq-individual_project2/actions/workflows/manual.yml/badge.svg)](https://github.com/nogibjj/hq-individual_project2/actions/workflows/manual.yml)


## Project Description

The project is done for IDS 706 Data Engineering class at Duke University. The goal is to build a Bash Command Line tool that performs useful data preparation tasks such as cleaning, truncating, and sorting data. For the scope of this project, I built a Bash Command Line tool that removes empty lines from a CSV file. It then filters the file by detecting differences between the user-specified columns and only returns rows with a difference. I designed the tool in the hope of automating everyday data preparation tasks. The bash script can be easily scaled up to incorporate additional features and will be pushed to Docker Hub for accessibility at a later date. 


## Data Flow Diagram
![Project2](https://user-images.githubusercontent.com/105904149/194799122-9e32e1e5-548d-437e-8223-afefd998bf8d.png)


## Demo Video
[Project 2 - Heather Qiu - Bash CLI to Clean & Filter Data - Watch Video](https://youtu.be/HH4Cp4VblSE)

For the demo, I used a dataset from NYC Open Data: [Workforce1 Job Listing](https://data.cityofnewyork.us/Business/Workforce1-Job-Listing/ay9k-vznm). Out of the 197 rows in the dataset, Only 44 rows are non-blank valid entries. Furthermore, many positions have the same minimum and maximum wages, which are not helpful for exploratory data analysis. Therefore, a function is incorporated to filter valid rows if a difference is identified between the minimum and maximum wages.


## Instructions To Use The CLI Tool

To run the function after cloning the repository, type in `./main.sh *filename* *col1* *col2*` where: 

- `filename` is the name of the file located in the same directory in which the CLI runs. The tool supports .csv files. 
- `col1` specifies the first column index number that the function will compare from
- `col2` specifies the second column index number that the function will compare to

An example command could be `./main.sh workforce_job_listing.csv 10 11`, which would first remove empty lines from `workforce_job_listing.csv` and save them to `data_cleaned.csv`. The tool then filters the temporary file so that only rows where the values in the 10th column (the minimum wage) are different than the ones in the 11th column (the maximum wage). The results are saved in `data_filtered.csv`.
