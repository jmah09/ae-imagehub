
using System.Collections.Generic;
using System.Linq;
using AEImageHub.Models;
using Microsoft.AspNetCore.Mvc;

namespace AEImageHub.Controllers
{
    
    [Route("api/user")]
    [ApiController]
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
        public IEnumerable<Image> GetUserImages(string userid)
        {
            var images = _context.Image.Where(i => i.UId == userid);
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
        public User GetUserProfile(string userid)
        {
            User user = (User) _context.User.Where(i => i.UId == userid);
            return user; //user's profile
        }

        /* POST
        API Endpoint: api/user/:user_id
        Description: Creates user profile(Admin only)
        Request Requirements:
        1. User JWT in header field
        2. Body containing user data

        Server response and status code:
        201 - User profile creation was successful
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to create user profile
        */

        [HttpPost("{userid}")]
        public void PostProfile([FromBody] string value)
        {
            User user = new User()
            {
            };

            _context.User.Add(user);
            _context.SaveChanges();
        }

        /* PUT
        API Endpoint: api/user/:user_id/profile
        Description: Modifies user profile
        Request Requirements:
        1. User JWT in header field
        2. Body containing the modified data

        Server response and status code:
        200 - User profile modification was successful 
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        403 - user not authorized to modify user's profile
        */

        [HttpPut("{userid}/profile")]
        public void PutProfile(string userid)
        {
            User user = (User) _context.User.Where(i => i.UId == userid);
            user.UserName = "Steve";
            _context.SaveChanges();
        }
    }
}

