part of 'benifits_cubit.dart';

@freezed
class BenifitsState with _$BenifitsState {
  const factory BenifitsState.loading() = _Loading;
  const factory BenifitsState.success(List<BenifitsModel> model) = _Success;
  const factory BenifitsState.error(CatchException error) = _Error;
}
