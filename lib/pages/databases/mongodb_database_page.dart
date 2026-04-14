import 'database_form_page.dart';

class MongoDbDatabasePage extends DatabaseFormPage {
  const MongoDbDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.mongodb);
}
