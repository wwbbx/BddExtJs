module.exports = function (grunt) {

    grunt.initConfig({
        jasmine: {
            consoleDisplayOptions: {
                src: [
                    // let ext js 5 bootstraps to load
                    // ext js and application source code
                    'bootstrap.js',

                    // extra source code specified here

                ],
                options: {
                    specs: [
                        'test/spec/js/*.js',
                        'test/spec/js/**/*.js'
                    ],
                    helpers: 'test/example/spec/SpecHelper.js',
                    display: 'full',
                    summary: true
                }
            }
        },

        watch: {
            src: {
                files: 'app/**/*',
                tasks: ['jasmine'],
                options: {
                    spawn: false,
                    interrupt: true,
                    reload: true
                }

            },
            spec: {
                files: 'test/spec/**/*.js',
                tasks: ['jasmine'],
                options: {
                    spawn: false,
                    interrupt: true,
                    reload: true
                }
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-jasmine');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', 'jasmine');
};
