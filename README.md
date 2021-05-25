# UpDateTime

<h2>WHY?</h2>

Since I'm using Linux on a Virtual Machine and since I almost never turn it off (choosing to save state instead), I was tired of updating system time over and over again.
So, what was the most logical step? Well, writting a script of course.
<br>
Gonna turn this into a job (when I manage to learn how)

<h1>Functionality</h1>

 <p> So, what does this do?
 <b>Keep in mind I am not that much of a programmer, I do what I'm able to do with my resources. Usually I develop in Python but I figured I would do this natively. This is my second shell script. If you think this script could be better (because of course it could) please contact me.</b></p>
 <ul type='disc'>
  <li> The first step is declaring an indexed array so I can retrieve the month's number instead of its name (for setting the date) </li>
 <li> It will then retrieve system's date and time </li>
  <li> The next step is acessing Google's Website, <b> using cURL </b>, to retrieve the correct date and time </li>
 <li> It is now time to format some values, in three steps: </li>
     <ol>
      <li> First: Getting current month's number </li> 
      <li>Second: Add 1 hour to the retrieved time, since I'm in Portugal </li>
      <li>Third: Format the entire string to use as the "date --set=" command </li>
     </ol>
  <li>In the end, validations are made. I compare system's current time (day, month, year, hour): </li>
 <li>If those objects all match then nothing is made </li>
 <li>If even one of them fails, a new system time and date is set </li>
  <li>I've decided not to compare system's minutes with google's minutes to prevent failures, maybe I'll do that another time </li>
  </ul>

<h1>Tested in:</h1>
<b>- Parrot OS 4.11 (100%)</b>
