// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

/// Signature for a function that builds a widget to display an LLM chat response.
///
/// This builder is used to render a single [ChatMessage] in the chat interface,
/// typically representing a message from a language model (LLM).
///
/// Parameters:
/// - [context]: The build context, used to access theme and other inherited widgets.
/// - [chatStyle]: Defines the overall visual style of the chat view.
/// - [message]: The [ChatMessage] object containing the content and metadata of the response.
///
/// Returns:
/// A [Widget] that visually represents the given LLM chat message in the UI.
typedef ResponseBuilder = Widget Function(
  BuildContext context,
  LlmChatViewStyle chatStyle,
  ChatMessage message,
);
