inquirer = require 'inquirer'

choices = [{
  name: 'No, build now!'
  value: true
}, {
  name: 'OK, generate a setting file in project.'
  value: false
}]

promps = [{
  choices,
  type: 'list'
  name: 'is_tourist'
  message: 'Do you need to create a configuration file？\n  (preview site has 1 hour limit)\n'
}]

guider = () ->
  try
    { is_tourist } = await inquirer.prompt promps
    fine.is_tourist = is_tourist
    is_tourist
  catch err
    fine.exit err

module.exports =
  run: guider
