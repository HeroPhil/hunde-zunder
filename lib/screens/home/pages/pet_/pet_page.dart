import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hunde_zunder/screens/home/pages/pet/pet_page_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class PetPage extends StatelessWidget {
  const PetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<PetPageProvider>(
        builder: (context, petPageProvider, _) {
          final pets = petPageProvider.pets;
          if (pets == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Column(
            children: [
              Text(
                'My Pets',
                style: Theme.of(context).textTheme.headline3,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListView(
                    children: [
                      if (pets.isEmpty)
                        const Center(
                          child: Text('No pets found'),
                        ),
                      ...petPageProvider.pets!.map(
                        (pet) => Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              foregroundImage: Image.memory(pet.image).image,
                            ),
                            title: Text(pet.name),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Add Pet'),
                ),
                onPressed: () {
                  // context.read<PetProvider>().addPet();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}