
class Task{
  int id;
  String? title;
  String? desc;
  DateTime? due_date;
  bool status = false;

  Task(this.id,this.title,this.desc,this.due_date){}
}
class TaskManager{
    Map<int,Task> tasks = {};


    void addTasks(int id,Task added ){
        this.tasks[id] = added;
    }

    void view(){
      bool flag = true; 
      for(var n in tasks.values){
        print(n.title); 
        flag = false;
      }
      if (flag){
        print("No Tasks Available");
      }
      
    }
    void viewComp(){
      for(var n in tasks.values){
        if (n.status == true){
          print(n.title);
        }
        
      }

    }
    void viewPend(){
       for(var n in tasks.values){
        if (n.status == false){
          print(n.title);
        }
        
      }

    }

    void updateTitle(String? old,String? newone){
      for(var n in tasks.values){
        if (n.title == old){
          n.title = newone;
        }
        
      }
    }
    void updateDesc(String? old,String? newone){
      for(var n in tasks.values){
        if (n.desc == old){
          n.desc = newone;
        }
        
      }
    }

    void delete(int id){
        
        this.tasks.remove(id);
      }

    
}


void main(){
  Task task = Task(0,"the boys","synical movie",DateTime(2024,12,4));
  TaskManager taskmanager = TaskManager();
  taskmanager.addTasks(task.id, task);
  taskmanager.view();

}
