#include <iostream>
#include <string>
using namespace std;

int main() {

	string s, first, last;

	cout << "�Ʒ��� �� ���� �Է��ϼ���.(exit�� �Է��ϸ� �����մϴ�)" << endl;
	while (1) {
		cout << ">>";
		getline(cin, s);
		if (s == "exit") break;
		int len = s.size();
		for (int i = 0; i< len / 2; i++) {
			first = s.at(i);
			last = s.at(len - 1 - i);
			s.replace(i, 1, last);
			s.replace(len - 1 - i, 1, first);
		}
		cout << s << endl;
	}
}