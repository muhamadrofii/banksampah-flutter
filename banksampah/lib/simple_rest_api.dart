import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

void main() async {
  final router = Router();

  // Route for login
  router.post('/users/login', (Request request) async {
    final payload = await request.readAsString();
    final data = jsonDecode(payload);

    final email = data['email'];
    final password = data['password'];

    // Replace these with your actual authentication logic
    if (email == 'user@example.com' && password == 'password123') {
      return Response.ok(jsonEncode({'status': 'success', 'message': 'Login successful'}), headers: {'Content-Type': 'application/json'});
    } else {
      return Response.forbidden(jsonEncode({'status': 'error', 'message': 'Invalid credentials'}), headers: {'Content-Type': 'application/json'});
    }
  });

  // Add more routes as needed

  final handler = const Pipeline().addMiddleware(logRequests()).addHandler(router);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Server listening on port ${server.port}');
}
