import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:saasaki_assignment/models/country_model.dart';
import 'package:saasaki_assignment/pages/country_details_page.dart';
import 'package:saasaki_assignment/riverpod/data.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final String apiEndpoint = "https://restcountries.com/v3.1/all";
  String responseText = '';

  final searchController = TextEditingController();

  fetchCountries() async {
    try {
      final response = await http.get(Uri.parse(apiEndpoint));

      if (response.statusCode == 200) {
        // Code 200 is SUCCESS
        final body =
            jsonDecode(response.body); // Decoding data from the response

        if (body is List) {
          ref.read(countriesProvider.notifier).clear();
          for (var countryMap in body) {
            final country = Country.fromMap(countryMap);
            ref.read(countriesProvider.notifier).add(country);
          }
        } else {
          // If we do not get data in the expected List format, then we display this
          responseText = 'Unexpected data format';
        }
      } else {
        // If we have an error, it will display the error code
        responseText = 'Error: code_${response.statusCode}';
      }
    } on SocketException catch (_) {
      // If we have a SocketException (No Internet), then we are handling it
      responseText = 'Your device is offline.';
    }

    setState(() {});
  }

  @override
  void initState() {
    fetchCountries(); // To fetch data and update the state

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(countriesProvider);

    List<Country> filteredCountries = List.from(
        countries); // we are using a new list so that we do not modify original data while filtering
    List<String> continents = [];

    if (searchController.text.isNotEmpty) {
      filteredCountries = filteredCountries
          .where((element) => element.name.common
              .toLowerCase()
              .contains(searchController.text.toLowerCase()))
          .toList();
    }

    for (var country in filteredCountries) {
      for (var continent in country.continents ?? []) {
        continents.add(continent.toString());
      }
    }

    continents = continents.toSet().toList();

    searchController.addListener(() => setState(() {}));
    // We could use a new provider for filteredCountries to avoid setState, but it is not necessary for small data set

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Earth',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: const Text('Sort Countries By:'),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ref.read(countriesProvider.notifier).sortByName();
                      Navigator.pop(context);
                      setState(() {});
                      // By default, Riverpod performs a deep equality check between the old and new state when using ref.watch. This means if the list objects themselves haven't changed (just their order), the widget might not rebuild. So, we are using setState
                    },
                    child: const Text('Name'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(countriesProvider.notifier).sortByPopulation();
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const Text('Population'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(countriesProvider.notifier).sortByArea();
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: const Text('Area'),
                  ),
                ],
              ),
            ),
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => await fetchCountries(),
        child: responseText
                .isEmpty // responseText will only have data if there are any errors. So, we are using it for updating UI instead of having a new hasErrors variable
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16.0),
                          hintText: 'Search by Country name',
                        ),
                      ),
                    ),
                  ),
                  if (continents.isNotEmpty)
                    Expanded(
                      child: ListView.builder(
                        itemCount: continents.length,
                        itemBuilder: (context, index) {
                          final continent = continents.elementAt(index);
                          final countriesInTheContinent = filteredCountries
                              .where((element) => (element.continents ?? [])
                                  .contains(continent));

                          return ExpansionTile(
                            title: Text(continent),
                            children: countriesInTheContinent
                                .map(
                                  (country) => Card(
                                    child: ListTile(
                                      leading: Hero(
                                        tag: country.flags!.png!,
                                        child: CachedNetworkImage(
                                          imageUrl: country.flags!.png!,
                                          height: 50,
                                          width: 60,
                                        ),
                                      ),
                                      title: Text(country.name.common),
                                      subtitle: Text(
                                          'Capital: ${country.capital!.join(', ')}\nPopulation: ${number().format(country.population)}'),
                                      onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CountryDetailPage(
                                                      country: country))),
                                    ),
                                  ),
                                )
                                .toList(),
                          );
                        },
                      ),
                    ),
                  if (countries.isEmpty)
                    const Text(
                        'Loading..') // When there are no errors and there is no data yet, we show loading
                ],
              )
            : Center(
                child: Text(
                    responseText), // This will be shown if there are any errors
              ),
      ),
    );
  }

  NumberFormat number() => NumberFormat.simpleCurrency(
      locale: 'en_IN',
      name: '',
      decimalDigits:
          0); // As there is no locales for the countries in the data, we are using Indian locale by default
}
