// start.config.js
module.exports = {
    apps : [{
            name        :   "test",
            script      :   "index.js",
            max_memory_restart: '1G',
            log_date_format: "DD:MM:YYYY - HH:mm:ss",
            env: {
                "NODE_ENV"      :       "production"                                          
            }
    }]
};