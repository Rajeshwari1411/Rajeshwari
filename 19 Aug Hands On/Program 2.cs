﻿using System;
public class Exercise2
{
    public static void Main()
    {
        int num1, num2, num3;
        Console.Write("\n\n");
        Console.Write("Find the largest of three numbers:\n");
        Console.Write("------------------------------------");
        Console.Write("\n\n");

        Console.Write("Input the 1st number :");
        num1 = Convert.ToInt32(Console.ReadLine());
        Console.Write("Input the  2nd number :");
        num2 = Convert.ToInt32(Console.ReadLine());
        Console.Write("Input the 3rd  number :");
        num3 = Convert.ToInt32(Console.ReadLine());

        if (num1 > num2)
        {
            if (num1 > num3)
            {
                Console.Write("The 1st Number is the greatest number. \n\n");
            }
            else
            {
                Console.Write("The 3rd Number is the greatest number. \n\n");
            }
        }
        else if (num2 > num3)
            Console.Write("The 2nd Number is the greatest number. \n\n");
        else
            Console.Write("The 3rd Number is the greatest number. \n\n");
    }
}
