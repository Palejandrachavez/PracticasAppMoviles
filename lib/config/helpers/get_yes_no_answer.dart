import 'package:dio/dio.dart';
import 'package:practicaappmovilesu2/infrastructure/models/yes_no_model.dart';
import 'package:practicaappmovilesu2/domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('http://yesno.wtf/api');
    final YesNoModel ynmodel = YesNoModel.fromJson(response.data);
    return ynmodel.toMessageEntity();
  }
}
