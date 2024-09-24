import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver{
  @override

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('State Change: $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('Error: $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('Transition: $transition');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('OnCreate: $onCreate($bloc)');

  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('OnClose: $onClose($bloc)');

  }
}

