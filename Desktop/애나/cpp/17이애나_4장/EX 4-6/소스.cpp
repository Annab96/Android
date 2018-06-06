//4장
#include <iostream>
using namespace std;

class Circle {
	int radius;
public:
	void setRadius(int radius);
	double getArea();
};
void Circle::setRadius(int radius) {
	this->radius = radius;
}
double Circle::getArea() {
	return radius * radius * 3.14;
}

int main() {
	int num; int r; int count = 0;

	cout << "원의 개수 >> ";
	cin >> num;
	Circle *c = new Circle[num];

	for (int i = 0; i<num; i++) {
		cout << "원 " << i + 1 << "의 반지름 >> ";
		cin >> r;
		(c + i)->setRadius(r);
	}
	for (int i = 0; i<num; i++)
		if ((c + i)->getArea() > 100) count++;

	cout << "면적이 100보다 큰 원은 " << count << "개 입니다" << endl;

	delete[] c;
}