// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// A library for integrating AI-powered chat functionality into Flutter
/// applications.
///
/// This library provides a set of tools and widgets to easily incorporate AI
/// language models into your Flutter app, enabling interactive chat experiences
/// with various AI providers.
///
/// Key components:
/// - LLM providers: Interfaces and implementations for different AI services.
/// - Chat UI: Ready-to-use widgets for displaying chat interfaces.
library;

export 'src/llm_exception.dart';
export 'src/providers/interface/chat_message.dart';
export 'src/providers/providers.dart';
export 'src/styles/styles.dart';
export 'src/views/llm_chat_view/llm_chat_view.dart';

// custom
export 'src/views/llm_chat_view/llm_response.dart';
// custom input
export 'src/chat_view_model/chat_view_model.dart';
export 'src/chat_view_model/chat_view_model_provider.dart';
export 'src/views/chat_input/attachments_view.dart';
export 'src/views/chat_input/text_or_audio_input.dart';
export 'src/views/chat_input/attachments_action_bar.dart';
export 'src/views/chat_input/input_button.dart';
export 'src/views/chat_input/input_state.dart';
export 'src/dialogs/adaptive_snack_bar/adaptive_snack_bar.dart';


