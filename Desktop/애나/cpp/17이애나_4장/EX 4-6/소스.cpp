//4��
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

	cout << "���� ���� >> ";
	cin >> num;
	Circle *c = new Circle[num];

	for (int i = 0; i<num; i++) {
		cout << "�� " << i + 1 << "�� ������ >> ";
		cin >> r;
		(c + i)->setRadius(r);
	}
	for (int i = 0; i<num; i++)
		if ((c + i)->getArea() > 100) count++;

	cout << "������ 100���� ū ���� " << count << "�� �Դϴ�" << endl;

	delete[] c;
}