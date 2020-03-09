import 'package:clock_example/example.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

void main() {
  test('calculation works for DST', () {
    // The use of fakeAsync here allows the initialTime to set the 
    // value returned by clock.now() in the daysFromNow method. 
    fakeAsync((testAsync) {
      var example = ClockExample();
      expect(example.daysFromNow(DateTime(2020, 3, 9)), 1);
    }, initialTime: DateTime(2020, 3, 8));
  });
}
