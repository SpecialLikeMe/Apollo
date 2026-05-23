int sum_to(int limit) {
    int total = 0;
    while (limit > 0) {
        total = total + limit;
        limit = limit - 1;
    }
    return total;
}

int main() {
    int answer = sum_to(10);
    if (answer == 55) {
        return 0;
    }
    return 1;
}