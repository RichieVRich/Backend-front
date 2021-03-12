// This function serves as a debug reporter for us
module.exports = function(req,res, next){
    console.log("== Request made");
    console.log("  - Method;", req.method);
    console.log("  - URL", req.url);
    next();
};
