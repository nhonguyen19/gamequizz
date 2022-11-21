import 'package:flutter/material.dart';

import 'currentGameInformation.dart';

Row gameInfoRow({
  required int currentBalanceValue,
  required int currentQustionNumber,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // first column for balance title and balance data
      currentGameInfo(title: 'Game', info: '$currentBalanceValue Xu'),
      // second column for question number title and question number
      currentGameInfo(
          title: 'Câu hỏi: ', info: '$currentQustionNumber'),
    ],
  );
}
