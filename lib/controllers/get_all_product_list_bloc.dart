import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopify_flutter/model/my_product.dart';

import '../constant/post_repository.dart';

part 'get_all_product_list_event.dart';
part 'get_all_product_list_state.dart';

class GetAllProductListBloc extends Bloc<GetAllProductListEvent, GetAllProductListState> {
  final PostRepository _postRepository;
  /// Get List of all products.
  /// @author Priyanka
  GetAllProductListBloc(this._postRepository) : super(GetAllProductListInitial()) {
    on<GetAllProductListEvent>((event, emit) async {
      emit(GetAllProductListLoading());
      try {
        final products = await _postRepository.fetchProducts();
        emit(GetAllProductListLoaded(products!));
      } catch (e) {
        emit(GetAllProductListError(e.toString()));
      }
    });
  }


}
