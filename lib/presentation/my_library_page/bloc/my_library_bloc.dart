import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/mylibrary_item_model.dart';import 'package:basri_s_application28/presentation/my_library_page/models/my_library_model.dart';part 'my_library_event.dart';part 'my_library_state.dart';class MyLibraryBloc extends Bloc<MyLibraryEvent, MyLibraryState> {MyLibraryBloc(MyLibraryState initialState) : super(initialState) { on<MyLibraryInitialEvent>(_onInitialize); }

_onInitialize(MyLibraryInitialEvent event, Emitter<MyLibraryState> emit, ) async  { emit(state.copyWith(myLibraryModelObj: state.myLibraryModelObj?.copyWith(mylibraryItemList: fillMylibraryItemList()))); } 
List<MylibraryItemModel> fillMylibraryItemList() { return List.generate(3, (index) => MylibraryItemModel()); } 
 }
