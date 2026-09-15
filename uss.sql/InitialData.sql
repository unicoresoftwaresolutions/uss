

if not exists (select 1 from Company)
begin
 INSERT INTO [dbo].[Company]
           ([Name]
		   ,[OpeningAt]
           ,[PhoneNo]
           ,[EMailId]
           ,[Location]
           ,[WorkingHours])
     VALUES
           ('Unicore Software Solutions'
           ,'2026/08/03'
           ,'+91 82200 20227'
           ,'info@unicoresoftwaresolutions.com'
           ,'India'
           ,'Monday – Saturday, 9:00 AM – 9:00 PM')
end

if not exists (select 1 from Technology)
begin

    insert into Technology values
    ('C#',1)
    ,('SQL',2)
    ,('node.js',3)
    ,('React',4)
    ,('MAUI',5)
    ,('ML.net',6)
    ,('Python',7)
    ,('Docker',8);

end

if not exists (select 1 from Projects)
begin

 INSERT INTO [dbo].[Projects]
           ([Name]
           ,[Description]
           ,[Category]
           ,[Icon]
           ,[OrderNo]
           ,[IsActive])
     VALUES
           ('Retail Commerce Platform'
           ,'Point-of-sale, billing, inventory and business reporting solution.'
           ,'Retail & Billing'
           ,'bi bi-cart-check'
           ,1
           ,1)

           ,('Yarn Dealer and Distributor Management System'
           ,'Order, stock, customer, supplier and yarn agency workflow management.'
           ,'Textile Industry'
           ,'bi bi-box-seam'
           ,2
           ,1)

           
           ,('Restaurant POS & Operations'
           ,'Orders, tables, menu, kitchen, billing and restaurant operations.'
           ,'Food & Hospitality'
           ,'bi bi-shop'
           ,3
           ,1)

           ,('Union Commission Management'
           ,'Member, transaction, commission, settlement and reporting management.'
           ,'Commission Operations'
           ,'bi bi-people'
           ,4
           ,1)

           ,('Temple Administration & Operations'
           ,'Devotee, donation, pooja, booking, events and administration management.'
           ,'Temple Administration'
           ,'bi bi-building'
           ,5
           ,1)

           ,('Homeopathic Healthcare Operations'
           ,'Patient, doctor, appointment, prescription and clinic workflow management.'
           ,'Healthcare'
           ,'bi bi-heart-pulse'
           ,6
           ,1)

end


if not exists (select 1 from SocialMediaLink)
begin
    INSERT INTO [dbo].[SocialMediaLink]
           ([Name]
           ,[Link]
           ,[Icon]
           ,[OrderNo]
           ,[IsActive])
     VALUES
           ('linkedin'
           ,'https://www.linkedin.com/in/unicoresoftwaresolutions/'
           ,'bi bi-linkedin'
           ,1
           ,1)

		   ,('facebook'
           ,'https://www.facebook.com/unicoresoftwaresolutions/'
           ,'bi bi-facebook'
           ,2
           ,1)

		   ,('instagram'
           ,'https://www.instagram.com/unicoresoftwaresolutions/'
           ,'bi bi-instagram'
           ,3
           ,1)

           ,('twitter'
           ,'https://x.com/unicoresoftware/'
           ,'bi bi-twitter-x'
           ,4
           ,1)

           ,('github'
           ,'https://github.com/unicoresoftwaresolutions'
           ,'bi bi-github'
           ,5
           ,1)
end

if not exists (select 1 from Service)
begin

INSERT INTO [dbo].[Service]
           ([Name]
           ,[Description]
           ,[Icon]
           ,[OrderNo])
     VALUES
           ('Web Development'
           ,'High-performance websites and web applications designed to provide exceptional user experiences.'
           ,'bi bi-window-stack'
           ,1)

           ,('Mobile App Development'
           ,'Powerful Android and iOS applications that help you connect with customers wherever they are.'
           ,'bi bi-phone'
           ,2)

           ,('Custom Software'
           ,'Tailored software platforms built around your processes, workflows and business requirements.'
           ,'bi bi-code-square'
           ,3)

           ,('UI / UX Design'
           ,'Intuitive interfaces and thoughtful user experiences that make complex products simple to use.'
           ,'bi bi-palette'
           ,4)

           ,('Cloud Solutions'
           ,'Secure and scalable cloud infrastructure designed for performance, reliability and future growth.'
           ,'bi bi-cloud-arrow-up'
           ,5)

           ,('AI & Automation'
           ,'Smart automation and AI-powered solutions that improve productivity and reduce repetitive work.'
           ,'bi bi-robot'
           ,6)

end