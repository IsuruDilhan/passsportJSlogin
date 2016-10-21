// Simple async test for HTTP 200 response code using supertest
'use strict';

var request = require("supertest"),
    app = require("../app");

describe('GET /', function(){
  it('expects HTTP response 200', function(done){
    request(app)
     .get('/')
	 .expect(200, done); 
  });
});

describe('GET /register', function(){
    it('expects HTTP response 200', function(done){
        request(app)
            .get('/register')
            .expect(200, done);
    });
});

describe('GET /validate', function(){
    it('expects HTTP response 200', function(done){
        request(app)
            .get('/validate')
            .expect(200, done);
    });
});

describe('GET /login', function(){
    it('expects HTTP response 200', function(done){
        request(app)
            .get('/login')
            .expect(200, done);
    });
});