import 'package:flutter_skeleton/core/base/repository.dart';
import 'package:flutter_skeleton/modules/event_logging/domain/entities/event_details.dart';
import 'package:flutter_skeleton/modules/event_logging/domain/entities/event_entity.dart';
import 'package:flutter_skeleton/core/models/user.dart';

class EventRepository implements Repository<EventEntity> {
  @override
  Future<List<EventEntity>> getAll() async {
    // Mock data fetching and conversion to domain entities
    return [
      EventEntity(
        id: '1',
        description: 'Event description',
        user: const User(id: '1', name: 'John Doe'),
        details: EventDetails(
          location: 'Event location',
          time: DateTime.now(),
          description: 'Event details', id: '',
        ),
      ),
      EventEntity(
        id: '2',
        description: 'Event description',
        user: const User(id: '2', name: 'Jane Doe'),
        details: EventDetails(
          location: 'Event location',
          time: DateTime.now(),
          description: 'Event details', id: '',
        ),
      ),
    ];
  }

  @override
  Future<EventEntity> getById(String id) async {
    // Mock fetching a single event by ID
    return EventEntity(
      id: '1',
      description: 'Event description',
      user: const User(id: '1', name: 'John Doe'),
      details: EventDetails(
        location: 'Event location',
        time: DateTime.now(),
        description: 'Event details', id: '',
      ),
    );
  }
}
