import 'package:monoholy/model/player.dart';
import 'package:monoholy/model/property_model.dart';

class Offer {
  final Player receiver;
  final Player giver;
  final PropertyModel offeredProperty;
  final PropertyModel wantedProperty;
  final int offeredMoney;
  final int wantedMoney;

  Offer(
      {this.offeredProperty,
      this.wantedProperty,
      this.offeredMoney,
      this.wantedMoney,
      this.receiver,
      this.giver});
}
