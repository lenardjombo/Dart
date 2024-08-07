//     1.Constant Time
//A constant-time algorithm has the same running time regardless of the size of the input.
// The Big O notation for constant time is 0(1)

void main() {
  void checkFirst(List<String> names) {
    if (names.isNotEmpty) {
      print(names.first);
    } else {
      print('no names');
    }
  }

  checkFirst(['jombo', 'leonard', 'Duncan']);
}
//An algorithm that can repeatedly drop half of the  required 
//comparisons will have logarithmic time complexity.
//O(log n)
//Quasilinear time complexity nears a linear slope at 
//higher values