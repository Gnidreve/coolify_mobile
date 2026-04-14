import 'database_form_page.dart';

class RedisDatabasePage extends DatabaseFormPage {
  const RedisDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.redis);
}
