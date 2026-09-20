using uss.model;
using uss.ui.Services.Interface;

namespace uss.ui.Services
{
    public class CompanyService : ICompanyService
    {
        private readonly HttpClient _httpClient;
        public CompanyService(IHttpClientFactory factory)
        {
            _httpClient = factory.CreateClient("ussapi");            
        }

        public Company? Get()
        {
            return _httpClient.GetFromJsonAsync<Company>("company").Result;
        }
    }
}
