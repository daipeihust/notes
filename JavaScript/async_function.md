ES2017标准中引入了异步函数的特性

异步函数内部有等待的操作，等待promise执行耗时操做后的结果，并根据结果执行一些逻辑。

异步函数有意思的地方在于虽然内部有耗时操作，但是被调用后却能够立即返回。

```js
function resolveAfter2Seconds() {
  return new Promise(resolve => {
    setTimeout(() => {
      resolve('resolved');
    }, 2000);
  });
}

async function asyncCall() {
  console.log('calling');
  var result = await resolveAfter2Seconds();
  console.log(result);
  // expected output: "resolved"
}

asyncCall();
```
> 此代码引用自[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)

<!-- more -->

如果不使用这个特性，当我们调用一个异步接口的时候，我们需要传入一个回调函数，由异步接口的实现来调用回调逻辑

```js
function resolveAfter2Seconds(callback) {
    setTimeout(function() {
        callback('resolved')
    }, 2000);
}

function syncCall() {
    console.log('calling');
    resolveAfter2Seconds(function(result) {
        console.log(result);
    });
}

syncCall();
```

- 使用异步函数的特性后，从形态来看，异步的接口变成了同步的接口，不需要再传入回调函数

- promise对象作为其中的桥梁，执行耗时操作，并传递执行后的结果

- 耗时操作从以前提供异步接口的函数中转移到了异步函数中，在异步函数中进行同步操做

- 回调函数中的逻辑移到了异步函数中，异步函数可以看成对之前异步接口调用的封装

在我看来异步函数有以下优点和缺点：

优点：避免回调函数的层层嵌套，用同步的形式实现了异步的功能

缺点：
1. 屏蔽了实现细节，提高了理解成本
2. 相较之前多出了一个函数

    为什么这样说，如果不使用异步函数的特性，我们可以直接调用异步接口，并传入回调函数，那么只存在异步接口这一个函数，使用异步函数特性后，之前的异步接口变成同步接口，直接返回一个promise对象，这时候又需要一个额外的异步函数来调用这个同步接口同时包含回调函数中的逻辑

从某些角度来看，之前的回调函数变成了现在的异步函数，匿名函数变成了非匿名函数。

（PS：这里异步函数是指用async声明的函数，异步接口是指含有需要传入回调函数作为参数的接口）