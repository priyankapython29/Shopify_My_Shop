part of 'get_all_product_list_bloc.dart';

@immutable
abstract class GetAllProductListEvent {
  @override
  List<Object> get props => [];
}


class FetchProducts extends GetAllProductListEvent {}
