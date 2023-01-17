#include <iostream>
#include <string>
#include <cstdint>
#include <sstream>
#include <iomanip>

int main()
{
    {
        uint64_t i = 0x1234567890abcdef;
        std::stringstream ss;
        ss << std::hex << std::setfill('0') << std::setw(16) << (i >> 4);
        std::cout << ss.str() << '\n';
    }
    {
        std::stringstream ss;
        std::string s = "01234567890abcde";
        ss << std::hex << std::setfill('0') << std::setw(16) << s;
        uint64_t o{};
        ss >> o;
        std::cout << std::hex << std::setfill('0') << std::setw(16) << o << '\n';
    }
}
