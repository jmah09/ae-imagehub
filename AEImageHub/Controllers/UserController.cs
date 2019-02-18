
using System.Collections.Generic;
using System.Linq;
using AEImageHub.Models;
using Microsoft.AspNetCore.Mvc;

namespace AEImageHub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {

        private readonly ImageContext _context;


        public UserController(ImageContext context)
        {
            _context = context;
        }


        // GET: api/User/:userid/images
        [HttpGet("{userid}/images")]
        public IEnumerable<Image> Get(string userid)
        {
            var images = _context.Image.Where(i => i.UId == userid);
            return images.ToList();
        }

        /*
        // GET: api/User/5
        [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/User
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/User/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
        */
    }
}

