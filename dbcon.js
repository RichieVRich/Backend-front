// This sets up the connection and is exported to be used in a different func
var mysql = require('mysql');
var pool = mysql.createPool({
    connectionLimit : 10,
    host            : 'classmysql.engr.oregonstate.edu',
    user            : 'cs340_villagri',
    password        : '2020Richierich',
    database        : 'cs340_villagri'
});

module.exports.pool = pool;
exports.pool = pool;
