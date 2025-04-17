import 'package:flutter/material.dart';
import 'package:exec03/home.dart';

class Archive extends StatelessWidget {
  const Archive({super.key});

  void _uncheckTask(String updatedTaskId) {
    final List<Map<String, dynamic>> tasks = [...Home.tasksNotifier.value];

    final int index = tasks.indexWhere((task) => task['id'] == updatedTaskId);
    tasks[index]['isDone'] = false;

    Home.tasksNotifier.value = tasks;
  }

  void _deleteTask(String taskId) {
    final List<Map<String, dynamic>> tasks = [...Home.tasksNotifier.value];
    tasks.removeWhere((task) => task['id'] == taskId);
    Home.tasksNotifier.value = tasks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas Concluídas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ValueListenableBuilder<List<Map<String, dynamic>>>(
          valueListenable: Home.tasksNotifier,
          builder: (_, tasks, __) {
            final completedTasks =
                tasks.where((task) => task['isDone'] == true).toList();
            return ListView.builder(
              itemCount: completedTasks.length,
              itemBuilder: (_, index) {
                final task = completedTasks[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  elevation: 5,
                  color: Colors.green,
                  child: ListTile(
                    title: Text(task['title']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteTask(task['id']),
                        ),
                        IconButton(
                          icon: const Icon(Icons.check_box),
                          onPressed: () => _uncheckTask(task['id']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
