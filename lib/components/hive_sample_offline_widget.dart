import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HiveSampleOfflineWidget extends StatefulWidget {
  const HiveSampleOfflineWidget({Key? key}) : super(key: key);

  @override
  _HiveSampleOfflineWidgetState createState() => _HiveSampleOfflineWidgetState();
}

class _HiveSampleOfflineWidgetState extends State<HiveSampleOfflineWidget> {
  bool isOnline = true;
  List<dynamic> apiData = [];
  List<dynamic> hiveData = [];
  List<dynamic> filteredData = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadHiveData();
    searchController.addListener(_filterData);
  }

  void loadHiveData() {
    final box = Hive.box('dataBox');
    setState(() {
      hiveData = List<dynamic>.from(box.get('getSearchData', defaultValue: []));
      if (!isOnline) {
        filteredData = hiveData;
      }
    });
  }

  Future<void> syncData() async {
    try {
      final response = await http.post(
        Uri.parse('https://trainright.fit/getAuthority'),
        headers: {
          'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MmEzN2FjMzJmZTM1YzdlNGRiMjE0NiIsInJvbGUiOiJwcm9wZXJ0eURlYWxlciIsImlhdCI6MTcyMDg0OTAwNSwiZXhwIjoxNzIxMDIxODA1fQ.9nlbmZTMtr8fAKysblW4PwaEJ6SyNhPWxvBfqdZvnME',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "category": "PLOT",
          "properties": {
            "sectorNumber": ["DLF-1"]
          },
          "maps": {
            "size": ["502"]
          }
        }),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);

        // Log the response
        print('API Response: $data');

        if (data is List) {
          final box = Hive.box('dataBox');
          await box.put('getSearchData', data);
          setState(() {
            apiData = data;
            if (!isOnline) {
              filteredData = data;
            }
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Data synced successfully!'),
            ),
          );
        } else {
          print('Expected a list but got ${data.runtimeType}');
        }
      } else {
        // Handle error
        print('Failed to load data: ${response.statusCode}');
        print('Response body: ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to sync data. Please try again.'),
          ),
        );
      }
    } catch (e) {
      print('Error occurred: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred. Please check the console for details.'),
        ),
      );
    }
  }

  void _filterData() {
    final query = searchController.text.toLowerCase();
    setState(() {
      if (isOnline) {
        filteredData = apiData.where((item) {
          return item['plotNumber'].toString().toLowerCase().contains(query) ||
              item['sectorNumber'].toString().toLowerCase().contains(query) ||
              item['authority']['ownerName'].toString().toLowerCase().contains(query) ||
              item['authority']['phoneNumber'].toString().toLowerCase().contains(query) ||
              item['authority']['address'].toString().toLowerCase().contains(query);
        }).toList();
      } else {
        filteredData = hiveData.where((item) {
          return item['plotNumber'].toString().toLowerCase().contains(query) ||
              item['sectorNumber'].toString().toLowerCase().contains(query) ||
              item['authority']['ownerName'].toString().toLowerCase().contains(query) ||
              item['authority']['phoneNumber'].toString().toLowerCase().contains(query) ||
              item['authority']['address'].toString().toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Mode Functionality'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: syncData,
            child: Text('Sync Data'),
          ),
          Row(
            children: [
              Text('Mode:'),
              Radio(
                value: true,
                groupValue: isOnline,
                onChanged: (value) {
                  setState(() {
                    isOnline = value!;
                    _filterData();
                  });
                },
              ),
              Text('Online'),
              Radio(
                value: false,
                groupValue: isOnline,
                onChanged: (value) {
                  setState(() {
                    isOnline = value!;
                    loadHiveData(); // Ensure the latest data from Hive is loaded
                    _filterData();
                  });
                },
              ),
              Text('Offline'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: PaginatedDataTable(
                header: Text('Data Table'),
                columns: [
                  DataColumn(label: Text('Plot Number')),
                  DataColumn(label: Text('Sector Number')),
                  DataColumn(label: Text('Owner Name')),
                  DataColumn(label: Text('Phone Number')),
                  DataColumn(label: Text('Address')),
                ],
                source: DataTableSourceImpl(filteredData),
                rowsPerPage: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataTableSourceImpl extends DataTableSource {
  final List<dynamic> data;

  DataTableSourceImpl(this.data);

  @override
  DataRow getRow(int index) {
    final item = data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(item['plotNumber'].toString())),
      DataCell(Text(item['sectorNumber'].toString())),
      DataCell(Text(item['authority']['ownerName'].toString())),
      DataCell(Text(item['authority']['phoneNumber'].toString())),
      DataCell(Text(item['authority']['address'].toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => data.length;
  @override
  int get selectedRowCount => 0;
}
