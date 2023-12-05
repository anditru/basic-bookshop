using {
  Currency,
  managed,
  sap,
  cuid
} from '@sap/cds/common';

namespace bookshop;

entity Books : cuid {
  @title: 'Title'
  title    : String(111);

  @title: 'Genre'
  genre    : String(111);

  @title: 'Price'
  price    : Decimal;

  @title: 'Currency'
  currency : String;

  @title: 'Author'
  author   : Association to one Authors;
}

entity Authors : cuid {
  @title: 'Name'
  name         : String(111) @mandatory;

  @title: 'Date of Birth'
  dateOfBirth  : Date;

  @title: 'Date of Death'
  dateOfDeath  : Date;

  @title: 'Place of Birth'
  placeOfBirth : String;

  @title: 'Place of Death'
  placeOfDeath : String;

  @title: 'Books'
  books: Composition of many Books on books.author = $self;
}
