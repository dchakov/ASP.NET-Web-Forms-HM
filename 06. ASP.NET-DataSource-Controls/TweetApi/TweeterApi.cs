using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace TweetApi
{
    public class TweeterApi
    {
        public DataTable GetAllFiles()
        {
            DataTable dt = new DataTable();
            try
            {
                using (StreamReader sr = new StreamReader("tweets.json"))
                {
                    string line = sr.ReadToEnd();
                    dt = (DataTable)JsonConvert.DeserializeObject(line, (typeof(DataTable)));
                }
            }
            catch (Exception ex)
            {
            }
           
            return dt;
        }
    }
}