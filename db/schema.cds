using {cuid} from '@sap/cds/common';

namespace my.bookshop;

entity ToDo : cuid {
  DESC:String(100);
  CATEGORY:String(20);
  EX_COMPLETE_DATE:Date;
  PRIORITY: String;
}
