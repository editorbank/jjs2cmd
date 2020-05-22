# jjs2cmd
JavaScript to Shell Script Converter.
The Nashorn engine from the Java 1.8 VM will be used to execute scripts.

* Install
```
copy .\bin\* %WINDIR%
```

* Use
 ```
echo print("Hello") >hello.js
jjs2cmd hello.js
hello
```