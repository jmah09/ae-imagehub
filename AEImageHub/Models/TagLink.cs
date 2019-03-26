using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class TagLink
    {
        public int TlinkId { get; set; }
        public string TagName { get; set; }
        public string IId { get; set; }

        [JsonIgnore]
        public Image I { get; set; }
        [JsonIgnore]
        public Tag TagNameNavigation { get; set; }
    }
}
