using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using uss.business.Interface;
using uss.entity;

namespace uss.service.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CompanyController : ControllerBase
    {
        private ICompanyBusiness business;
        public CompanyController(ICompanyBusiness business) { this.business = business; }
        [HttpGet]
        public Company get()
        {
            return business.Get();
        }
    }
}
