import 'package:flutter/material.dart';
import 'package:shop_app/app/utilities/categ_list.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String mainCategValue = 'select category';
  String subCategValue = 'subcategory';

  List<String> subCategList = [];

  void selectedMainCateg(String? value) {
    if (value == 'select category') {
      subCategList = [];
    } else if (value == 'men') {
      subCategList = men;
    } else if (value == 'women') {
      subCategList = women;
    } else if (value == 'electronics') {
      subCategList = electronics;
    } else if (value == 'accessories') {
      subCategList = accessories;
    } else if (value == 'shoes') {
      subCategList = shoes;
    } else if (value == 'home & garden') {
      subCategList = homeandgarden;
    } else if (value == 'beauty') {
      subCategList = beauty;
    } else if (value == 'kids') {
      subCategList = kids;
    } else if (value == 'bags') {
      subCategList = bags;
    }
    setState(() {
      mainCategValue = value!;
      // subCategValue = 'subcategory';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.grey.shade600,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 130,
                  ),
                  child: Text(' you have not \n \n picked images yet !'),
                ),
              ),
              Column(
                children: [
                  Text(
                    '* select main category',
                    style: TextStyle(color: Colors.red),
                  ),
                  DropdownButton(
                    iconSize: 40,
                    iconEnabledColor: Colors.red,
                    dropdownColor: Colors.yellow.shade400,
                    value: mainCategValue,
                    items: maincateg.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      selectedMainCateg(value);
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
