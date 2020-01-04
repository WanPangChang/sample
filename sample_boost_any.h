#include <iostream>
#include <boost/any.hpp>
using namespace std;


class Interface 
{
public:
    template <typename T>
    void set(const T& value) {setImpl(boost::any(&value));}
    template <typename T>
    void get(T& value) const {getImpl(boost::any(&value));}
protected:
    void setImpl(const boost::any& value)
    {
        if (value.type() == typeid(const int*))
        {
            const int& pointer = *boost::any_cast<const int*>(value);
            i = pointer;
        }
    }
    void getImpl(boost::any&& value) const
    {
        if (value.type() == typeid(int*))
        {
            int& pointer = *boost::any_cast<int*>(value);
            pointer = i;
        }
    }
private:
    int i = 0;
};

int main() {
    int j = 0;
    Interface i;
    i.set(int(__LINE__));
    i.get(j);
    cout<<j<<"\n";

    return 0;
}
