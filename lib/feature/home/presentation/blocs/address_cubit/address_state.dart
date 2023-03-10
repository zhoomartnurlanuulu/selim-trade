part of 'address_cubit.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.success(List<AddressModel> model) = _Success;
  const factory AddressState.error(CatchException error) = _Error;
}
