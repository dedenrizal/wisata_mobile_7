import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/models/destination_model.dart';

class KulinerCard extends StatelessWidget {
  final TravelDestination destination;
  const KulinerCard({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      child: Row(
        children: [
          Container(
            height: 85,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(destination.image![0]),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  destination.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: "NunitoSans",
                  ),
                ),
                Text(
                  '''(Description kuliner)''',
                  style: TextStyle(fontSize: 8),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                /*Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                      size: 14,
                    ),
                    Text(
                      destination.location,
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),*/
                const SizedBox(
                  height: 5,
                ),

                //Rating tempat rekomendasi
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellow[800],
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${destination.rate} ",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: "(${destination.review} reviews)",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          /*Column(
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Rp${destination.price}K",
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: blueTextColor),
                    ),
                    TextSpan(
                      text: "/Orang",
                      style: TextStyle(
                          fontSize: 10, color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            ],
          )*/
        ],
      ),
    );
  }
}
