namespace demo;
using { Language, managed} from '@sap/cds/common';

entity Categories {
    key id : UUID;
        name : String(50);
        descr : String(100);
        courses : Association to many Courses on courses.category = $self;

}
entity Courses: managed {
     key category: Association to Categories;
     key couse_id : UUID;
         course_name : String(50);
         price: String(10);
         language: Language;
}
