using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AEImageHub.Models
{
    public class User
    {
        public User()
        {
            Image = new HashSet<Image>();
        }

        public string user_name { get; set; }

        public ICollection<Image> Image { get; set; }
    }
}
