# UpDateTime

<h2>WHY?</h2>

Since I'm using Linux on a Virtual Machine and since I almost never turn it off (choosing to save state instead), I was tired of updating system time over and over again.
So, what was the most logical step? Well, writting a script of course.
<br>
Gonna turn this into a job (when I manage to learn how)

<h1>Functionality</h1>

 - So, what does this do?
 <b>Keep in mind I am not that much of a programmer, I do what I'm able to do with my resources. If you think this script could be better (because of course it could) please contact me.</b>
  - The first step is declaring an indexed array so I can retrieve the month's number instead of its name (for setting the date)
  - It will then retrieve system's date and time
  - The next step is acessing Google's Website, <b> using cURL </b>, to retrieve the correct date and time
  - It is now time to format some values, in three steps:
      - First: Getting current month's number
      - Second: Add 1 hour to the retrieved time, since I'm in Portugal
      - Third: Format the entire string to use as the "date --set=" command
  - In the end, validations are made. I compare system's current time (day, month, year, hour):
    - If those objects all match then nothing is made 
    - If even one of them fails, a new system time and date is set
  - I've decided not to compare system's minutes with google's minutes to prevent failures, maybe I'll do that another time

<h1><b>TESTED AND FULLY WORKING ON PARROT OS 4.11</b></h1>
