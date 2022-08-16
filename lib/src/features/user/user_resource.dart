import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class UserResource extends Resource {
  @override
  List<Route> get routes => [
        // _getAllUser
        Route.get('/user', _getAllUser),
        //
        //_getUserById
        Route.get('/user/:id', _getUserById),
        //
        //_createUser
        Route.post('/user', _createUser),
        //
        //_updateUser
        Route.put('/user', _updateUser),
        //
        //_deleteUser
        Route.delete('/user/:id', _deleteUser),
      ];

  // Get all user - GET
  FutureOr<Response> _getAllUser() {
    return Response.ok('OK');
  }

  // Get user by id - GET
  FutureOr<Response> _getUserById(ModularArguments arguments) {
    return Response.ok('User: ${arguments.params['id']}');
  }

  // Create User - POST
  FutureOr<Response> _createUser(ModularArguments arguments) {
    return Response.ok('Created user: ${arguments.data}');
  }

  // Update User - PUT
  FutureOr<Response> _updateUser(ModularArguments arguments) {
    return Response.ok('Updated user: ${arguments.data}');
  }

  // Delet User - DELETE
  FutureOr<Response> _deleteUser(ModularArguments arguments) {
    return Response.ok('Deleted user: ${arguments.params['id']}');
  }
}
