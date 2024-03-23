// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(v0) => "Error: ${v0}";

  static String m1(v0, v1) => "Download: ${v0}/s Upload: ${v1}/s";

  static String m2(v0) => "Downloaded: ${v0}";

  static String m3(v0) => "Download ... (${v0}%)";

  static String m4(v0) => "Status: ${v0}";

  static String m5(v1) => "Total size: ${v1}";

  static String m6(v0) => "Uploaded: ${v0}";

  static String m7(v2) => "In the verification ... (${v2})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_open_folder":
            MessageLookupByLibrary.simpleMessage("Open the folder"),
        "app_common_error_info": m0,
        "app_common_tip": MessageLookupByLibrary.simpleMessage("Tip"),
        "app_common_tip_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "app_common_tip_confirm":
            MessageLookupByLibrary.simpleMessage("Confirm"),
        "app_common_tip_i_know":
            MessageLookupByLibrary.simpleMessage("I understand"),
        "app_language_code": MessageLookupByLibrary.simpleMessage("en"),
        "app_language_name": MessageLookupByLibrary.simpleMessage("English"),
        "downloader_action_cancel_all":
            MessageLookupByLibrary.simpleMessage("Cancel all of them"),
        "downloader_action_cancel_download":
            MessageLookupByLibrary.simpleMessage("Cancel download"),
        "downloader_action_confirm_cancel_all_tasks":
            MessageLookupByLibrary.simpleMessage(
                "Confirm the cancellation of all tasks?"),
        "downloader_action_confirm_cancel_download":
            MessageLookupByLibrary.simpleMessage(
                "Confirm the cancellation download?"),
        "downloader_action_continue_download":
            MessageLookupByLibrary.simpleMessage("Continue download"),
        "downloader_action_options":
            MessageLookupByLibrary.simpleMessage("Option"),
        "downloader_action_pause_all":
            MessageLookupByLibrary.simpleMessage("All of the suspension"),
        "downloader_action_pause_download":
            MessageLookupByLibrary.simpleMessage("Pause download"),
        "downloader_action_resume_all":
            MessageLookupByLibrary.simpleMessage("Restore all"),
        "downloader_info_deleted":
            MessageLookupByLibrary.simpleMessage("Deleted"),
        "downloader_info_download_completed":
            MessageLookupByLibrary.simpleMessage("Download completed"),
        "downloader_info_download_failed":
            MessageLookupByLibrary.simpleMessage("Download failed"),
        "downloader_info_download_unit_input_prompt":
            MessageLookupByLibrary.simpleMessage(
                "Please enter the download unit."),
        "downloader_info_download_upload_speed": m1,
        "downloader_info_downloaded": m2,
        "downloader_info_downloading": m3,
        "downloader_info_downloading_status":
            MessageLookupByLibrary.simpleMessage("Downloading..."),
        "downloader_info_manual_file_deletion_note":
            MessageLookupByLibrary.simpleMessage(
                "If the file is no longer needed, you may need to delete the download file manually."),
        "downloader_info_no_download_tasks":
            MessageLookupByLibrary.simpleMessage("No download task"),
        "downloader_info_paused":
            MessageLookupByLibrary.simpleMessage("Paused"),
        "downloader_info_status": m4,
        "downloader_info_total_size": m5,
        "downloader_info_uploaded": m6,
        "downloader_info_verifying": m7,
        "downloader_info_waiting":
            MessageLookupByLibrary.simpleMessage("Waiting"),
        "downloader_input_download_speed_limit":
            MessageLookupByLibrary.simpleMessage("Download speed limit:"),
        "downloader_input_upload_speed_limit":
            MessageLookupByLibrary.simpleMessage("Upload speed limit:"),
        "downloader_settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "downloader_title_downloading":
            MessageLookupByLibrary.simpleMessage("Downloading"),
        "downloader_title_ended": MessageLookupByLibrary.simpleMessage("Over")
      };
}
