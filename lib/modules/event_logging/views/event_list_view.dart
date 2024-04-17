import 'package:flutter/material.dart';
import 'package:flutter_skeleton/modules/event_logging/domain/entities/event_entity.dart';
import 'package:flutter_skeleton/modules/event_logging/services/event_service.dart';

class EventListView extends StatelessWidget {
  final EventService eventService;

  const EventListView({required this.eventService});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventEntity>>(
      future: eventService.fetchEvents(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final event = snapshot.data![index];
              return ListTile(
                title: Text(event.description),
                subtitle: Text('${event.user.name} at ${event.details.location}'),
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(event.description),
                    content: Text('Hosted by: ${event.user.name}\nLocation: ${event.details.location}\nTime: ${event.details.time}\nDetails: ${event.details.description}'),
                  ),
                ),
              );
            },
          );
        }
        return const Center(child: Text("No events found."));
      },
    );
  }
}
