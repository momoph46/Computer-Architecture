int AddDigits(int num){
	int ans;
	while (num >= 10) {
		ans = 0;
		while (num != 0) {
			ans = ans + (num % 10);
			num = num / 10;
		}
		num = ans;
	}
	return num;
}
    