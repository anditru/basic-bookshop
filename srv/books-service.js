const cds = require('@sap/cds');

class BooksService extends cds.ApplicationService {
    init() {
        this.on('READ', 'Books', async (req, next) => {
            console.log(req);
            return next();
        });

        return super.init();
    }
}

module.exports = BooksService;
