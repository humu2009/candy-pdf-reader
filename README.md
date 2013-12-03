Introduction
------------

The goal of Candy Reader project is to build a PDF (Portable Document Format) reader application based on Mozilla PDF.js and node-webkit. 

[PDF.js](https://github.com/mozilla/pdf.js) is a JavaScript library as well as a lightweight viewer that can load, parse and render PDF files using HTML5.  With [node-webkit](https://github.com/rogerwang/node-webkit), the library is built into an nw package from which a main executable file is generated so that it can be distributed and launched as a standalone native app without a browser.

Current implementation is based on PDF.js 0.5.5 and node-webkit 0.8.1.

Screenshots
-----------

Maybe you would like to have some [screenshots](https://github.com/humu2009/candy-pdf-reader/wiki/Screenshots) to get a rough concept of this project :-)

Prebuilt Binaries
-----------------

(v0.1.1 distribution packages)

* Windows: [win32](http://pan.baidu.com/s/1nEJJL)

Known Issues
------------

* Memory consuming
* Toolbar is not hidden in fullscreen/presentation mode
* Cannot display context menu
