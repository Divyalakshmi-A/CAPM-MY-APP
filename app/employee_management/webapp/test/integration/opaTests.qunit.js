sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'employeemanagement/test/integration/FirstJourney',
		'employeemanagement/test/integration/pages/EmployeeDetailsList',
		'employeemanagement/test/integration/pages/EmployeeDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeDetailsList, EmployeeDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('employeemanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeDetailsList: EmployeeDetailsList,
					onTheEmployeeDetailsObjectPage: EmployeeDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);