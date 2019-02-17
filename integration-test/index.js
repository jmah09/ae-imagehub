// Make sure to set environmental variable NODE='test' when calling npm start

'use strict';

const request = require('supertest');
const should = require('should');
const isPortReachable = require('is-port-reachable');

describe('user-service', function() {
  const url = `http://localhost:5000`;
  const api = request(url);
 

  it('add delete image test', (done) => {	  
	let deleteImage = (err, res) => {
      if (err) {
        throw err;
      }
	  console.log(res.body);
	  api.del('/api/image/' + res.body.iId)
    .expect(202,done);
    }; 
	  
    api.post('/api/image/')
    .field('image', 'test-image')
    .attach('image', './data/test-image1.jpg')
    .expect(201,deleteImage);
  });
  
  it('null image passed in image', (done) => {
    api.post('/api/image/')
    .expect(400,done);
  });
  
});
