part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishlistInitialEvent extends WishlistEvent {}

class WishlistActionEvent extends WishlistEvent {}

class RemoveFromWishlistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;
  RemoveFromWishlistEvent({
    required this.productDataModel,
  });
}

class WishlistSuccessEvent extends WishlistEvent {}
