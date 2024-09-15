import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sarpras_app_float_techtonics/transaction/transaction_list.dart'; // Untuk format tanggal

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String? selectedRoom;
  String? selectedEquipment;
  DateTimeRange? selectedDateRange;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  final List<String> rooms = [
    'Center Of Excellence II Lt. 3',
    'Ruang Kelas B',
    'Lab Komputer',
    'Auditorium'
  ];
  final List<String> equipment = [
    'Proyektor',
    'Speaker',
    'Laptop',
    'Kabel HDMI'
  ];

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? pickedDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
      initialDateRange: selectedDateRange ??
          DateTimeRange(
            start: DateTime.now(),
            end: DateTime.now().add(const Duration(days: 1)),
          ),
    );
    if (pickedDateRange != null && pickedDateRange != selectedDateRange) {
      setState(() {
        selectedDateRange = pickedDateRange;
      });
    }
  }

  Future<void> _selectTimeRange(BuildContext context) async {
    final TimeOfDay? pickedStartTime = await showTimePicker(
      context: context,
      initialTime: startTime ?? TimeOfDay.now(),
    );
    if (pickedStartTime != null) {
      final TimeOfDay? pickedEndTime = await showTimePicker(
        context: context,
        initialTime: pickedStartTime.replacing(hour: pickedStartTime.hour + 1),
      );
      if (pickedEndTime != null) {
        setState(() {
          startTime = pickedStartTime;
          endTime = pickedEndTime;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text(
          "Form Peminjaman Sarpras",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Mulish'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: ListView(
          children: [
            _buildLabel("Ruangan Yang Dipinjam"),
            _buildDropdown(
              selectedValue: rooms[0],
              items: rooms,
              onChanged: (String? newValue) {
                setState(() {
                  selectedRoom = newValue;
                });
              },
            ),
            const SizedBox(height: 10),
            _buildLabel("Nama Kegiatan"),
            _buildTextField("Masukkan Nama Kegiatan"),
            const SizedBox(height: 10),
            _buildLabel("Jumlah Peserta"),
            _buildTextField("Masukkan Jumlah Peserta",
                inputType: TextInputType.number),
            const SizedBox(height: 10),
            _buildLabel("Tanggal Pelaksanaan (Range)"),
            _buildDateRangePicker(context),
            const SizedBox(height: 10),
            _buildLabel("Waktu Pelaksanaan (Range)"),
            _buildTimeRangePicker(context),
            const SizedBox(height: 10),
            _buildLabel("Perlengkapan Yang Dipinjam"),
            _buildDropdown(
              selectedValue: selectedEquipment,
              items: equipment,
              onChanged: (String? newValue) {
                setState(() {
                  selectedEquipment = newValue;
                });
              },
            ),
            const SizedBox(height: 10),
            _buildLabel("Nomor HP"),
            _buildTextField("Masukkan Nomor HP",
                inputType: TextInputType.phone),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                openPage(const TransactionListPage(), context);
              },
              child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(),
                  decoration: const BoxDecoration(
                    color: Color(0xff2E6EEF),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: const Center(
                    child: Text(
                      "Simpan",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Mulish',
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText,
      {TextInputType inputType = TextInputType.text}) {
    return Focus(
      child: Builder(
        builder: (context) {
          final hasFocus = Focus.of(context).hasFocus;
          return TextField(
            keyboardType: inputType,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: hasFocus
                      ? const Color(0xff2E6EEF)
                      : Colors.grey, // Warna saat fokus
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(fontFamily: 'Mulish'),
          );
        },
      ),
    );
  }

  Widget _buildDropdown({
    required String? selectedValue,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return Focus(
      child: Builder(
        builder: (context) {
          final hasFocus = Focus.of(context).hasFocus;
          return DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: hasFocus
                      ? const Color(0xff2E6EEF)
                      : Colors.grey, // Warna saat fokus
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            value: selectedValue,
            onChanged: onChanged,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: const TextStyle(fontFamily: 'Mulish')),
              );
            }).toList(),
          );
        },
      ),
    );
  }

  // Widget untuk date range picker
  Widget _buildDateRangePicker(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: selectedDateRange != null
            ? '${DateFormat('dd/MM/yyyy').format(selectedDateRange!.start)} - ${DateFormat('dd/MM/yyyy').format(selectedDateRange!.end)}'
            : "Pilih Rentang Tanggal",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _selectDateRange(context),
        ),
      ),
      style: const TextStyle(fontFamily: 'Mulish'),
    );
  }

  // Widget untuk time range picker
  Widget _buildTimeRangePicker(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: startTime != null && endTime != null
            ? '${startTime!.format(context)} - ${endTime!.format(context)}'
            : "Pilih Rentang Waktu",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        suffixIcon: IconButton(
          icon: const Icon(Icons.access_time),
          onPressed: () => _selectTimeRange(context),
        ),
      ),
      style: const TextStyle(fontFamily: 'Mulish'),
    );
  }
}
