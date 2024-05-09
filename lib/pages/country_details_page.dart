import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saasaki_assignment/models/country_model.dart';

import '../widgets/detail_card.dart';

class CountryDetailPage extends StatelessWidget {
  const CountryDetailPage({super.key, required this.country});
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name.common),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Hero(
              tag: country.flags!.png!,
              child: CachedNetworkImage(
                imageUrl: country.flags!.png!,
                height: 150,
                width: 180,
              ),
            ),
          ),
          DetailCard(title: 'Official Name', content: country.name.official!),
          DetailCard(title: 'Capital', content: country.capital!.join(', ')),
          DetailCard(
              title: 'Population', content: country.population!.toString()),
          DetailCard(title: 'Area', content: country.area!.toString()),
          DetailCard(
              title: 'Languages',
              content: country.languages!.values.join(', ')),
          DetailCard(
              title: 'Currencies',
              content: country.currencies!.keys.join(', ')),
          DetailCard(
              title: 'Landlocked Country',
              content: country.landlocked! ? 'Yes' : 'No'),
        ],
      ),
    );
  }
}
