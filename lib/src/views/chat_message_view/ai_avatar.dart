import 'package:flutter/material.dart';

import '../../../flutter_ai_toolkit.dart';
import '../../chat_view_model/chat_view_model_client.dart';

/// A small AI avatar widget that displays an icon representing the current AI model.
///
/// This widget reads styling and icon data from the associated [ChatViewModelClient],
/// and adapts its appearance based on the resolved chat and LLM styles.
///
/// Typically used in chat bubbles or headers to identify AI-generated messages visually.
class AIAvatar extends StatelessWidget {
  /// Creates an [AIAvatar] widget.
  ///
  /// This widget is stateless and reactive to changes in the [ChatViewModelClient].
  const AIAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatViewModelClient(
      builder: (context, viewModel, child) {
        // Resolve chat and LLM-specific styles
        final chatStyle = LlmChatViewStyle.resolve(viewModel.style);
        final llmStyle = LlmMessageStyle.resolve(chatStyle.llmMessageStyle);

        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 20,
            width: 20,
            decoration: llmStyle.iconDecoration,
            child: Icon(
              llmStyle.icon,
              color: llmStyle.iconColor,
              size: 12,
            ),
          ),
        );
      },
    );
  }
}
