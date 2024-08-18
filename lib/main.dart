import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_flutter/screens/activity_splash.dart';
import 'constant/dio_shopify.dart';
import 'constant/post_repository.dart';
import 'constant/singleton_objects.dart';
import 'controllers/get_all_product_list_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SingletonObjects.init();
  await DioShopify.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  /// @author Priyanka
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// It show bloc provider route to redirect bloc function where fetch all list of product
        /// @author Priyanka
        BlocProvider(
        create: (context) => GetAllProductListBloc(PostRepository())..add(FetchProducts()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Shopify Shop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff84c447)),
          useMaterial3: false,
        ),
        /// When call main function then call this activity splash screen
        /// @author Priyanka
        home:ActivitySplash(),
      ),
    );
  }
}

