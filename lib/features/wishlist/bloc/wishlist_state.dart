part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistState {}

class WishlistInitial extends WishlistState {}

class WishlistActionState extends WishlistState {}

class WishlistSuccessState extends WishlistState {
  late final List<ProductDataModel> wishlistItems;
  WishlistSuccessState({
    required this.wishlistItems,
  });
}
