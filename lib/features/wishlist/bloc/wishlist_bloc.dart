import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/wishlist_item.dart';
import '../../home/models/home_product_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishListInitialEvent);
    on<RemoveFromWishlistEvent>(removeFromWishlistEvent);
  }
  FutureOr<void> wishListInitialEvent(
      WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> removeFromWishlistEvent(
      RemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productDataModel);
    emit(WishlistSuccessState(wishlistItems: wishlistItems));
  }
}
