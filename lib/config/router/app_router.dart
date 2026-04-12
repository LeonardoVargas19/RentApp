import 'package:go_router/go_router.dart';
import 'package:rent_app/presentation/views/bookings_screen.dart';
import 'package:rent_app/presentation/views/finances_screen.dart';
import 'package:rent_app/presentation/views/settings_view.dart';
import 'package:rent_app/presentation/views/views.dart';

final appRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(path: "/settings", builder: (contex, initial) => SettingsView()),
    GoRoute(path: "/booking", builder: (contex, initial) => BookingsScreen()),
    GoRoute(path: "/home", builder: (contex, initial) => HomeView()),
    GoRoute(path: "/finances", builder: (contex, initial) => FinancesScreen()),
  ],
);
