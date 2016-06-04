Stephen Fahy
G00172772
WEB SITE DESIGN
13/12/2015

This contains all the resources for my South Dublin Housing Council website. 
This consists of my six html5 webpages. 
There is a homepage, a tenants page, a property page, a repairs page, a tradesman page and an equipment page.
Each webpage is linked to each other by a sidebar on every webpage with links to the other pages. 
You enter the website via the homepage which then can access all the other webpages of the website. 
In the projectmain file there is the css file whch contains the external css design for the website, 
a images file which contains the images for my website, a js file which contains the javascript for the website, 
and a php file which contains the php insert statements and select statements for each webpage except the homepage.

The website is linked to a database via HTML5 forms and my php code on each webpage except the homepage. 
The database can be accessed by opening the south_dublin_housing_council_repairs file which contains the datafiles or 
by importing the south_dublin_housing_council_repairs.sql file into your phpadmin in mysql.

The website is designed for South Dublin Housing Council's employees so that they can view and update the council's database.
The employees access the website via the council's private intranet network which can be used in the main South Dublin Housing Council building in Tallaght 
or in other council buildings in South Dublin.
The employees access the website via the homepage which accesses the other webpages. 
On the other 5 webpages employees can view the council's database or they can update it.

The majority of the website css design was done in an external css file in completesite.css.
There was internal css design done in the website such as the table on the homepage using the <style> tag and 
there was inline css design using the style attribute such as the paragraph on line 108 on the property webpage.

Javascript was used to add a link to googlemaps on the property page website so users could view the south Dublin area in Google maps.

Php insert and select statements were used to update and view data in the database from a website. 
The php insert and select statements were used in all the pages except the homepage.

All my html5 files have been validated using w3c markup validation service. 
The website is functional in all browsers but is best viewed in Google Chrome or Mozilla Firefox.

CHANGES TO THE WEBSITE FROM THE WEBSITE DESIGN.
The website design was not changed when the website was being created, but there was some slight changes made.
They changes made are as follows:
1. In the property table the TENANT column was changed to TENANT_ID to have the same name has the TENANT_ID primary key in the tenant table.
2. In the property table the REPAIRS column was changed to REPAIR_ID to have the same name has the REPAIR_ID primary key in the repairs table.
3. In the repairs table the TRADEMAN column was changed to TRADESMAN_ID to have the same name has the TRADESMAN_ID primary key in the tradesman table.
4. In the trademan table the AVAILABILITY column was removed as the information provided with this column conflicted with information in the DATE and
   TIME columns in the repairs table.
5. In the tradesman table the EQUIPMENT column was changed to EQUIPMENT_ID to have the same name has the EQUIPMENT_ID primary key in the equipment table.
6. In the homepage of the website a table and extra headings were added to section div tag. 
   Also a link was added to this section to bring the user to the next webpage.
7. In the tenant page there were a few changes made to the section div tag. 
   A few extra paragrahs were added and links to view the database were added.
   There was a link added to go to next page.
8. In the property page there were a few changes made to the sectin div.
   A few extra paragraphs were added and links to view the database and to go to the homepage were added.
9. A javascript link to view google maps was added to the property page.
10.In the repairs page a few extra paragraphs were added and links to view the database and a link to go to the next page.
11.In the tradesman page a few extra paragraphs were added and links to view the database and a link to go to the next page.
12.In the equipment page a few extra paragraphs were added and links to view the database and a link to go to the next page.
