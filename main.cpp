#include "smart_terminate.h"

void failFunction(void)
{
    // classical fail
    throw std::invalid_argument("fail");
}

int main(void)
{
    failFunction();

    return 0;
}
