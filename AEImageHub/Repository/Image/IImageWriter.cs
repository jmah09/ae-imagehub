using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace AEImageHub.Repository.Image
{
    public interface IImageWriter
    {
        Task<string> UploadImage(IFormFile file);
    }
}

