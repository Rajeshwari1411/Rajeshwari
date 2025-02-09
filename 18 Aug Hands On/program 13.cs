﻿using System;
class Program
{
    static void Main()
    {
        double m1 = 200;
        Console.WriteLine("Meter   ::    Kilometer");
        double k1 = Exercise13.cMtK(m1);
        Console.WriteLine("{0}     ::    {1}", m1, k1);
        double m4 = 3107;
        double k4 = Exercise13.cMtK(m4);
        Console.WriteLine("{0}   ::     {1}", m4, k4);
        double k3 = 5.1;
        Console.WriteLine();
        Console.WriteLine("Kilometer     ::     Meter");
        double m3 = Exercise13.cKtM(k3);
        Console.WriteLine("{0}           ::     {1}", k3, m3);
        double k2 = 3.219;
        double m2 = Exercise13.cKtM(k2);
        Console.WriteLine("{0}         ::    {1}", k2, m2);
        Console.Read();
    }
}

public static class Exercise13
{
    public static double cMtK(double meters)
    {
        return meters / 1000;
    }

    public static double cKtM(double kilometers)
    {
        return kilometers * 1000;
    }
}


