import 'package:flutter/material.dart';

class NotificationUI extends StatelessWidget {
  const NotificationUI({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: ListView(
        children: const <Widget>[
          NotificationCard(
            title: 'New message',
            message: 'You have a new message from John.',
            time: '12:30 PM',
            icon: Icons.message,
          ),
          NotificationCard(
            title: 'New email',
            message: 'You have a new email from Jane.',
            time: '11:45 AM',
            icon: Icons.email,
          ),
          NotificationCard(
            title: 'Reminder',
            message: 'Don\'t forget to submit your report by 5 PM today.',
            time: '10:00 AM',
            icon: Icons.alarm,
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final IconData icon;
  const NotificationCard({
    Key? key,
    required this.title,
    required this.message,
    required this.time,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(message),
        trailing: Text(time),
      ),
    );
  }
}
