# job control in shell

ctr + z

`jobs`

```sh
[1]  + 13944 suspended  supervisor app.js
```

`bg %1`

```sh
[1]  + 13944 continued  supervisor app.js
```

`fg %1`

```sh
[1]  + 13944 continued  supervisor app.js
```
