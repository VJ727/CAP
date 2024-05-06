using demo from '../db/demo';

service learning {
  entity Categories as projection on demo.Categories;
  entity Courses as projection on demo.Courses;

}
