#include <stdio.h>
#include <assert.h>

#include "types.h"
#include "scanner.h"
#include "parser.h"
#include "set.h"

void test_scanning(void)
{
    printf("======test scanning======\n");
}

void test_parsing(void)
{
    printf("======test parsing======\n");
}

int main(int argc, char **argv)
{
    hashmap_test();
    test_scanning();
    test_parsing();
    return 0;
}
