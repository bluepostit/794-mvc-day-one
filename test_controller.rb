require_relative 'repository'
require_relative 'controller'

repo = Repository.new
controller = Controller.new(repo)

controller.add_task
controller.add_task
controller.list_tasks
controller.remove_task
