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
        public string iId { get; set; }
        public string uId { get; set; }
        public string image_name { get; set; }
        public Int32 size { get; set; }
        public DateTime uploaded_date { get; set; }
        public string type { get; set; }
        public bool trashed { get; set; }
        public DateTime? trashed_date { get; set; }
        public bool submitted { get; set; }
    }
}
