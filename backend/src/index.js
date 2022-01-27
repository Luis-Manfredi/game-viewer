    const app = require('./app.js');
    const { connect } = require('./database');

    async function main(){
        //Database
        await connect();
        //Express App
        await app.listen(4000)
        console.log('Server on port: 4000')
    }

    main();