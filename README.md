# Pewlett-Hackard-Analysis

## Overview of the Analysis

The analysis was for Pewlett Hackard leadership, to analyze the current work force to determine expected retirements. We were provided individual CSV files from the company, and analyzed them in SQL. The leadership requested that we determine the number of retiring employees based on title and identify employees eligible for a mentorship program.

## Results

### Expected Retirement Analysis

![image](https://user-images.githubusercontent.com/41657419/206622790-cba797d3-9262-4f82-9b43-0a8a2e0d4cb6.png)

 - A majority of your retirees are from the senior level staff. Senior Engineers and Senior Staff make up 70% of the expected retirees.
 - Just less than half (49%) of the retirees are from the two engineering roles.

### Mentorship Analysis
 - There are a total of 1,549 employees eligible for a mentorship program.
 - The Senior Staff and Senior Engineers eligible for the mentorship program account for 45% of the total eligible.
 
 ![image](https://user-images.githubusercontent.com/41657419/206622528-648353b1-5698-45ca-92e2-12fe779411c4.png)

## Summary

 - How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    - A total of 72,458 roles will need to be filled.
 - Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    - No, there are a total of 1,549 employees eligible for a mentorship program. Compared to the total expected retirees (72,458), the mentorship numbers accounts for only 2% of the future openings.

In addition to the already created queries, I recommend the following for further analysis:
 1) Create a table grouped by department, then title to show how employees are retiring and how many are eligible for mentorship programs. Based on the ratio, this could shed light into which areas are at greater risk for being understaffed.
 2) Create a table by role showing the total employees vs the total employees retiring. Apply a % of employees retiring. Again, this might assist in making it clear where the focus should be put for hiriring and mentorship.
 3) Create a table with tweaks to the mentorship eligibility criteria. Show how many more employees can be eligible if the date of birth is expanded. This could be a way to fill in the retirements with current staff.
