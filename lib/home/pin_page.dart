import 'package:flutter/material.dart';
import 'package:patrol_cursor_issue/widget/pin_widget.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _HomePageState();
}

class _HomePageState extends State<PinPage> {
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Pin Page'),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: PinWidget(pinController: pinController),
    );
  }
}
