import 'package:flutter/material.dart';

class EditProfileBirthDateItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EditProfileBirthDateItemState();
}

class EditProfileBirthDateItemState extends State<EditProfileBirthDateItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         "Birth Date",
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DropdownButtonFormField<String>(
                value: '28',
                items: List.generate(31, (i) => '${i + 1}')
                    .map(
                      (day) => DropdownMenuItem(value: day, child: Text(day)),
                    )
                    .toList(),
                onChanged: (val) {},
                decoration: InputDecoration(labelText: 'Day'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: DropdownButtonFormField<String>(
                value: 'September',
                items:
                    [
                          'January',
                          'February',
                          'March',
                          'April',
                          'May',
                          'June',
                          'July',
                          'August',
                          'September',
                          'October',
                          'November',
                          'December',
                        ]
                        .map(
                          (month) => DropdownMenuItem(
                            value: month,
                            child: Text(month),
                          ),
                        )
                        .toList(),
                onChanged: (val) {},
                decoration: InputDecoration(labelText: 'Month'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: DropdownButtonFormField<String>(
                value: '2000',
                items: List.generate(40, (i) => '${1980 + i}')
                    .map(
                      (year) =>
                          DropdownMenuItem(value: year, child: Text(year)),
                    )
                    .toList(),
                onChanged: (val) {},
                decoration: InputDecoration(labelText: 'Year'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
