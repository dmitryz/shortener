Simple url shortener API
========================

This is an example of establishing Shortener API.

##Getting started

1. Clone the repo
  ```
  $ git clone git@github.com:dmitryz/shortener.git
  $ cd shortener
  ```

2. Install dependencies
  ```
  $ bundle install
  ```

3. Whatch the specs pass
  ```
  $ bin/rspec
  ```
4. Docker
  ```
  docker build -t shortener .
  docker run -p 3000:3000 shortener
  ```


##API

1. Create short url
  ```
  REQUEST: POST /links
  BODY: url: http://test.com
  RESPONSE: SHORT ID
  ```
2. Redirect via short id
  ```
  REQUEST: GET /links/short_id
  RESPONSE: redirection to original url
  ```
