import 'package:belajar_networking/controller/cubit/user_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('testing', () {
    blocTest<UserCubit, UserState>(
      'emits [UserLoading, UserLoaded] when successful',
      build: () => UserCubit(),
      act: (cubit) => cubit.fetchList(),
      expect: () => [
        UserLoading(),
        isA<UserLoaded>(),
      ],
    );
  });
}
