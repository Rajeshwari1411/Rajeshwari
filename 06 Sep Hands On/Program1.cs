﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Class_Lib
{
    
    
        public abstract class person
        {
            public abstract void work();

        }
        public class employees : person
        {


            public override void work()
            {
                Console.WriteLine("calling emplpoyee");
            }
        }
        public class manager : person
        {


            public override void work()
            {
                Console.WriteLine("calling manager");
            }
        }
        public class clerk : person
        {


            public override void work()
            {
                Console.WriteLine("calling clerk");
            }
        }
    
}
