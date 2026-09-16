using uss.data.Interface;
using uss.entity;

namespace uss.data
{
    public class CompanyData : ICompanyData
    {
        private readonly DBUSSContext db;
        public CompanyData(DBUSSContext db) 
        { 
            this.db = db;
        }

        public Company Get()
        {
            return db.Company.FirstOrDefault();
        }
    }
}
