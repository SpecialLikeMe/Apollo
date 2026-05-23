int gcd(int left, int right) {
    while (right != 0) {
        int next = left % right;
        left = right;
        right = next;
    }
    return left;
}

int main() {
    if (gcd(84, 18) == 6) {
        return 0;
    }
    return 1;
}