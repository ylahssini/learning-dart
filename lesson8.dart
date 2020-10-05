enum Status {
  pending,
  processed,
  stopped,
}

class Machine {
  num times;
  String message;
  Status _status;

  Machine(this.times, this.message, this._status);

  processing() {
    if (_status.index == 0) {
      for (var i = 0; i < times; i++) {
        print('${i + 1}. $message');
      }
    } else if (_status.index == 1) {
      print('Processed');
    } else if (_status.index == 2) {
      print('stopped');
    }
  }

  set status(value) => _status = value;
}

void main() {
  Machine colaris = new Machine(10, 'Salam word', Status.pending);
  colaris.processing();

  colaris.status = Status.stopped;
  colaris.processing();
}