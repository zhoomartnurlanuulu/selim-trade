import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:selim_trade/feature/home/data/repository_impls/address_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/benifits_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/phone_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/questions_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/reviews_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/services_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/social_media_repo_impl.dart';
import 'package:selim_trade/feature/home/data/repository_impls/work_time_repo_impl.dart';
import 'package:selim_trade/feature/home/domain/repositories/address_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/benifits_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/phone_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/questions_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/reviews_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/services_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/social_media_repo.dart';
import 'package:selim_trade/feature/home/domain/repositories/work_time_repo.dart';
import 'package:selim_trade/feature/home/domain/use_cases/address_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/benifits_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/phone_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/questions_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/reviews_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/services_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/social_media_use_case.dart';
import 'package:selim_trade/feature/home/domain/use_cases/work_time_use_case.dart';
import 'package:selim_trade/feature/home/presentation/blocs/address_cubit/address_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/benifits_cubit/benifits_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/phones_cubit/phones_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/questions_cubit/questions_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/reviews_cubit/reviews_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/services_cubit/services_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/social_media_cubit/social_media_cubit.dart';
import 'package:selim_trade/feature/home/presentation/blocs/work_time_cubit/work_time_cubit.dart';
import 'package:selim_trade/feature/news/data/repository_impls/news_repo_impl.dart';
import 'package:selim_trade/feature/news/domain/repositories/news_repo.dart';
import 'package:selim_trade/feature/news/domain/use_cases/news_use_case.dart';
import 'package:selim_trade/feature/news/presentation/blocs/news_cubit/news_cubit.dart';
import 'package:selim_trade/feature/our_works/data/repository_impl/our_works_repo_impl.dart';
import 'package:selim_trade/feature/our_works/domain/repositories/our_works_repo.dart';
import 'package:selim_trade/feature/our_works/domain/use_case/our_works_use_case.dart';
import 'package:selim_trade/feature/our_works/presentation/blocs/our_works_cubit/our_works_cubit.dart';
import 'package:selim_trade/feature/services/data/repository_impl/advantage_repo_impl.dart';
import 'package:selim_trade/feature/services/data/repository_impl/gate_repo_impl.dart';
import 'package:selim_trade/feature/services/domain/repositories/advantage_repo.dart';
import 'package:selim_trade/feature/services/domain/repositories/gate_repo.dart';
import 'package:selim_trade/feature/services/domain/use_case/advantage_use_case.dart';
import 'package:selim_trade/feature/services/domain/use_case/gate_use_case.dart';
import 'package:selim_trade/feature/services/presentation/blocs/advantage_cubit/advantage_cubit.dart';
import 'package:selim_trade/feature/services/presentation/blocs/gates_cubit/gates_cubit.dart';
import 'package:selim_trade/api/dio_settings.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

// Other services
  sl.registerLazySingleton<Dio>(() => DioSettings().dio);

  //Repositories
  sl.registerFactory<AdvantageRepo>(
    () => AdvantageRepoImpl(dio: sl()),
  );
  sl.registerFactory<GatesRepo>(() => GatesRepoImpl(dio: sl()));
  sl.registerFactory<QuestionsRepo>(() => QuestionsRepoImpl(dio: sl()));
  sl.registerFactory<BenifitsRepo>(() => BenifitsRepoImpl(dio: sl()));
  sl.registerFactory<ServicesRepo>(() => ServicesRepoImpl(dio: sl()));
  sl.registerFactory<OurWorksRepo>(() => OurWorksRepoImpl(dio: sl()));
  sl.registerFactory<NewsRepo>(() => NewsRepoImpl(dio: sl()));
  sl.registerFactory<ReviewsRepo>(() => ReviewsRepoImpl(dio: sl()));
  sl.registerFactory<SocialMediaRepo>(() => SocialMediaRepoImpl(dio: sl()));
  sl.registerFactory<AddressRepo>(() => AddressRepoImpl(dio: sl()));
  sl.registerFactory<WorkTimeRepo>(() => WorkTimeRepoImpl(dio: sl()));
  sl.registerFactory<PhoneRepo>(() => PhoneRepoImpl(dio: sl()));

  // Use cases
  sl.registerFactory<AdvantageUseCase>(
    () => AdvantageUseCase(repo: sl()),
  );
  sl.registerFactory<QuestionsUseCase>(() => QuestionsUseCase(
        repo: sl(),
      ));
  sl.registerFactory<GateUseCase>(() => GateUseCase(repo: sl()));
  sl.registerFactory<BenifitsUseCase>(() => BenifitsUseCase(repo: sl()));
  sl.registerFactory<ServicesUseCase>(() => ServicesUseCase(repo: sl()));
  sl.registerFactory<OurWorksUseCase>(() => OurWorksUseCase(repo: sl()));
  sl.registerFactory<NewsUseCase>(() => NewsUseCase(repo: sl()));
  sl.registerFactory<ReviewsUseCase>(() => ReviewsUseCase(repo: sl()));
  sl.registerFactory<SocialMediaUseCase>(() => SocialMediaUseCase(repo: sl()));
  sl.registerFactory<AddressUseCase>(() => AddressUseCase(repo: sl()));
  sl.registerFactory<WorkTimeUseCase>(() => WorkTimeUseCase(repo: sl()));
  sl.registerFactory<PhoneUseCase>(() => PhoneUseCase(repo: sl()));

  // blocs
  sl.registerFactory<AdvantageCubit>(
    () => AdvantageCubit(useCase: sl()),
  );
  sl.registerFactory<QuestionsCubit>(
    () => QuestionsCubit(useCase: sl()),
  );
  sl.registerFactory<GatesCubit>(
    () => GatesCubit(useCase: sl()),
  );
  sl.registerFactory<BenifitsCubit>(
    () => BenifitsCubit(useCase: sl()),
  );
  sl.registerFactory<ServicesCubit>(
    () => ServicesCubit(useCase: sl()),
  );
  sl.registerFactory<OurWorksCubit>(
    () => OurWorksCubit(useCase: sl()),
  );
  sl.registerFactory<NewsCubit>(
    () => NewsCubit(useCase: sl()),
  );
  sl.registerFactory<ReviewsCubit>(
    () => ReviewsCubit(useCase: sl()),
  );
  sl.registerFactory<SocialMediaCubit>(
    () => SocialMediaCubit(useCase: sl()),
  );
  sl.registerFactory<AddressCubit>(
    () => AddressCubit(useCase: sl()),
  );
  sl.registerFactory<WorkTimeCubit>(
    () => WorkTimeCubit(useCase: sl()),
  );
  sl.registerFactory<PhonesCubit>(
    () => PhonesCubit(useCase: sl()),
  );
}
