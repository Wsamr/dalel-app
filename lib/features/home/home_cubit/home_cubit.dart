import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int currentIndexIndictor = 0;
  changeIndicator(int index) {
    currentIndexIndictor = index;
    emit(UpdateIndector());
  }
}
