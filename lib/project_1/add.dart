import 'package:flutter/material.dart';

class AddDonors extends StatefulWidget {
  const AddDonors({super.key});

  @override
  State<AddDonors> createState() => _AddDonorsState();
}

class _AddDonorsState extends State<AddDonors> {
  final bloodGroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  String? selectedGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Donors'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Donor Name'),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Phone Number'),
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              decoration:
                  const InputDecoration(label: Text('Select Blood Group')),
              items: bloodGroups
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: (val) {
                selectedGroup = val;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 50),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {},
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
