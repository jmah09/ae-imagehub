using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class Log
    {
        public string Lid { get; set; }
        public string Uid { get; set; }
        public DateTime CreatedDate { get; set; }
        public string LogFile { get; set; }

        public User U { get; set; }
    }
}
