import 'package:flutter/material.dart';
import 'package:weather_application/helper/weather_helper.dart';

Widget windDirectionGrid({required Size size}) => Container(
      height: size.height * 0.18,
      width: size.width * 0.43,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.wind_power_rounded),
            const Text(
              "Wind Direction",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "${WeatherApi.instance.weatherList[1]['wind_dir']}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
