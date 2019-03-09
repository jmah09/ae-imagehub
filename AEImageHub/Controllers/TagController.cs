using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AEImageHub.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace AEImageHub.Controllers
{
    [Route("api/tag")]
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
        public Object GetTags()
        {
            return JsonConvert.SerializeObject(_context.Tag);
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
        [HttpPost("")]
        public void PostTag([FromBody] JObject payload)
        {
            Tag tag = new Tag()
            {
                TagName = (string)payload["TagName"],
                Description = (string)payload["Description"],
                Active = (bool)payload["Active"],
            };

            _context.Tag.Add(tag);
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
        [HttpPut("{tagname}")]
        public void PutTag(string tagname, [FromBody] JObject payload)
        {
            Tag tag = (Tag)_context.Tag.Where(t => t.TagName == tagname).First();
            tag.TagName = (string)payload["TagName"];
            tag.Description = (string)payload["Description"];
            tag.Active = (bool)payload["Active"];
            _context.SaveChanges();
        }
    }
}