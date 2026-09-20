using uss.data.Interface;
using uss.entity;
using uss.model;

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
