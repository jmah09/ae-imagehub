using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class Log
    {
        public string LId { get; set; }
        public string UId { get; set; }
        public DateTime CreatedDate { get; set; }
        public string LogFile { get; set; }

        public User U { get; set; }
    }
}
