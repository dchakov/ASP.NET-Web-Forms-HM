namespace World.Client
{
    using Data;
    using System.Linq;
    using System;

    public class Program
    {
        public static void Main()
        {
            WorldDbContext data = new WorldDbContext();
            data.Continents.Count();
            Console.WriteLine("World database created, now you can use database first aproach");
        }
    }
}
