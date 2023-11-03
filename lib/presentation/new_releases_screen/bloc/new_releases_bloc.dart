import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/newreleases_item_model.dart';import 'package:basri_s_application28/presentation/new_releases_screen/models/new_releases_model.dart';part 'new_releases_event.dart';part 'new_releases_state.dart';class NewReleasesBloc extends Bloc<NewReleasesEvent, NewReleasesState> {NewReleasesBloc(NewReleasesState initialState) : super(initialState) { on<NewReleasesInitialEvent>(_onInitialize); }

_onInitialize(NewReleasesInitialEvent event, Emitter<NewReleasesState> emit, ) async  { emit(state.copyWith(newReleasesModelObj: state.newReleasesModelObj?.copyWith(newreleasesItemList: fillNewreleasesItemList()))); } 
List<NewreleasesItemModel> fillNewreleasesItemList() { return List.generate(4, (index) => NewreleasesItemModel()); } 
 }
