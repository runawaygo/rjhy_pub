connect = require('connect')
connect()
  .use(connect.logger())
  .use('/', connect.static(__dirname + '/')).listen(9001)