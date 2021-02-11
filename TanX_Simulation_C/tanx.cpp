#include <iostream>
#define _USE_MATH_DEFINES
#include <math.h>
#include <iomanip>
int main()
{
    std::cout << std::setprecision(10) << std::fixed;
    double angle;
    double anglebegin;
    std::cout << "Nhap angle(Deg): ";
    std::cin >> angle;
    anglebegin = angle;
    angle = angle * M_PI/180;
    std::cout << "\n";
    int count = 0;
    double array[30];
    for (int index = 0; index < 30; index++)
    {
        switch (index)
        {
        case 0:
            array[0] = atan(pow(10, -count));
            break;
        case 1:
            array[1] = atan(pow(10, -count));
            break;
        case 2:
            array[2] = atan(pow(10, -count));
            break;
        case 3:
            array[3] = atan(pow(10, -count));
            break;
        default:
            array[index] = pow(10, -count);
            break;
        }
        count++;
    }
    // for(int z = 0; z < 30; z++)
    // {
    //     std::cout << "gia tri tai " << z << ": " << array[z] << "\n";
    // }
    double X = 1, Y = 0;
    int i = 0;
    int z = 0;
    double k, tp;
    while (i != 7)
    {
        if (angle > array[i])
        {
            do
            {
                k = pow(10, -i);
                angle = angle - array[i];
                tp = X - k * Y;
                Y = Y + k * X;
                X = tp;
                z++;
            } while (angle > array[i]);
        }
        i++;
    }
    std::cout << "tan(" << anglebegin << ") la: " << Y/X;
    std::cout << std::endl << z;
    return 0; 
}
