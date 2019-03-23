using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class TagLink
    {
        public int TlinkId { get; set; }
        public string TagName { get; set; }
        public string IId { get; set; }

        public Image I { get; set; }
        public Tag TagNameNavigation { get; set; }
    }
}
