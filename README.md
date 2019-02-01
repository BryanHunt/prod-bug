# prod-bug

This application demonstrates a bug when built with `ember build -prod`.  To reproduce:

* ember build -prod
* docker build --tag prod-bug:latest .
* docker run -it -p 8000:80 prod-bug
* Open your browser to http://localhost:8000
* Click the button

You will get the following exception:
```
vendor-39e87a83c6850fcbd535898cfb1ba104.js:3074 Uncaught TypeError: Cannot read property 'manager' of null
    at Object.evaluate (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3074)
    at e.evaluate (vendor-39e87a83c6850fcbd535898cfb1ba104.js:2962)
    at e.evaluateSyscall (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3237)
    at e.evaluateInner (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3229)
    at e.evaluateOuter (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3229)
    at e.next (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3370)
    at e.execute (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3369)
    at i.handleException (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3300)
    at e.handleException (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3315)
    at e.throw (vendor-39e87a83c6850fcbd535898cfb1ba104.js:3295)
```

If you change `ember build -prod` to `ember build -dev` in the above steps, the problem will go away.
