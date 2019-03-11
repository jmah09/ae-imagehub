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

namespace AEImageHub.Controllers
{
    [Authorize]
    [Route("api/log")]
    public class LogController : ControllerBase
    {
        private readonly ihubDBContext _context;

        public LogController(ihubDBContext context)
        {
            _context = context;
        }

        /*
        GET
        API Endpoint: api/log/
        Description: Get list of logs
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - Log retrieve was successful server should return log data
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        */
        [HttpGet("")]
        public Object GetLogs()
        {
            return JsonConvert.SerializeObject(_context.Log);
        }

        /*
        GET
        API Endpoint: api/log/:log_id
        Description: Get the log mode by idl
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        200 - Log retrieve was successful server should return log data
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        */

        [HttpGet("{logid}")]
        public Object Getlog(string logid)
        {
            return JsonConvert.SerializeObject(_context.Log.Where(l => l.LId == logid).First());
        }

        /*
        POST
        API Endpoint: api/log
        Description: Creates log
        Request Requirements:
        1. User JWT in header field

        Server response and status code:
        201 - Log creation was successful
        401 - the JWT attached to the header is invalid or expired(should redirect to login)
        */
        [HttpPost("")]
        public void PostLog([FromBody] JObject payload)
        {
            Log log = new Log()
            {
                LId = (string)payload["LId"],
                UId = (string)payload["UId"],
                CreatedDate = (DateTime)payload["CreatedDate"],
                Log1 = (string)payload["Log1"]
            };

            _context.Log.Add(log);
            _context.SaveChanges();
        }
    }
}