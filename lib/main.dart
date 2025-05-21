import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const QuoteOfTheDayScreen());
}

class QuoteOfTheDayScreen extends StatelessWidget {
  const QuoteOfTheDayScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFF3F4F6),
        appBar: AppBar(
          title: Text(
            "Daily Motivation",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0XFF0D47A1),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.format_quote_rounded,
                  size: 50.0,
                  color: Color(0XFF90A4AE),
                ),
                SizedBox(height: 16),
                Text(
                  current_quote,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontStyle: FontStyle.italic,
                    color: Color(0XFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Your quote for $formattedDate",
                  style: TextStyle(fontSize: 14, color: Color(0xFF757575)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Icon(
                  Icons.favorite_border,
                  size: 32.0,
                  color: Color(0xFF0D47A1),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<String> DailyQuotes = [
  "Believe in yourself and all that you are.",
  "You are stronger than you think.",

  "Every day is a second chance.",

  "Don’t watch the clock; do what it does. Keep going.",

  "Progress, not perfection.",

  "The secret of getting ahead is getting started.",

  "You’ve got this.",

  "Push yourself, because no one else is going to do it for you.",

  "Doubt kills more dreams than failure ever will.",

  "Small steps every day.",

  "Be the energy you want to attract.",

  "Don’t limit your challenges. Challenge your limits.",

  "Act as if what you do makes a difference. It does.",

  "Success is not for the lazy.",

  "Start where you are. Use what you have. Do what you can.",

  "Dream it. Wish it. Do it.",

  "Discipline is choosing between what you want now and what you want most.",

  "One day or day one. You decide.",

  "Your only limit is your mind.",

  "Great things never come from comfort zones.",

  "Stay hungry. Stay foolish.",

  "Do something today that your future self will thank you for.",

  "Make it happen. Shock everyone.",

  "The harder you work for something, the greater you’ll feel when you achieve it.",

  "Wake up with determination. Go to bed with satisfaction.",

  "Don’t quit. Suffer now and live the rest of your life as a champion.",

  "Success is what comes after you stop making excuses.",

  "If it’s important to you, you’ll find a way.",

  "Push harder than yesterday if you want a different tomorrow.",

  "You are capable of amazing things.",
];
final String formattedDate = DateFormat('MMMM d, y').format(DateTime.now());
int day = DateTime.now().day;
String current_quote = DailyQuotes[day];
