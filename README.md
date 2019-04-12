# AE-ImageHub Team NLGPSAG

## Runtime Environment
* .Net Core 2.1 (Back-end)
* npm with React 16.8.3 or above (Front-end)
* Azure Active Directory (Authentication)
* Microsoft SQL Server (Database)


## How To Run Image Hub
1. Clone repository
2. Install npm packages by running ```npm install``` in directory `\AEImageHub\ClientApp`
3. Set Azure Active Directory configurations in directory `\AEImageHub\ClientApp\src\adalConfig.js`
4. Set Azure Active Directory configurations and Microsoft SQL Server connection configurations in directory `AEImageHub\appsettings.json`
5. Run project on Visual Studio(recommended) or JetBrains Rider

## Setting Up Azure Active Directory
The porject is hosted on azure and uses AAD for authentication
1. Create an azure web app. [How to create an azure app](https://docs.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal).
2. Change the settings in `adalConfig.js` found in `\AEImageHub\ClientApp\src\adalConfig.js`. Check [react-adal](https://github.com/salvoravida/react-adal/blob/master/README.md) docs for more info.
3. Change the settings in `GraphApiController.cs` found in `\AEImageHub\Controllers` to match your app information 

# Admin Authorization Policies
1. Create an Admin group in AAD. [How to create a group](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal)
2. Get the group ID
3. Go to `AEImageHub\Startup.cs` and locate the comment ``// Authorization``
4. Replace the group ID inside the `policyBuilder` with the one you created

For more information read [here](https://blogs.msdn.microsoft.com/gianlucb/2017/10/27/azure-ad-and-group-based-authorization/).
## Live Website
https://aeimagehub.azurewebsites.net