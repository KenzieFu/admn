import 'package:flutter/material.dart';

class MainSearchCardItemWidget extends StatelessWidget {
  const MainSearchCardItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(18),
          width: 220,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: 200.0,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Indoor"),
                        Text("Cactus Lily"),
                        Text("Price"),
                        Text("\$30.00")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor:
                          const Color(0xFFD5FFD0)),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF0C356A),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}