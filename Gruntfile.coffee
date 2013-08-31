class Helper

module.exports = (grunt) ->

  grunt.initConfig
    
    clean:
      lib:
        src: "/javascript/**/*.*"

    coffee:
      lib: 
        expand: true,
        flatten: true,
        cwd: './src/',
        src: ['*.coffee'],
        dest: './javascript/single',
        ext: '.js'


    concat:
      options:
        separator: ';',
      
      dist:
        src: ['./javascript/single/index.js', './javascript/single/other.js'],
        dest: 'public/app.js',
          

  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-concat');
  
  grunt.registerTask('compile', ['clean','coffee']);   

  grunt.registerTask("dev" , ["concat"])
