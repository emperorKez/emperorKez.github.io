import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class Routes {
  static Route<T> fadeThrough<T>({required RouteSettings settings, required WidgetBuilder page,
      int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     // final args = settings.arguments;
//     // final attributeName = settings.arguments;
//     // final attributeCode = settings.arguments;

//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(
//             builder: (_) => HomeScreen(
//                 //title: 'Mydie',
//                 ));

//       case '/settings':
//         return MaterialPageRoute(builder: (_) => ProfileScreen());

//         case '/login':
//         return MaterialPageRoute(builder: (_) => LoginScreen());
//         case '/orderSuccess':
//         return MaterialPageRoute(builder: (_) => OrderSuccessScreen());

        
        

//       // case '/productScreen':
//       //   return MaterialPageRoute(builder: (_) => ProductScreen(productId));

//       default:
//         return _errorRoute();
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//         body: const Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }
