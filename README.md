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


# QuickStart with Docker

An example Docker container is created for easy deployment. This is only for not having to configure the development environment to test the code. The chain data, however, stays in the container; therefore, it will be lost when the container restart or shutdown. It is possible to set up the mount point for persisting the chain data outside of the container life cycle, but it is not the current focus of the project.

Require Docker to be installed on your system (prefer version 18.06.1 or later)

A pre-built Docker image is located at https://hub.docker.com/r/nlknguyen/simple-blockchain-service/

## Run the container

```shell
$ docker run -p 8000:8000 --rm -it nlknguyen/simple-blockchain-service
```

The web service should be available at your `localhost:8000`

<img width="981" alt="screen shot 2018-10-07 at 5 23 03 pm" src="https://user-images.githubusercontent.com/4667129/46588751-c8852500-ca55-11e8-90e6-4e16517b530b.png">


## Shell login

Should you need to poke around the project environment inside the container, you can login to the shell:  

```shell
$ docker run -p 8000:8000 --rm -it nlknguyen/simple-blockchain-service ash
```

When in there, you can start the web service manually: 

```shell
$ node app
```

## Rebuild

In case you need to modify the source code, after doing so, you can rebuild the image locally using the provided Dockerfile in the project tree. For sanity, only the source code is copied over to the image and `npm install` happens inside the image to provide a clean build every time.


```shell
$ docker build -t myblockchain .
```

Run your modified project:

```shell
$ docker run -p 8000:8000 --rm -it myblockchain
```

# Manual Setup

This requires your system to have Node.js installed and be able to build (if needed) the libraries used in the project, e.g. leveldb

## Install
```
$ npm install
```

## Run

```
$ node app
```

Default port: 8000 (i.e. `localhost:8000`)


# RESTful API Endpoint

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
