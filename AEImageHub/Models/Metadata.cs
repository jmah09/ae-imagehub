using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class Metadata
    {
        public string MetaName { get; set; }
        public bool Active { get; set; }
        public bool Mandatory { get; set; }
    }
}
