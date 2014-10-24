'use strict';

var fs = require('fs')
  , path = require('path')
  , read = fs.readFileSync
  , write = fs.writeFileSync
  , file = path.join(__dirname, 'index.js');

var library = read(file, 'utf-8');

library = require('active-x-obfuscator')(library);

write(file, library);
