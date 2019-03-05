Author: Winston Hensley
Email:  Winston.Hensley@noaa.gov
Date:   08/11/2014


Description:
This software uses LabVIEW RunTime Engine 2014. An open FTP port is 
required for this software to run as designed. 

To update the Default Data Directory in the LabVIEW Options by clicking

    Tools -> Options -> Paths

Click on the drop down menu to select the Default Data Directory,
then uncheck the Use default box. Finally, use the browse button
to select a new location for LabVIEW data and CLICK REPLACE before
applying the changes and hitting OK. 

The changes will take affect once LabVIEW has been restarted.



NOTE: When using the compiled executable, you must update the IMEIChecker.ini
file to reflect the base location for storing the SBD messages. The software
automatically generates folder heirarchy in a *\year\month\day format
within that base folder