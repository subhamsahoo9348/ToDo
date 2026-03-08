using {
  cuid,
  managed
} from '@sap/cds/common';

// namespace my;

entity ToDo : cuid, managed {
  DESC             : String(100);
  CATEGORY         : String(20);
  EX_COMPLETE_DATE : Date;
  PRIORITY         : String enum {
    LOW = 'Low';
    MEDIUM = 'Medium';
    HIGH = 'High';
  }
  USER             : String @cds.on.insert: $user;
}

entity taskStatus {
  TASKID         : String(200);
  STATUS         : Integer enum {
    COMPLETE = 1;
    PENDING = 0
  }
  COMPLETED_DATE : Date;

}


// 2 Table => 1 : to Create 2: To compleye

// Ceate view of combine to show the out output to stasy comelte halfcomplte delay rajeect
