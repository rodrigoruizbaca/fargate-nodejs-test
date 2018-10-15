var AWS = require("aws-sdk");
AWS.config.update({
    region: "us-west-2"
});

const uuid4 = require("uuid").v4;

var docClient = new AWS.DynamoDB.DocumentClient();
var created_at = new Date().toISOString();
var params = {
    TableName : "taskTable",
    Item: {
        taskId: uuid4(),
        created_at            
    }
};
docClient.put(params, function (err, data) {
  if (err) {
      throw err;
  } else {
      
  }
});
   