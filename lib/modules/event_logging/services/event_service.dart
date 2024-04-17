import 'package:flutter_skeleton/modules/event_logging/domain/entities/event_entity.dart';
import 'package:flutter_skeleton/modules/event_logging/domain/usecases/fetch_events_usecase.dart';

class EventService {
  final FetchEventsUseCase _fetchEventsUseCase;

  EventService(this._fetchEventsUseCase);

  Future<List<EventEntity>> fetchEvents() => _fetchEventsUseCase.execute();
}
