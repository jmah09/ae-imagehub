using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using AEImageHub.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Microsoft.EntityFrameworkCore;

namespace AEImageHub.Controllers
{
    [Authorize]
    [Route("api/search")]
    public class SearchController : ControllerBase
    {
        private readonly ihubDBContext _context;

        public SearchController(ihubDBContext context)
        {
            _context = context;
        }

        /*
        GET
        API Endpoint: api/search/[metadata]/:[keyword]
        Description: Searches images with [keyword] of [metadata]
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - search success server should return search results
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        */
        [HttpGet("image/{imagename}")]
        public Object GetImagesWithImagename(string imagename)
        {
            try
            {
                var images = _context.Image
                                .Where(i => i.ImageName == imagename && i.Submitted && !i.Trashed);

                return JsonConvert.SerializeObject(images);
            }
            catch (Exception e)
            {
                return e;
            }
        }

        [HttpGet("image/{imageid}")]
        public Object GetImageWithImageid(string imageid)
        {
            try
            {
                var images = _context.Image
                                .Where(i => i.IId == imageid && i.Submitted && !i.Trashed);

                return JsonConvert.SerializeObject(images);
            }
            catch (Exception e)
            {
                return e;
            }
        }

        [HttpGet("tag/{tagname}")]
        public Object GetImagesWithTagname(string tagname)
        {
            try
            {
                var taglink = _context.TagLink.Select(tl => new TagLink
                {
                    TlinkId = tl.TlinkId,
                    TagName = tl.TagName,
                    I = tl.I
                }).Where(tl => tl.TagName == tagname).ToList();

                var images = new List<Image>();
                foreach (var tl in taglink)
                {
                    if (tl.I.Submitted && !tl.I.Trashed)
                    {
                        images.Add(tl.I);
                    }
                }
                    return JsonConvert.SerializeObject(images);
            }
            catch (Exception e)
            {
                return e;
            }
        }

        [HttpGet("project/{projectname}")]
        public Object GetImagesWithProjectname(string projectname)
        {
            try
            {
                var projectlink = _context.ProjectLink.Select(pl => new ProjectLink
                {
                    PlinkId = pl.PlinkId,
                    ProjectName = pl.ProjectName,
                    I = pl.I
                }).Where(pl => pl.ProjectName == projectname).ToList();

                var images = new List<Image>();
                foreach (var pl in projectlink)
                {
                    if (pl.I.Submitted && !pl.I.Trashed)
                    {
                        images.Add(pl.I);
                    }
                }
                return JsonConvert.SerializeObject(images);
            }
            catch (Exception e)
            {
                return e;
            }
        }
        
        [HttpGet("user/{username}")]
        public Object GetImagesWithUsername(string username)
        {
            try
            {
                var users = _context.User.Select(u => new User
                {
                    UId = u.UId,
                    UserName = u.UserName,
                    Image = u.Image
                }).Where(u => u.UserName == username).ToList();

                var images = new List<Image>();
                foreach (var u in users)
                {
                    foreach (var i in u.Image)
                    {
                        if (i.Submitted && !i.Trashed)
                        {
                            images.Add(i);
                        }
                    }
                }
                return JsonConvert.SerializeObject(images);
            }
            catch (Exception e)
            {
                return e;
            }
        }
        
        [HttpGet("date/{udate}")]
        public Object GetImagesWithUploadedDate(string udate)
        {
            DateTime startDate = DateTime.Parse(udate.Substring(4, 2) + "/" + udate.Substring(6, 2) + "/" + udate.Substring(0,4));
            DateTime endDate = DateTime.Parse(udate.Substring(12, 2) + "/" + udate.Substring(14, 2) + "/" + udate.Substring(8, 4));
            
            try
            {
                var images = _context.Image.Where(i => i.UploadedDate >= startDate && i.UploadedDate <= endDate && i.Submitted && !i.Trashed);
                return JsonConvert.SerializeObject(images);
            }
            catch (Exception e)
            {
                return e;
            }
        }
    }
}