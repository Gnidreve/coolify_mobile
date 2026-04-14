import 'database_form_page.dart';

class MySqlDatabasePage extends DatabaseFormPage {
  const MySqlDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.mysql);
}
