using { bookshop as db } from '../db/schema';

@requires: 'authenticated-user'
service BooksService {
    @odata.draft.enabled
    entity Authors as projection on db.Authors;

    entity Books as projection on db.Books;
}