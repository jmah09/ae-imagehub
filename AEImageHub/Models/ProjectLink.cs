using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class ProjectLink
    {
        public int PlinkId { get; set; }
        public string ProjectName { get; set; }
        public string Iid { get; set; }

        public Image I { get; set; }
        public Project ProjectNameNavigation { get; set; }
    }
}
