#include <iostream>
using namespace std;

class Sample {
	int *p;
	int size;
public:
	Sample(int n) {
		size = n; p = new int[n];
	}
	void read();
	void write();
	int big();
	~Sample() { delete[] p; }
};
void Sample::read() {
	for (int i = 0; i<size; i++)
		cin >> p[i];
}
void Sample::write() {
	for (int i = 0; i<size; i++)
		cout << p[i] << ' ';
	cout << endl;
}
int Sample::big() {
	int big = p[0];
	for (int i = 1; i<size; i++)
		if (p[i] > big) big = p[i];
	return big;
}

int main() {
	Sample s(10);
	s.read();
	s.write();
	cout << "가장 큰 수는 " << s.big() << endl;
}