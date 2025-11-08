import 'package:jamai_sdk/client.dart';
import 'package:jamai_sdk/types/common.dart';
import 'package:jamai_sdk/types/gen_tables.dart';

final JamaiApiClient jamai = JamaiApiClient(
  apiKey: 'jamai_pat_379f6b1e8a7b9f0732a476fc0c145c297ca67bf907c34455',
  baseUrl: 'http://localhost:6969',
  projectId: 'proj_bee957b5881f35e120909510',
);

final String tableId = 'tester';

void main() async {
  final MultiRowAddRequest request = MultiRowAddRequest(
    tableId: tableId,
    stream: true,
    data: [
      {'input': 'why use dhl tell me in 1000 words please'},
      {'input': 'malaydia or indian curry is better?'},
    ],
  );

  final response = jamai.generativeTable.addRows(TableType.action, request);

  // handle the stream value
  await for (final value in response) {
    print('generated: ');
    switch (value) {
      case CellCompletionResponse cellCompletion:
        print('cell completion response');
        print(cellCompletion.choices[0].message?.content);
      case CellReferencesResponse():
        print(' cell references response');
      case MultiRowCompletionResponse():
        print('multirow completionResponse');
        throw UnimplementedError();
    }
  }

  final MultiRowAddRequest noStreamRequest = MultiRowAddRequest(
    tableId: tableId,
    stream: false,
    data: [
      {
        'input':
            'hi bro tell me how can i make roti canai at home as a beginner in not less 200 words please',
      },
    ],
  );

  final noStreamResponse = jamai.generativeTable.addRows(
    TableType.action,
    noStreamRequest,
  );

  await for (final value in noStreamResponse) {
    print('no stream response');
    print(value);
  }
}
