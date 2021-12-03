//import 'package:flutter_test/flutter_test.dart';
//import 'package:prayertimes/blocs/bloccheckconnection/network_bloc.dart';
//
//void main() {
//  group('CheckConnectionBloc', () {
//    // CounterCubit counterCubit;
//    NetworkBloc? networkBloc;
//    setUp(() {
//      // counterCubit = CounterCubit();
//      networkBloc = NetworkBloc();
//    });
//
//    tearDown(() {
//      // counterCubit.close();
//      networkBloc!.close();
//    });
//
//    test('initial state of NetworkBloc()', () {
//      //! does not work because i use package does not support null safety
//      expect(networkBloc!.state, NetworkBloc());
//    });
//
////    blocTest(
////      'the CounterCubit should emit a CounterState(counterValue:1, wasIncremented:true) when the increment function is called',
////      build: () => counterCubit,
////      // act means actual value
////      act: (cubit) => cubit.increment(),
////      // expect to compare resulte output between CounterState(counterValue: 1, wasIncremented: true) verses
////      // cubit.increment(),
////      expect: [CounterState(counterValue: 1, wasIncremented: true)],
////    );
////
////    blocTest(
////      'the CounterCubit should emit a CounterState(counterValue:-1, wasIncremented:false) when the decrement function is called',
////      build: () => counterCubit,
////      act: (cubit) => cubit.decrement(),
////      expect: [
////        CounterState(
////          counterValue: -1,
////          wasIncremented: false,
////        ),
////      ],
////    );
//  });
//}
