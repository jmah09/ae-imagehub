using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace AEImageHub.Repository
{
    public interface IImageWriter
    {
        string StoreImage(IFormFile file);
    }
}

