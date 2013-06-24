'use strict';

var fs = require('fs'),
    path = require('path'),
    html = require('../lib/html.js'),
    expect = require('chai').expect;

var option = {
    'leftDelimiter' : '{#',
    'rightDelimiter' : '#}'
};

describe('html.compress(strip)', function(){
    it('escapeAll', function(){
        var result = html.compress(fs.readFileSync('./test/source/strip.tpl').toString(), option);
        var expectContent = fs.readFileSync('./test/expect/strip.tpl') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('html.compress(comment)', function(){
    it('escapeAll', function(){
        option = {'level' : 'strip_comment'};
        var result = html.compress(fs.readFileSync('./test/source/strip_comment.html').toString(), option);
        var expectContent = fs.readFileSync('./test/expect/strip_comment.html') + '';
        expect(result).to.equal(expectContent);
    });
});

describe('html.compress(strip_space)', function(){
    it('escapeAll', function(){
        option = {'level' : 'strip_space'};
        var result = html.compress(fs.readFileSync('./test/source/strip_space.html').toString(), option);
        var expectContent = fs.readFileSync('./test/expect/strip_space.html') + '';
        expect(result).to.equal(expectContent);
    });
});
