using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using AEImageHub.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Security.Claims;
using AEImageHub.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.Graph;
using Newtonsoft.Json.Linq;
using Image = AEImageHub.Models.Image;

namespace ImageServer.Controllers
{
    [Authorize]
    [Route("api/submit")]
    public class SubmissionController : Controller
    {
        private readonly ihubDBContext _context;
 
    
        public SubmissionController(ihubDBContext context, IImageRepository repo)
        {
            _context = context;
        }
   
        /*
        Post
        API Endpoint: api/image/:image_id
        Description: Submits images to a project
        */
        [HttpPost("")]
        public Object SubmitImage([FromBody] Submission submission)
        {
            Log dbLog = GenerateLog(submission.Images.Count.ToString() + " images submitted");
            List<Image> images = new List<Image>();

            try
            {
                _context.Add(dbLog);
                _context.SaveChanges();
            }
            catch (Exception e)
            {
                Console.Write(e);
                return BadRequest("malform request log");
            }

            foreach (string imageid in submission.Images)
            {
                try
                {
                    Image image = (Image) _context.Image.Where(i => i.IId == imageid).First();
                    image.Submitted = true;
                    ProjectLink dbProjectLink = GenerateProjectLink(image, submission.Project);
                    LogLink dbLogLink = GenerateLogLink(image, dbLog);

                    _context.Add(dbLogLink);
                    _context.Add(dbProjectLink);
                    _context.SaveChanges();
                }
                catch (Exception e)
                {
                    Console.Write(e);
                    return BadRequest("malform request project");
                }
            }
            return Ok();
        }

        private ProjectLink GenerateProjectLink(Image image, string projectName)
        {
            return new ProjectLink()
            {
                ProjectName = projectName,
                IId = image.IId
            };
        }

        private Log GenerateLog(string logContext)
        {
            string[] uuid = Guid.NewGuid().ToString().Split("-");
            return new Log()
            {
                LId = "log_" + uuid[uuid.Length-1],
                UId = HttpContext.User.FindFirstValue("http://schemas.microsoft.com/identity/claims/objectidentifier"),
                CreatedDate =  DateTime.Now,
                LogFile = logContext
            };
        }

        private LogLink GenerateLogLink(Image image, Log log)
        {
            return new LogLink()
            {
                IId = image.IId,
                LId = log.LId
            };
        }    
    }
}

