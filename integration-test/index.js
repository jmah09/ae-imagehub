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
  
  
  it('duplicate images passed in', (done) => {
	var imageId;
	  
	let deleteImage = (err, res) => {
      if (err) {
        throw err;
      }
	  api.del('/api/image/' + imageId)
    .expect(202,done);
    }; 
	  
    let duplicateImage = (err, res) => {
      if (err) {
        throw err;
      }
	  imageId = res.body.iId
	  api.post('/api/image/')
    .field('image', 'test-image')
    .attach('image', './data/test-image1.jpg')
    .expect(409,deleteImage);
    }; 
	  
    api.post('/api/image/')
    .field('image', 'test-image')
    .attach('image', './data/test-image1.jpg')
    .expect(201,duplicateImage);
  });
  
  it('store images get image lists and delete images', (done) => {
	var imagemeta1
	var imagemeta2
	var imagemeta3
	
	let deleteImage3 = (err, res) => {
      if (err) {
        throw err;
      }
	  api.del('/api/image/' + imagemeta3.iId)
    .expect(202,done);
    }; 
	let deleteImage2 = (err, res) => {
      if (err) {
        throw err;
      }
	  api.del('/api/image/' + imagemeta2.iId)
    .expect(202,deleteImage3);
    }; 
	
	let checkImages = (err, res) => {
      if (err) {
        throw err;
      }
	  imagemeta1 = res.body[0]
	  imagemeta2 = res.body[1]
	  imagemeta3 = res.body[2]
	  imagemeta1.should.not.equal(null);
	  imagemeta2.should.not.equal(null);
	  imagemeta3.should.not.equal(null);
	  api.del('/api/image/' + imagemeta1.iId)
    .expect(202,deleteImage2);
    }; 
	  
	let getImages = (err, res) => {
      if (err) {
        throw err;
      }
	  api.get('/api/user/todo/images')
    .expect(200,checkImages);
    }; 
	
	let uploadimage3 = (err, res) => {
      if (err) {
        throw err;
      }
	  api.post('/api/image/')
    .field('image', 'test-image')
    .attach('image', './data/test-image3.PNG')
    .expect(201,getImages);
    };
	  
    let uploadimage2 = (err, res) => {
      if (err) {
        throw err;
      }
	  api.post('/api/image/')
    .field('image', 'test-image')
    .attach('image', './data/test-image2.PNG')
    .expect(201,uploadimage3);
    };
	  
    api.post('/api/image/')
    .field('image', 'test-image')
    .attach('image', './data/test-image1.jpg')
    .expect(201,uploadimage2);
  });
  
  
});
