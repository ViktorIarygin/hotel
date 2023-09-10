import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/booking.dart';
import 'pages/hotels.dart';
import 'pages/order.dart';
import 'pages/rooms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Hotels();
        },
      ),
      GoRoute(
        path: '/rooms',
        builder: (BuildContext context, GoRouterState state) {
          return const Rooms();
        },
      ),
      GoRoute(
        path: '/rooms/booking',
        builder: (BuildContext context, GoRouterState state) {
          return const Booking();
        },
      ),
       GoRoute(
        path: '/rooms/booking/order',
        builder: (BuildContext context, GoRouterState state) {
          return const Order();
        },
      ),
    ],
  );
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
