import 'package:supabase_flutter/supabase_flutter.dart';

class UserService {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<Map<String, dynamic>?> fetchUserDetails(String userId) async {
    try {
      final response = await supabase
          .from('users') // Your table name
          .select('*')
          .eq('user_id', userId) // Fetch details for the current user
          .single(); // Ensures only one user is returned

      return response;
    } catch (error) {
      print("Error fetching user details: $error");
      return null; // Return null if an error occurs
    }
  }

  Future<Map<String, dynamic>?> fetchservicedetails(String Category) async {
    try {
      final response = await supabase
          .from('service') // Your table name
          .select('*')
          .eq('name', Category) // Fetch details for the current user
          .single(); // Ensures only one user is returned

      return response;
    } catch (error) {
      print("Error fetching service details: $error");
      return null; // Return null if an error occurs
    }
  }
}
