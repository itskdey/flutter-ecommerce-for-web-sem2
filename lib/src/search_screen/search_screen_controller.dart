part of 'search_screen_view.dart';

class SearchScreenViewController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final RxList<String> filters = <String>[].obs;

  void search() {
    // Perform search based on the entered query and selected filters
  }

  void toggleFilter(String filter) {
    if (filters.contains(filter)) {
      filters.remove(filter);
    } else {
      filters.add(filter);
    }
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }

  updateSearchQuery(String text) {}
}
