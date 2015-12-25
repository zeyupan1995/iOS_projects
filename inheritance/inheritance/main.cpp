//
//  main.cpp
//  inheritance
//
//  Created by Apple on 12/17/15.
//  Copyright © 2015 Pan. All rights reserved.
//


#include <iostream>
#include <string>
using namespace std;
class Shape
{
protected:
    string name;
public:
    Shape(string s)
    {name = s;}
    void setName(string s)
    {name = s;}
    string getName() const
    {return name;}
    virtual double getArea() const = 0;
};


class Circle : public Shape
{
    double radius;
public:
    Circle(string n, double r) : Shape(n)
    {radius = r;}
    void setRadius(double r)
    {radius = r;}
    double getRadius() const
    {return radius;}
     double getArea() const
    {return 3.1415 * radius * radius;}
};

class Rectangle : public Shape
{
    double length, width;
public:
    Rectangle(string n,double l,double w) : Shape(n)
    {length = l;width = w;}
    void setLength(double l)
    {length=l;}
    void setWidth(double w)
    {width=w;}
    double getLength()
    {return length;}
    double getWidth()
    {return width;}
     double getArea() const
    {return length * width;}
};

class Triangle : public Shape
{
    double base, width;
public:
    Triangle(string n, double b, double w) : Shape(n)
    {base = b; width = w;}
     double getArea() const
    {return base * width * .5;}
};

int main(int argc, const char * argv[])
{
    // insert code here...
   // Shape s("Feoo"); //can't establish it
    Circle c ("Circle", 3);
    cout<<c.getArea()<<endl;
    std::cout << "Hello, World!\n";
    
    Shape * shapes[3] = {new Circle("Circle",2.1),
        new Rectangle("Rectangle", 3.1, 1.2),
        new Triangle("Triangle",8.1,2.3)};
    for (int i=0; i<3; i++)
    {
        cout<<"Shape" << i << "area=" << shapes[i]->getArea()<<endl;
    }
    return 0;
}

















