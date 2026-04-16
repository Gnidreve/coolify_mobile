import 'database_form_page.dart';

class RedisDatabaseEditPage extends DatabaseFormPage {
  const RedisDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.redis, databaseUuid: databaseUuid);
}
