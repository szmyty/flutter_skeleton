
import 'package:flutter_skeleton/modules/event_logging/data/repositories/event_repository.dart';
import 'package:flutter_skeleton/modules/event_logging/domain/entities/event_entity.dart';

class FetchEventsUseCase {
  final EventRepository _repository;

  FetchEventsUseCase(this._repository);

  Future<List<EventEntity>> execute() async {
    return _repository.getAll();
  }
}
