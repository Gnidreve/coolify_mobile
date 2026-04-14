import 'database_form_page.dart';

class ClickHouseDatabasePage extends DatabaseFormPage {
  const ClickHouseDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.clickhouse);
}
