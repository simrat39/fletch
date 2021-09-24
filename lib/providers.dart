import 'package:fletch/services/distro_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final distroProvider = ChangeNotifierProvider((_) => DistroService());
