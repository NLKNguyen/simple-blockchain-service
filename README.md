Simple Blockchain Service
=================

Web service for a simple private Blockchain implemented using `Node.js` and `Sails` framework  -- project @ Udacity's Blockchain Developer Nanodegree


> Blockchain has the potential to change the way that the world approaches data. Develop Blockchain skills by understanding the data model behind Blockchain by developing your own simplified private blockchain.

![getty_847491206_20001000200092802_361305](https://user-images.githubusercontent.com/4667129/46251722-f9d77280-c40f-11e8-8d9a-4aa4388a733e.jpg)

```
                                                                                          (Getty Images)
```

# Project Files

* `api/controllers/BlockController.js` handles REST API endpoint. It includes as-is the implementation of simple private Blockchain from the previous project (https://github.com/NLKNguyen/simple-blockchain/blob/master/simpleChain.js)
* `config/routes.js` connects the endpoints to the actions in the above controller.
* The rest is scaffolding from `Sails` framework's `new` command with `--no-frontend` argument.


# Setup

## Install
```
$ npm install
```

## Run

```
$ node app
```

Default port: 1337 (i.e. `localhost:1337`)


# REST API Endpoint

## Get Block

Get a block in the Blockchain at a given height

**Method**: GET

**URL**: `/block/:blockHeight`

Example:
```
localhost:1337/block/0
```

**Success Response**
* Code: 200 OK
* Content: JSON object of the block

Example
```
{
  "hash": "bcd909fe7d5a53ed7fe482606639cccc4c918b876d91a58733bf0a9db7bb502a",
  "height": 0,
  "body": "First block in the chain - Genesis block",
  "time": "1538884710",
  "previousBlockHash": ""
}
```

**Error Response**
* Code: 404 Not Found



## Add Block

Add a new block with string data to the Blockchain

**Method**: POST

**URL**: `/block`

**Data**:
* key: body
* value: string

Example:
```
localhost:1337/block
data:

{
    body: "Hello, Blockchain!"
}
```

**Success Response**
* Code: 200 OK

**Error Response**
* Code: 400 Bad Request







# License MIT

Copyright © Nikyle Nguyen
