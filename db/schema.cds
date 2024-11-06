namespace  employeemanagement;

using {
    managed,
    cuid,
    User,
    sap.common.CodeList
}from '@sap/cds/common';

entity EmployeeDetails : managed {
  key EmployeeId : String(10);
  Name           : String(40);
  Qualification  : String(20);
  Designation    : String(30);
  EmployeeStatus : String(20);
  YearOfExperience: Integer;
  PersonalDetails : Association to one employeemanagement.PersonalDetails on PersonalDetails.Employee=$self;
  prio            : Association to Priority;
  salary          : String(20);
  Increment       : String(10);
  TotalSalary     : String(20);
  virtual criticality : Integer;
  virtual PrioCriticality : Integer;
}

entity PersonalDetails: cuid,managed{
    Name              : String(40);
    Gender            : String(10);
    DateofBirth       : Date;
    Address           : String(40);
    ContactNumber     : String(10);
    EmailId           : String(20);
    Employee          : Association to one EmployeeDetails;
}

entity Priority : CodeList {
        key code : String enum {
                    high   = 'H';
                    medium = 'M';
                    low    = 'L';
            };
}