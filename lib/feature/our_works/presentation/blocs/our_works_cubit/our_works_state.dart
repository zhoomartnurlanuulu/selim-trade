part of 'our_works_cubit.dart';

@freezed
class OurWorksState with _$OurWorksState {
  const factory OurWorksState.loading() = _Loading;
  const factory OurWorksState.success(List<OurWorksModel> model) = _Success;
  const factory OurWorksState.error(CatchException error) = _Error;
}
