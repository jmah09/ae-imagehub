using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Graph;
using Microsoft.Identity.Client;
using Newtonsoft.Json;
using System.Linq;
using Newtonsoft.Json.Linq;


namespace AEImageHub.Controllers
{
    [Authorize (Policy = "Admins")]
    [Route("api/graph")]
    public class GraphApiController : ControllerBase
    {
        private readonly GraphServiceClient _graphClient;

        private const string ClientId = "a42cbd10-bbd7-414f-b9f8-733274fea3c1";
        private const string ClientSecret = "j90fFmg7MZAqZkSVMrm1PyffNdVnxAAu7Nvp1H01YvE=";
        private const string RedirectUri = "http://localhost:5000";
        private const string Authority = "https://login.microsoftonline.com/80698aee-cfad-4328-9c3a-2c38a08a5ee2/v2.0";
        private readonly ConfidentialClientApplication _cca;
        private readonly List<string> _scopes = new List<string>();
        
        public GraphApiController()
        {
             _cca = new ConfidentialClientApplication(ClientId, Authority, RedirectUri, 
                new ClientCredential(ClientSecret), null, null);
            _scopes.Add("https://graph.microsoft.com/.default");   
            var authenticationProvider = new MsalAuthenticationProvider(_cca, _scopes.ToArray());
             _graphClient = new GraphServiceClient(authenticationProvider);

        }
        
        /**
         * GET
        API Endpoint: api/graph
        Description: Get users in azureAD as a json object
        Request Requirements:
        1. A valid JWT token of an admin user

        Server response and status code:
        Standard status code
         */
        [HttpGet]
        public object GetUsers()
        {
        return JsonConvert.SerializeObject(_graphClient.Users.Request().GetAsync().Result);
        }

        
        
        // function to make a user an admin
        // 202
        
        /**
         * Post
        API Endpoint: api/graph/:userPrincipalName
        Description: Make a non-admin user an admin
        Request Requirements:
        1. A valid JWT token of an admin user

        Server response and status code:
        202 - accepted
        400 - bad request : user is already an admin
         */
        [HttpPost("{userPrincipalName}")]
        public IActionResult EditUsers(string userPrincipalName)
        {
            const string adminGroup = "e76d7410-92be-4073-9709-2d8b737f1d44";
            var usersGroups = _graphClient.Users[userPrincipalName].MemberOf.Request().GetAsync().Result;
          
            if (!usersGroups.Any(g => g is Group && g.Id == adminGroup)){
                var user = _graphClient.Users[userPrincipalName].Request().Select("id").GetAsync().Result;
                 _graphClient.Groups[adminGroup].Members.References.Request().AddAsync(user);
                return Accepted();
            }
            return BadRequest("User is already an Admin");
        }
        
    }
}