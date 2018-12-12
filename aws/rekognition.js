const AWS = require('aws-sdk');
AWS.config.update({ region: "us-east-1" });
const rek = new AWS.Rekognition();

const getLabels = async (bucketName, imgName) => {
  const params = {
    Image: {
      S3Object: {
        Bucket: bucketName,
        Name: imgName,
      }
    },
    MaxLabels: 10,
    MinConfidence: 50
  };
  return await rek.detectLabels(params).promise();
}

module.exports = {
  getLabels
}
