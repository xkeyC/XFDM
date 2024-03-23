// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get app_language_name {
    return Intl.message(
      'English',
      name: 'app_language_name',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get app_language_code {
    return Intl.message(
      'en',
      name: 'app_language_code',
      desc: '',
      args: [],
    );
  }

  /// `Error: {v0}`
  String app_common_error_info(Object v0) {
    return Intl.message(
      'Error: $v0',
      name: 'app_common_error_info',
      desc: '',
      args: [v0],
    );
  }

  /// `Tip`
  String get app_common_tip {
    return Intl.message(
      'Tip',
      name: 'app_common_tip',
      desc: '',
      args: [],
    );
  }

  /// `I understand`
  String get app_common_tip_i_know {
    return Intl.message(
      'I understand',
      name: 'app_common_tip_i_know',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get app_common_tip_confirm {
    return Intl.message(
      'Confirm',
      name: 'app_common_tip_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get app_common_tip_cancel {
    return Intl.message(
      'Cancel',
      name: 'app_common_tip_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get downloader_settings {
    return Intl.message(
      'Settings',
      name: 'downloader_settings',
      desc: '',
      args: [],
    );
  }

  /// `All of the suspension`
  String get downloader_action_pause_all {
    return Intl.message(
      'All of the suspension',
      name: 'downloader_action_pause_all',
      desc: '',
      args: [],
    );
  }

  /// `Restore all`
  String get downloader_action_resume_all {
    return Intl.message(
      'Restore all',
      name: 'downloader_action_resume_all',
      desc: '',
      args: [],
    );
  }

  /// `Cancel all of them`
  String get downloader_action_cancel_all {
    return Intl.message(
      'Cancel all of them',
      name: 'downloader_action_cancel_all',
      desc: '',
      args: [],
    );
  }

  /// `No download task`
  String get downloader_info_no_download_tasks {
    return Intl.message(
      'No download task',
      name: 'downloader_info_no_download_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Total size: {v1}`
  String downloader_info_total_size(Object v1) {
    return Intl.message(
      'Total size: $v1',
      name: 'downloader_info_total_size',
      desc: '',
      args: [v1],
    );
  }

  /// `In the verification ... ({v2})`
  String downloader_info_verifying(Object v2) {
    return Intl.message(
      'In the verification ... ($v2)',
      name: 'downloader_info_verifying',
      desc: '',
      args: [v2],
    );
  }

  /// `Download ... ({v0}%)`
  String downloader_info_downloading(Object v0) {
    return Intl.message(
      'Download ... ($v0%)',
      name: 'downloader_info_downloading',
      desc: '',
      args: [v0],
    );
  }

  /// `Status: {v0}`
  String downloader_info_status(Object v0) {
    return Intl.message(
      'Status: $v0',
      name: 'downloader_info_status',
      desc: '',
      args: [v0],
    );
  }

  /// `Uploaded: {v0}`
  String downloader_info_uploaded(Object v0) {
    return Intl.message(
      'Uploaded: $v0',
      name: 'downloader_info_uploaded',
      desc: '',
      args: [v0],
    );
  }

  /// `Downloaded: {v0}`
  String downloader_info_downloaded(Object v0) {
    return Intl.message(
      'Downloaded: $v0',
      name: 'downloader_info_downloaded',
      desc: '',
      args: [v0],
    );
  }

  /// `Option`
  String get downloader_action_options {
    return Intl.message(
      'Option',
      name: 'downloader_action_options',
      desc: '',
      args: [],
    );
  }

  /// `Continue download`
  String get downloader_action_continue_download {
    return Intl.message(
      'Continue download',
      name: 'downloader_action_continue_download',
      desc: '',
      args: [],
    );
  }

  /// `Pause download`
  String get downloader_action_pause_download {
    return Intl.message(
      'Pause download',
      name: 'downloader_action_pause_download',
      desc: '',
      args: [],
    );
  }

  /// `Cancel download`
  String get downloader_action_cancel_download {
    return Intl.message(
      'Cancel download',
      name: 'downloader_action_cancel_download',
      desc: '',
      args: [],
    );
  }

  /// `Open the folder`
  String get action_open_folder {
    return Intl.message(
      'Open the folder',
      name: 'action_open_folder',
      desc: '',
      args: [],
    );
  }

  /// `Download: {v0}/s Upload: {v1}/s`
  String downloader_info_download_upload_speed(Object v0, Object v1) {
    return Intl.message(
      'Download: $v0/s Upload: $v1/s',
      name: 'downloader_info_download_upload_speed',
      desc: '',
      args: [v0, v1],
    );
  }

  /// `Downloading...`
  String get downloader_info_downloading_status {
    return Intl.message(
      'Downloading...',
      name: 'downloader_info_downloading_status',
      desc: '',
      args: [],
    );
  }

  /// `Waiting`
  String get downloader_info_waiting {
    return Intl.message(
      'Waiting',
      name: 'downloader_info_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Paused`
  String get downloader_info_paused {
    return Intl.message(
      'Paused',
      name: 'downloader_info_paused',
      desc: '',
      args: [],
    );
  }

  /// `Download failed`
  String get downloader_info_download_failed {
    return Intl.message(
      'Download failed',
      name: 'downloader_info_download_failed',
      desc: '',
      args: [],
    );
  }

  /// `Download completed`
  String get downloader_info_download_completed {
    return Intl.message(
      'Download completed',
      name: 'downloader_info_download_completed',
      desc: '',
      args: [],
    );
  }

  /// `Deleted`
  String get downloader_info_deleted {
    return Intl.message(
      'Deleted',
      name: 'downloader_info_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Downloading`
  String get downloader_title_downloading {
    return Intl.message(
      'Downloading',
      name: 'downloader_title_downloading',
      desc: '',
      args: [],
    );
  }

  /// `Over`
  String get downloader_title_ended {
    return Intl.message(
      'Over',
      name: 'downloader_title_ended',
      desc: '',
      args: [],
    );
  }

  /// `Confirm the cancellation of all tasks?`
  String get downloader_action_confirm_cancel_all_tasks {
    return Intl.message(
      'Confirm the cancellation of all tasks?',
      name: 'downloader_action_confirm_cancel_all_tasks',
      desc: '',
      args: [],
    );
  }

  /// `If the file is no longer needed, you may need to delete the download file manually.`
  String get downloader_info_manual_file_deletion_note {
    return Intl.message(
      'If the file is no longer needed, you may need to delete the download file manually.',
      name: 'downloader_info_manual_file_deletion_note',
      desc: '',
      args: [],
    );
  }

  /// `Confirm the cancellation download?`
  String get downloader_action_confirm_cancel_download {
    return Intl.message(
      'Confirm the cancellation download?',
      name: 'downloader_action_confirm_cancel_download',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the download unit.`
  String get downloader_info_download_unit_input_prompt {
    return Intl.message(
      'Please enter the download unit.',
      name: 'downloader_info_download_unit_input_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Upload speed limit:`
  String get downloader_input_upload_speed_limit {
    return Intl.message(
      'Upload speed limit:',
      name: 'downloader_input_upload_speed_limit',
      desc: '',
      args: [],
    );
  }

  /// `Download speed limit:`
  String get downloader_input_download_speed_limit {
    return Intl.message(
      'Download speed limit:',
      name: 'downloader_input_download_speed_limit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
