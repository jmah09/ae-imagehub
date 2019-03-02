using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AEImageHub.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AEImageHub.Controllers
{
    [Route("api/tag")]
    [ApiController]
    public class TagController : ControllerBase
    {
        private readonly ihubDBContext _context;

        public TagController(ihubDBContext context)
        {
            _context = context;
        }

        /*
        GET
        API Endpoint: api/tag/
        Description: Get list of tags
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - Tag retrieve was successful server should return tag list
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        */
        [HttpGet("")]
        public IEnumerable<Tag> GetTags()
        {
            return _context.Tag.ToList(); //user's images
        }

        /*
        POST
        API Endpoint: api/tag
        Description: Creates tag(Admin only)
        Request Requirements:
        1. User JWT in header field
        2. Admin credentials

        Server response and status code:
        201 - Tag creation was successful
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to create tag
        */
        [HttpPost("{userid}/profile")]
        public void PostProfile([FromBody] string value)
        {
            User user = new User()
            {
            };

            _context.User.Add(user);
            _context.SaveChanges();
        }

        /*
        PUT
        API Endpoint: api/tag/:tag_name
        Description: Modifies user profile
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - Project modification was successful 
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to modify tag
        */
        [HttpPut("{userid}/profile")]
        public void PutProfile(string userid)
        {
            User user = (User)_context.User.Where(i => i.UId == userid);
            user.UserName = "Steve";
            _context.SaveChanges();
        }
    }
}