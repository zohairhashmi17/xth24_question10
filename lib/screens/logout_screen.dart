
import 'package:flutter/material.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                upperBody(),
                const SizedBox(height: 28,),
                lowerBody()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget upperBody () {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(color: Colors.deepOrangeAccent, width: 5),
              color: Colors.black
          ),
          child: const Center(
            child: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 12,),
        const Text(
          "John Doe",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
        const SizedBox(height: 12,),
        const Text(
            "john.doe@example.com",
          style: TextStyle(
              fontSize: 20
          ),
        ),
        const SizedBox(height: 20,),
        const UpgradeButton(),
      ],
    );
  }

  Widget lowerBody () {
    return Column(
      children: const [
        GreyButton(icon: Icons.privacy_tip_outlined, title: "Privacy"),
        SizedBox(height: 12,),
        GreyButton(icon: Icons.history, title: "Purchase History"),
        SizedBox(height: 12,),
        GreyButton(icon: Icons.help_outline_outlined, title: "Help & Support "),
        SizedBox(height: 12,),
        GreyButton(icon: Icons.settings, title: "Settings"),
        SizedBox(height: 12,),
        GreyButton(icon: Icons.add_call, title: "Invite a Friend"),
        SizedBox(height: 12,),
        LogoutButton()
      ],
    );

  }

}


class UpgradeButton extends StatelessWidget {
  const UpgradeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.deepOrangeAccent
      ),
      child: const Center(
        child: Text(
          "Upgrade to PRO",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
      ),
    );
  }
}

class GreyButton extends StatelessWidget {
  final IconData icon;
  final String title;
  const GreyButton({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.grey.withOpacity(0.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              const SizedBox(width: 12,),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          const Icon(Icons.chevron_right_outlined),
        ],
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.black
      ),
      child: const Center(
        child: Text(
          "Logout",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20, 
              color: Colors.white
          ),
        ),
      ),
    );
  }
}


