
using System;
using System.Collections.Generic;
using System.Linq;
using AEImageHub.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace AEImageHub.Controllers
{
    [Authorize]
    [Route("api/user")]
    public class UserController : ControllerBase
    {

        private readonly ihubDBContext _context;

        public UserController(ihubDBContext context)
        {
            _context = context;
        }

        /* GET
        API Endpoint: api/user/:user_id/images
        Description: Retrieves the list of images that belongs to the user
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - User image retrieve was successful server should return a list of image links
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to view user images
        */

        [HttpGet("{userid}/images")]
        public Object GetUserImages(string userid)
        {
            //TODO: currently the other users can access others palette 
            try
            {
                var images = _context.Image.Where(i => i.UId == userid && !i.Trashed && !i.Submitted);
                return images.ToList(); //user's images
            }
            catch(Exception e)
            {
                return e;
            }
        }

        [HttpGet("{userid}/images/trashed")]
        public IEnumerable<Image> GetUserTrashedImages(string userid)
        {
            var images = _context.Image.Where(i => i.UId == userid && i.Trashed);
            return images.ToList(); //user's images
        }

        /* GET
        API Endpoint: api/user/:user_id
        Description: Retrieves user profile
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - User profile retrieve was successful server should return user profile
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to view user's profile
        */

        [HttpGet("{userid}")]
        public Object GetUser(string userid)
        {
            return JsonConvert.SerializeObject(_context.User.Where(i => i.UId == userid).First());
        }

        /*
        GET
        API Endpoint: api/user/
        Description: Retrieves the list of all user profile
        Request Requirements:
        1. User JWT in header field
        2. Admin credentials
        Server response and status code:
        200 - User profile retrieve was successful server should return a list of user profile
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to view users’ profiles
        */
        [HttpGet("")]
        public Object GetUsers()
        {
            return JsonConvert.SerializeObject(_context.User);
        }

        /* POST
        API Endpoint: api/user/
        Description: Creates user profile(Admin only)
        Request Requirements:
        1. User JWT in header field
        2. Body containing user data

        Server response and status code:
        201 - User profile creation was successful
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to create user profile
        */

        [HttpPost("")]
        public void PostUser([FromBody] JObject payload)
        {
            User user = new User()
            {
                UId = (string)payload["UId"],
                UserName = (string)payload["UserName"],
                Role = (string)payload["Role"],
                Active = (bool)payload["Active"],
            };
            _context.User.Add(user);
            _context.SaveChanges();
        }

        /* PUT
        API Endpoint: api/user/:user_id
        Description: Modifies user profile
        Request Requirements:
        1. User JWT in header field
        2. Body containing the modified data

        Server response and status code:
        200 - User profile modification was successful 
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to modify user's profile
        */

        [HttpPut("{userid}")]
        public void PutUser(string userid, [FromBody] JObject payload)
        {
            User user = (User)_context.User.Where(u => u.UId == userid).First();
            user.UId = (string)payload["UId"];
            user.UserName = (string)payload["UserName"];
            user.Role = (string)payload["Role"];
            user.Active = (bool)payload["Active"];
            _context.SaveChanges();
        }
    }
}

