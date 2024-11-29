import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/account/addbiodata4.dart';

class Addbiodata3 extends StatefulWidget {
  @override
  State<Addbiodata3> createState() => _Addbiodata3State();
}

class _Addbiodata3State extends State<Addbiodata3> {
  String selectedAddressType = 'Permanent Address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kSecondaryColor,
          elevation: 0,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('Address & Family Details',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'golo',
                    color: kPrimaryColor)),
            const SizedBox(
              height: 22,
            ),
            const Text('Address Save As',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'golo',
                    color: blackcolour)),
            _buildAddressSaveAs(),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Number Of Brothers',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'golo',
                            color: kPrimaryColor)),
                    const SizedBox(height: 7),
                    DropdownButtonHideUnderline(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text('Select'),
                          items: <String>['0', '1', '2', '3', '4', '5']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Sisters',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'golo',
                            color: kPrimaryColor)),
                    const SizedBox(height: 7),
                    DropdownButtonHideUnderline(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton<String>(
                          hint: const Text('Select'),
                          items: <String>['0', '1', '2', '3', '4', '5']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text('About Family',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'golo',
                    color: kPrimaryColor)),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Enter Email Address',
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 15),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Addbiodata4()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  child: const Text(
                    'Submit And Next',
                    style: TextStyle(color: Colors.white, fontFamily: "golo"),
                  ),
                ),
         
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressSaveAs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio(
                  value: 'Permanent Address',
                  activeColor: kPrimaryColor,
                  groupValue: selectedAddressType,
                  onChanged: (value) {
                    setState(() {
                      selectedAddressType = value.toString();
                    });
                  },
                ),
                Text(
                  'Permanent Address',
                  style: TextStyle(
                      color: selectedAddressType == 'Permanent Address'
                          ? kPrimaryColor
                          : grey1),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Current Address',
                  activeColor: kPrimaryColor,
                  groupValue: selectedAddressType,
                  onChanged: (value) {
                    setState(() {
                      selectedAddressType = value.toString();
                    });
                  },
                ),
                Text(
                  'Current Address',
                  style: TextStyle(
                      color: selectedAddressType == 'Current Address'
                          ? kPrimaryColor
                          : grey1),
                ),
              ],
            ),
          ],
        ),
        // const SizedBox(height: 20),
        Row(
          children: [
            Radio(
              value: 'Other Address',
              activeColor: kPrimaryColor,
              groupValue: selectedAddressType,
              onChanged: (value) {
                setState(() {
                  selectedAddressType = value.toString();
                });
              },
            ),
            Text(
              'Other Address',
              style: TextStyle(
                  color: selectedAddressType == 'Other Address'
                      ? kPrimaryColor
                      : grey1),
            ),
          ],
        ),
      ],
    );
  }
}
