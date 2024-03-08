// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:luxe_desires/app/constants/tokens.dart';

class Event {
  String id;
  String title;
  String imageUrl;
  String rating;
  Event({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
  });
}

class Events extends GetxController {
  List<Event> _events = [
    // Event(
    //   id: '2',
    //   title: 'Cricket Match',
    //   imageUrl:
    //       'https://images.unsplash.com/photo-1601456713871-996c8765d82c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJlYWNoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    //   rating: '4.9',
    // ),
    // Event(
    //   id: '22',
    //   title: 'Concert',
    //   imageUrl:
    //       'https://images.unsplash.com/photo-1601456713871-996c8765d82c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJlYWNoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    //   rating: '4.9',
    // ),
    // Event(
    //   id: '21',
    //   title: 'Badmition',
    //   imageUrl:
    //       'https://images.unsplash.com/photo-1601456713871-996c8765d82c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJlYWNoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    //   rating: '4.9',
    // ),
    // Event(
    //   id: '23',
    //   title: 'Trip and Tour',
    //   imageUrl:
    //       'https://images.unsplash.com/photo-1601456713871-996c8765d82c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJlYWNoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    //   rating: '4.9',
    // ),
  ];

  List<Event> get events {
    return [..._events];
  }

  //-------------------------------fetch and set events----------------------

  Future<void> fetchAndSetEvents() async {
    List<Event> tempEvents = [];
    final url = Uri.parse(
        'https://www.eventbriteapi.com/v3/organizations/$organizationId/events/');

    if (kDebugMode) {
      print(url);
    }

    final response =
        await http.get(url, headers: {'Authorization': 'Bearer $privateKey'});

    var extractedData = json.decode(response.body) as Map<String, dynamic>;

    var extractedEvents = extractedData['events'] as List<dynamic>;

    for (var e in extractedEvents) {
      tempEvents.add(
        Event(
          id: e['id'],
          title: e['name']['text'],
          imageUrl: e['logo']['url'],
          rating: '4.9',
        ),
      );
    }
    _events = tempEvents;

    log(response.body);
  }
}
