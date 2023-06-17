import 'package:get/get.dart';
import 'package:ayat_nesia/app/data/local/quran_local_data_source_impl.dart';
import 'package:ayat_nesia/app/data/repository/quran_repository_impl.dart';
import 'package:ayat_nesia/app/modules/all_surah/controllers/all_surah_controller.dart';
import 'package:ayat_nesia/app/modules/search_verses/controllers/search_verses_controller.dart';

import '../controllers/main_screen_controller.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainScreenController());
    Get.put(SearchVersesController());
    Get.put(
      AllSurahController(
        QuranRepositoryImpl(
          quranLocalDataSource: QuranLocalDataSourceImpl(),
        ),
      ),
    );
  }
}
