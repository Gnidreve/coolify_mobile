import 'database_form_page.dart';

class PostgreSqlDatabasePage extends DatabaseFormPage {
  const PostgreSqlDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.postgresql);
}
