#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 比較関数：文字列の比較を行う
long long int compare(const void *a, const void *b) {
    char char_a = *(const char *)a;
    char char_b = *(const char *)b;
    return char_a - char_b;
}

// 入力された数値の桁を並び替えて最も小さい数を作る関数
long long int smallestPossibleNumber(unsigned long long int number) {
    char str[100]; // 数値を文字列として格納する配列
    sprintf(str, "%llu", number); // 数値を文字列に変換

    // 文字列をソート
    qsort(str, strlen(str), sizeof(char), compare);

    // 最初の桁が0の場合は、0以外の最初の桁に移動する
    if (str[0] == '0') {
        unsigned long long int i;
        for (i = 1; i < strlen(str); i++) {
            if (str[i] != '0') {
                char temp = str[0];
                str[0] = str[i];
                str[i] = temp;
                break;
            }
        }
    }

    // ソートされた文字列を数値に変換して返す
    return atoi(str);
}

int main() {
    unsigned long long int number;
    scanf("%llu", &number);

    unsigned long long int result = smallestPossibleNumber(number);
    printf("%llu", result);

    return 0;
}
