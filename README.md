This example demonstrate how to setup BDD development environment for Ext JS 5.


3 ways to execute spec test cases: 

1. client side test running using jasmine
    a. disable autoCreateViewPort in app.js.
    b. "sencha app watch"
    c. visit "http://localhost:1841/SpecRunner.html"
    
2. Single run for all spec test cases
    grunt -v
    
3. Watch and continuously running spec test cases
    grunt watch
    
Prepare:
    
    1. clone this repository
        git clone git://github.com/wwbbx/BddExtJs
        
    2. install node modules
        npm install
        
    3. generate ext js 5 application
        sencha generate app BddExtJs ./BddExtJs
        
    4. download jasmine standalone. This is only for SpecRunner.html
       loading required JavaScript libraries.
       
        extract downloaded jasmine library into BddExtJs\test\jasmine
        or change jasmine library path in SpecRunner.html file.
        
    5. it would be better to install grunt-cli globally otherwise
       we have to specify full path of grunt-cli
       
        npm -g install grunt-cli
        
TODO:
    1. using cucumberjs
    2. using sinon.js
    3. using deftjs for dependency injection