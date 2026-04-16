import 'database_form_page.dart';

class PostgreSqlDatabaseEditPage extends DatabaseFormPage {
  const PostgreSqlDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.postgresql, databaseUuid: databaseUuid);
}
