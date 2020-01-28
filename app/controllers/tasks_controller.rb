class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:body, :author, :thing_id)
    end

end
