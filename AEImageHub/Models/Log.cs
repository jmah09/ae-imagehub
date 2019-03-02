using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class Log
    {
        public string LId { get; set; }
        public string UId { get; set; }
        public DateTime CreatedDate { get; set; }
        public string Log1 { get; set; }

        public User U { get; set; }
    }
}
