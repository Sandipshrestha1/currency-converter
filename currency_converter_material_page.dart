import 'package:flutter/material.dart';

/*
1. Create a variable that stores the converted currency value
2. create a function  that multiplies the value given by the textfield with  81
3. Store the value in the variable that we created 
4. Display the variable 

  */
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );
// padding and container

    //Color(0xARRGGBB

    //color: Colors.red,

    // borderRadius: BorderRadius.all(
    //horizonatal , vertcal , top ,bottom and left n right
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NRS : ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",

              //result.toString(),
              style: const TextStyle(
                  fontSize: 65, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount of usd",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  //IconData ???
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //button = TextButton
            //raised = ElevatedButton
            //
            //appears like a text

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                //TextButton(
                onPressed: () {
                  //debug , release , profile
                  // if (kDebugMode) {
                  //   print("Button clicked");
                  //   //debugPrint("");
                  // }

                  setState(
                    () {
                      result =
                          double.parse(textEditingController.text) * 132.44;
                    },
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Convert',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
