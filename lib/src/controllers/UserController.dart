import '../ui/objects/User.dart';

var userController = UserController();

class UserController {
  List<User> getAll(){
    return userController.getAll().whereType<User>().toList();
  }

  User save(User) {
    return userController.save(User);
  }

  bool remove(User) {
    return userController.remove(User);
  }
}