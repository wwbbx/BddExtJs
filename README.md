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
        
        if phantomjs is not installed within the bundle, please install it by:
            npm install phantomjs
        
    3. generate ext js 5 application
        sencha generate app BddExtJs ./BddExtJs
        
    4. download jasmine standalone. This is only for SpecRunner.html
       loading required JavaScript libraries.
       
        extract downloaded jasmine library into BddExtJs\test\jasmine
        or change jasmine library path in SpecRunner.html file.
        
    5. it would be better to install grunt-cli globally otherwise
       we have to specify full path of grunt-cli
       
        npm -g install grunt-cli
        
Notes:

    1. If you used WebStorm, please setup coffee watch arguments like:
        --map --compile --output $ProjectFileDir$\test\spec\js $ProjectFileDir$\test\spec\coffee

WebStorm Tips:

    1. How to use WebStorm to do unit test using Karma
    
        WebStorm has Karma plugin installed and enabled by default.
        What we need is just:
            1. Create one karma.conf.js
            2. Edit Karma debug configuration
            
        Initial karma.conf.js can be created using karma node module. Run "karma init" after Karma 
        has been "npm -g install karma"
        
        Click F5 if you configure key map to match "Visual Studio". And debug configuration will
        pop up. Then you can add Karma debug configuration and specify karma.conf.js as karma config
        file.
        
    2. How to use WebStorm to do unit test using JSTestDriver
    
        You need to have one jsTestDriver.conf file in your project directory.
        Then you will see "View->Tool Windows->JsTestDriver Server.
        Otherwise, it is not visible.
        
        It requires jasmine and jasmine-jstd-adapter (JasmineAdapter.js).
        Searching on GitHub, I found it not supported. So stop investigating
        how to run unit test in JsTestDriver using jasmine.
        
        Actually, it already let JsTestDriver run the unit test. Only because my spec has "describe"
        which can only be recognized by jasmine. 
        
        The good thing for this is that it will list passed and failed test cases using tree in its
        console window.
        
    3. How to use WebStorm to do unit test using grunt
    
        You will see "Tools -> Open Grunt Console" as long as you have an "Gruntfile.js".
        In the grunt console window, you can select grunt task. If you config "grunt watch",
        then it will keep watching changes and execute tests.
        
    4. How to use WebStorm to do unit test using mocha
    
        Mocha + Chai are just npm modules. 
        Add one debug configuration using Mocha template. 
        Specify the test directory and you can run it.
        VisualStudio short cuts:
            F5 for debug, Alt + Shjft + F10 for run.
            For run run: Ctrl + F5, Alt + Shift + R
            
        The good part for Mocha is that it has test tree displayed.
        
How to debug:

    1. I can use JavaScript Debugger to host SpecRunner.html. It will use bootstrap.js to load
       ext js source code and application and test code.
       Then I can put "debugger" in test case to do the debugging.
       
    2. Using WebStorm Karma debug configuration, I can set breakpoint and do the debug.
       Note that I setup breakpoint in js file rather than coffee file. I think I need
       coffee prepressor in karma.config.js and compile coffee with source map.
       
       I did not figure out how to avoid let Karma using urlRoot/base/.
       Karma will try to find http://localhost:9876/base/ext/... after I specified 
       karma.config.js to load 'bootstrap.js' and 'bootstrap.json'.
        
Next Step:

    1. how to use sinon.js
    2. how to use deftjs
    3. how to debug test cases
    