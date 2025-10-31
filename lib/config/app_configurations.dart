import 'package:supabase_flutter/supabase_flutter.dart';

class AppConfigurations {
  static String rootURL = 'https://nodeportfolio-production.up.railway.app';
  static String authToken = '';
  static Future<void> init() async {
    await Supabase.initialize(
      url: "https://ktmizpmvpdlerdlenctj.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt0bWl6cG12cGRsZXJkbGVuY3RqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAzOTgxNjQsImV4cCI6MjA2NTk3NDE2NH0.gT6j9Pxpk-oOdJBAsQyZHrqqXyr-taltKw_iXhPmK64",
    );
  }
}
