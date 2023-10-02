import 'package:flutter/material.dart';
import 'package:flutter_radio_app/constants/colors.dart';
import 'package:flutter_radio_app/models/radio.dart';

class CustomRadioListTile extends StatelessWidget {
  final RadioModel radio;
  final bool isPlaying;
  final Function() onTap;

  const CustomRadioListTile(
      {super.key,
      required this.radio,
      required this.isPlaying,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: radio.image?.trim().isEmpty ?? true
          ? const SizedBox(
              width: 44,
              height: 44,
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                radio.image!,
                height: 44,
                width: 44,
                fit: BoxFit.cover,
                errorBuilder: (context, obj, _) => const SizedBox(
                  width: 44,
                  height: 44,
                ),
              ),
            ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            radio.votes ?? "-",
            style: textTheme.bodyMedium
                ?.copyWith(color: isPlaying ? CustomColors.primary : null),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(radio.title ?? "No title Available"),
                Text(radio.subtitle ?? "No information available",
                    maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          )
        ],
      ),
      trailing: Image.asset("assets/more.png"),
    );
  }
}
