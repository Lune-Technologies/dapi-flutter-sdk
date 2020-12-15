import 'package:flutter/services.dart';

class Channels {
  MethodChannel baseChannel = const MethodChannel('plugins.lune.ae/dapi');
  EventChannel eventsConnect =
      const EventChannel('plugins.lune.ae/dapi/connect');
}
