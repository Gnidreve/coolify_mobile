import 'database_form_page.dart';

class ClickHouseDatabaseEditPage extends DatabaseFormPage {
  const ClickHouseDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.clickhouse, databaseUuid: databaseUuid);
}
