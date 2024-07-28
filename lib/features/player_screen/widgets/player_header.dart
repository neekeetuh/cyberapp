import 'package:cyberapp/repositories/players/models/models.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class PlayerHeader extends StatelessWidget {
  const PlayerHeader({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryColor.withOpacity(0.1)),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          ImageTemplate(image: AssetImage(player.photoUrl)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(player.nickname, style: const TextStyle(fontSize: 20),),
              Text('${player.firstName} ${player.lastName}')
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(children: [
              const Text('Current Team', style: TextStyle(fontSize: 12),),
              const SizedBox(height: 7,),
              ImageTemplate(image: AssetImage(player.team.logoUrl),width: 20,height: 20,)
            ],),
          )
        ],
      ),
    );
  }
}