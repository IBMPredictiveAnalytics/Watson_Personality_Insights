# Watson-Personality-Insights

This SPSS Modeler node allows you to easily send text to the Watson Personality Insights Service and get scores on 52 different personality attributes.  Watson Personality Insights allows users to derive insights from social media, enterprise data, or other digital communications. The service uses linguistic analytics to extract cognitive and social characteristics, including Big Five personality, values, and needs, from text. The results from Personality Insights can help businesses to understand their clients' preferences and improve customer satisfaction by anticipating customer needs and recommending the next best actions.  IBM SPSS Modeler can use the results from Personality Insights as additional predictors in machine learning models. To learn more about this service please visit the [IBM Watson Developer Cloud][2]   

![Dialog](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Watson-Translate/master/Screenshot/Illustration1.png)
![Output](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Watson-Translate/master/Screenshot/Illustration2.png)
![ModelerStream](https://raw.githubusercontent.com/IBMPredictiveAnalytics/Watson-Translate/master/Screenshot/Illustration3.png)



---
Requirements
----
- IBM SPSS Modeler v16 or later
- ‘R Essentials for SPSS Modeler’ plugin: [Download here][7]
 -  R 2.15.x or R 3.1
 - A Bluemix account with Watson Language Translation Service activated
###### Note that the Watson Personality Insights requires *AT MINIMUM 100 words* to give output.
- Results will be $null otherwise 
- Make sure there are no “\” in the data (including carriage return such as \r\n)


---
Installation instructions
----
1. Download the extension: [Download][3] 
2. Close IBM SPSS Modeler. Save the .cfe file in the CDB directory, located by default on Windows in "C:\ProgramData\IBM\SPSS\Modeler\16\CDB" or under your IBM SPSS Modeler installation directory.
3. Restart IBM SPSS Modeler, the node will now appear in the Model palette.

---
R Packages used
----
The R packages will be installed the first time the node is used as long as an Internet connection is available.
- [httr][4]
- [jsonlite][9]
 
---
Documentation and samples
----
- Find a PDF with the documentation of this extension in the [Documentation][5] directory
- There is a sample available in the [example][6] directory


---
License
----

[Apache 2.0][1]


Contributors
---

  - Olav Laudy([olavlaudy](https://twitter.com/olavlaudy))


[1]: http://www.apache.org/licenses/LICENSE-2.0.html
[2]:https://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/doc/personality-insights/overview.shtml
[3]: https://github.com/IBMPredictiveAnalytics/Watson-Personality-Insights/blob/master/Source%20code/WatsonPersonalityInsights.cfe
[4]:https://cran.r-project.org/web/packages/httr/
[5]:https://github.com/IBMPredictiveAnalytics/Watson-Personality-Insights/tree/master/Documentation
[6]:https://github.com/IBMPredictiveAnalytics/Watson-Personality-Insights/tree/master/Example
[7]:https://developer.ibm.com/predictiveanalytics/downloads/#tab2
[8]: https://developer.ibm.com/predictiveanalytics/downloads/
[9]: https://cran.r-project.org/web/packages/jsonlite/