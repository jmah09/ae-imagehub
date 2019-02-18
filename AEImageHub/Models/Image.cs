using AEImageHub.Repository;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AEImageHub.Models
{

    public partial class Image
    {
        public string IId { get; set; }
        public string UId { get; set; }
        public string ImageName { get; set; }
        public Int32 Size { get; set; }
        public DateTime UploadedDate { get; set; }
        public string Type { get; set; }
        public bool Trashed { get; set; }
        public DateTime? TrashedDate { get; set; }
        public bool Submitted { get; set; }

        public User User { get; set; }
    }
}