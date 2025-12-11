import 'package:flutter_clean_architecture/data/network/network.dart';

abstract class BaseRepository {
  final Network network;
  BaseRepository(this.network);
}
