using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;

namespace AEImageHub.Repository.Image
{
    public interface IImage
    {
        void GetData();

        Task<IActionResult> UploadImage(IFormFile file);
    }
}
