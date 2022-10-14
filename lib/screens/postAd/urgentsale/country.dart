import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';



class HomeePage extends StatefulWidget {
  @override
  _HomeePageState createState() => _HomeePageState();
}
class _HomeePageState extends State<HomeePage> {
  TextEditingController country=TextEditingController();
  TextEditingController state=TextEditingController();
  TextEditingController city=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country->State->City'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CountryStateCityPicker(
                country: country,
                state: state,
                city: city,
               // textFieldInputBorder: UnderlineInputBorder(),
              ),
              const SizedBox(height: 20),

              Text("${country.text}, ${state.text}, ${city.text}")
            ],
          )
      ),
    );
  }
}