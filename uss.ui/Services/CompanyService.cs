using uss.model;

namespace uss.ui.Services
{
    public class CompanyService(HttpClient httpClient) 
    {
        public Company? Get()
        {
            return httpClient.GetFromJsonAsync<Company>("company").Result;
        }
    }
}
