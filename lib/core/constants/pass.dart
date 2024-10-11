import 'package:flutter_dotenv/flutter_dotenv.dart';

String get pass => dotenv.env['PASSWORD'] ?? "";
