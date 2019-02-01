# prod-bug

This application demonstrates a bug when built with `ember build -prod`.  To reproduce:

* ember build -prod
* docker build --tag prod-bug:latest .
* docker run -it -p 8000:80 prod-bug
* Open your browser to http://localhost:8000
* Click the button

If you change `ember build -prod` to `ember build -dev` in the above steps, the problem will go away.
