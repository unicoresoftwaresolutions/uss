using uss.business.Interface;
using uss.data.Interface;
using uss.entity;

namespace uss.business
{
    public class CompanyBusiness : ICompanyBusiness
    {
        private readonly ICompanyData data;
        public CompanyBusiness(ICompanyData companyData)
        {
            data = companyData;
        }
        public Company Get()
        {
            return data.Get();
        }
    }
}
