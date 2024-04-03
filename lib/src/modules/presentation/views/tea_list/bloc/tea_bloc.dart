import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/models.dart';

part 'tea_event.dart';
part 'tea_state.dart';
part 'tea_bloc.freezed.dart';

class TeaBloc extends Bloc<TeaEvent, TeaState> {
  TeaBloc() : super(TeaState.initial()) {
    on<TeaEvent>((event, emit) {});
  }
}
