fs = require 'fs'
path = require 'path'
{exec,spawn} = require 'child_process'
util = require 'util'

srcDir = 'src'
libDir = 'lib'
coffee = path.normalize("./node_modules/.bin/coffee")

task 'watch', 'Watch source files and build changes', ->
  watch = spawn coffee, ['-cw', '--no-header', '-o', libDir, srcDir]
  watch.stdout.on 'data', (data) -> console.log data.toString().trim()

task 'build', 'Compile all CoffeeScript files', ->
  # prepare lib directory
  if not fs.existsSync libDir
    fs.mkdirSync libDir

  # run coffee-script compile
  exec "#{coffee} -c --no-header -o #{libDir} #{srcDir}", (err, stdout, stderr) ->
    util.log(err) if err
    util.log "Compiled CoffeeScript"
    util.log "done."
