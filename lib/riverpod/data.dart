import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saasaki_assignment/models/country_model.dart';

class CountriesDataNotifier extends StateNotifier<List<Country>> {
  CountriesDataNotifier() : super([]); // Initialize with the default value

  add(Country country) => state.add(country);
  clear() => state = [];

  sortByName() => state.sort((a, b) => a.name.common.compareTo(b.name.common));
  sortByPopulation() =>
      state.sort((a, b) => a.population!.compareTo(b.population!));
  sortByArea() => state.sort((a, b) => a.area?.compareTo(b.area ?? 0) ?? 0);
}

final countriesProvider =
    StateNotifierProvider<CountriesDataNotifier, List<Country>>(
        (_) => CountriesDataNotifier());
