import 'package:flutter/material.dart';
import 'package:social_ui/bottom_bar/models/transaction_history_model.dart';

class TransactionHistoryItem extends StatefulWidget {
  final String? searchText;

  const TransactionHistoryItem({super.key,  this.searchText});

  @override
  State<StatefulWidget> createState() => TransactionHistoryItemState();
}

class TransactionHistoryItemState extends State<TransactionHistoryItem> {
  late List<TransactionHistoryModel> _localTransactionData;

  @override
  void initState() {
    super.initState();
    _localTransactionData = List.from(transactionHistoryData);
  }

  @override
  Widget build(BuildContext context) {
    final keyword = (widget.searchText ?? '').toLowerCase();
    final filteredData = _localTransactionData.where((item) {
      return item.title.toLowerCase().contains(keyword) ||
          item.category.toLowerCase().contains(keyword);
    }).toList();

    return ListView.separated(
      scrollDirection: Axis.vertical,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: filteredData.length,
      itemBuilder: (context, index) {
        final transactionHistory = filteredData[index];
        return TextButton(
          onLongPress: () => _showDeleteDialog(index),
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    transactionHistory.iconPath,
                    width: 18,
                    height: 18,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionHistory.title,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(height: 3),
                      Text(
                        transactionHistory.category,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFFA2A2A7),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "- \$5.99",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showDeleteDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Xóa Giao Dịch"),
          content: Text("Bạn có chắc muốn xóa giao dịch này không"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Hủy"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _localTransactionData.removeAt(index);
                });
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Text("Xóa", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
