import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/modules/event_logging/data/repositories/event_repository.dart';
import 'package:flutter_skeleton/modules/event_logging/domain/usecases/fetch_events_usecase.dart';
import 'package:flutter_skeleton/modules/event_logging/services/event_service.dart';
import 'package:flutter_skeleton/modules/event_logging/views/event_list_view.dart';
import 'package:flutter_skeleton/modules/home/bloc/home_bloc.dart';
import 'package:flutter_skeleton/modules/home/bloc/home_event.dart';
import 'package:flutter_skeleton/modules/home/bloc/home_state.dart';
import 'package:flutter_skeleton/modules/user_profile/views/user_profile_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  final EventService eventService = EventService(FetchEventsUseCase(EventRepository()));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc()..add(LoadHomeContent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is HomeLoaded) {
            currentIndex = state.selectedIndex;
          }

          return Scaffold(
            appBar: AppBar(title: const Text('Home')),
            body: IndexedStack(
              index: currentIndex,
              children: <Widget>[
                EventListView(eventService: eventService),
                const UserProfileScreen(),
              ],
            ),
            // bottomNavigationBar: BottomNavigationBar(
            //   items: const <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            //   ],
            //   currentIndex: currentIndex,
            //   selectedItemColor: Colors.amber[800],
            //   onTap: (index) => BlocProvider.of<HomeBloc>(context).add(NavigateToTab(index)),
            // ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => print('Floating Action Button Pressed'),
              tooltip: 'Add New Event',
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
