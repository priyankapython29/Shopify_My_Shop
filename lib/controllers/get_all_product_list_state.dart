part of 'get_all_product_list_bloc.dart';

/// This is a state of application by default call abstract class
/// @author Priyanka

@immutable
abstract class GetAllProductListState {
  @override
  List<Object> get props => [];
}

class GetAllProductListInitial extends GetAllProductListState {}

class GetAllProductListLoading extends GetAllProductListState {}

class GetAllProductListLoaded extends GetAllProductListState {
  /// When application state on loading call this list of product
  /// @author Priyanka
  final List<Products> products;
  GetAllProductListLoaded(this.products);
  @override
  List<Object> get props => [products];
}

class GetAllProductListError extends GetAllProductListState {
  final String message;
  GetAllProductListError(this.message);
  @override
  List<Object> get props => [message];
}
