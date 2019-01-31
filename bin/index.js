#! /usr/bin/env node

'use strict';

const core = require('../lib');
const program = require('commander');

program
  .version('1.0.3', '-v, --version')
  .option('-t, --tag [value]', 'Tag name for lit-element')
  .parse(process.argv);

core.createComponent(program.tag);
