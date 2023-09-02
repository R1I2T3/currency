import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});
  @override
  @override
  State<Currency> createState() {
    return _Currency();
  }
}

class _Currency extends State<Currency> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Currency converter",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: "sans-serif",
          ),
        ),
      ),
      body: ColoredBox(
        color: const Color.fromARGB(200, 255, 215, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "${result != 0 ? result.toStringAsFixed(2) : result.toString()} INR",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextField(
                      cursorHeight: 20,
                      controller: textEditingController,
                      style: const TextStyle(color: Colors.black, fontSize: 25),
                      decoration: const InputDecoration(
                        hintText: "Enter amount in USD",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(Icons.monetization_on_outlined),
                        prefixIconColor: Colors.black,
                        filled: true,
                        fillColor: Colors.amber,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      keyboardType: const TextInputType.numberWithOptions(),
                    ),
                  ),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(10),
                    child: TextButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        elevation: MaterialStatePropertyAll(10.0),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        foregroundColor: MaterialStatePropertyAll(Colors.amber),
                        minimumSize:
                            MaterialStatePropertyAll(Size(double.infinity, 50)),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (textEditingController.text == "") {
                            result = 0;
                          }
                          result =
                              double.parse(textEditingController.text) * 81;
                        })
                      },
                      child: const Text(
                        "Convert",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
