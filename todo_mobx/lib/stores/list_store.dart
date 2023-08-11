import 'package:mobx/mobx.dart';

part 'list_store.g.dart'; // Nome do arquivo gerado pelo MobX

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {
  @observable
  String newTodoTitle = '';

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  @observable
  ObservableList<String> todoList = ObservableList<String>();

  @action
  void addTodo() {
    todoList.add(newTodoTitle);
  }
}
