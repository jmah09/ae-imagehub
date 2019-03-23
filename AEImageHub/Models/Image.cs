using System;
using System.Collections.Generic;

namespace AEImageHub.Models
{
    public partial class Image
    {
        public Image()
        {
            ProjectLink = new HashSet<ProjectLink>();
            TagLink = new HashSet<TagLink>();
        }

        public string Iid { get; set; }
        public string Uid { get; set; }
        public string ImageName { get; set; }
        public int Size { get; set; }
        public DateTime UploadedDate { get; set; }
        public string Type { get; set; }
        public bool Trashed { get; set; }
        public DateTime? TrashedDate { get; set; }
        public bool Submitted { get; set; }

        public User U { get; set; }
        public ICollection<ProjectLink> ProjectLink { get; set; }
        public ICollection<TagLink> TagLink { get; set; }
    }
}
