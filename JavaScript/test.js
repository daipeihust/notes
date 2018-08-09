'use strict';
var obj = {enable: true, name: 'aaa'};
obj.enable = false;
if (obj.enable) {
    console.log('true');
} else {
    console.log('false');
}