﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Inventory.Repository
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class InventoryMasterEntities : DbContext
    {
        public InventoryMasterEntities()
            : base("name=InventoryMasterEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
    
        public virtual ObjectResult<activateuser_Result> activateuser(string email, string activationcode)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var activationcodeParameter = activationcode != null ?
                new ObjectParameter("activationcode", activationcode) :
                new ObjectParameter("activationcode", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<activateuser_Result>("activateuser", emailParameter, activationcodeParameter);
        }
    
        public virtual ObjectResult<Authenticateuser_Result> Authenticateuser(string check, string emailId, string password, string site, Nullable<long> usertypeid)
        {
            var checkParameter = check != null ?
                new ObjectParameter("check", check) :
                new ObjectParameter("check", typeof(string));
    
            var emailIdParameter = emailId != null ?
                new ObjectParameter("EmailId", emailId) :
                new ObjectParameter("EmailId", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            var siteParameter = site != null ?
                new ObjectParameter("site", site) :
                new ObjectParameter("site", typeof(string));
    
            var usertypeidParameter = usertypeid.HasValue ?
                new ObjectParameter("usertypeid", usertypeid) :
                new ObjectParameter("usertypeid", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Authenticateuser_Result>("Authenticateuser", checkParameter, emailIdParameter, passwordParameter, siteParameter, usertypeidParameter);
        }
    
        public virtual int createuser(string emailId, string first_Name, string last_Name, string dB_Name, Nullable<System.DateTime> created_Date, string password, Nullable<int> subscriptionId, Nullable<int> userTypeId, string user_Site, string companyName, string phone, Nullable<System.DateTime> subscriptionDate, Nullable<int> isActive, string activationcode, string profile_Picture, string date_Format, string timezone, string currency, string companylogo)
        {
            var emailIdParameter = emailId != null ?
                new ObjectParameter("EmailId", emailId) :
                new ObjectParameter("EmailId", typeof(string));
    
            var first_NameParameter = first_Name != null ?
                new ObjectParameter("First_Name", first_Name) :
                new ObjectParameter("First_Name", typeof(string));
    
            var last_NameParameter = last_Name != null ?
                new ObjectParameter("Last_Name", last_Name) :
                new ObjectParameter("Last_Name", typeof(string));
    
            var dB_NameParameter = dB_Name != null ?
                new ObjectParameter("DB_Name", dB_Name) :
                new ObjectParameter("DB_Name", typeof(string));
    
            var created_DateParameter = created_Date.HasValue ?
                new ObjectParameter("Created_Date", created_Date) :
                new ObjectParameter("Created_Date", typeof(System.DateTime));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            var subscriptionIdParameter = subscriptionId.HasValue ?
                new ObjectParameter("SubscriptionId", subscriptionId) :
                new ObjectParameter("SubscriptionId", typeof(int));
    
            var userTypeIdParameter = userTypeId.HasValue ?
                new ObjectParameter("UserTypeId", userTypeId) :
                new ObjectParameter("UserTypeId", typeof(int));
    
            var user_SiteParameter = user_Site != null ?
                new ObjectParameter("User_Site", user_Site) :
                new ObjectParameter("User_Site", typeof(string));
    
            var companyNameParameter = companyName != null ?
                new ObjectParameter("CompanyName", companyName) :
                new ObjectParameter("CompanyName", typeof(string));
    
            var phoneParameter = phone != null ?
                new ObjectParameter("Phone", phone) :
                new ObjectParameter("Phone", typeof(string));
    
            var subscriptionDateParameter = subscriptionDate.HasValue ?
                new ObjectParameter("SubscriptionDate", subscriptionDate) :
                new ObjectParameter("SubscriptionDate", typeof(System.DateTime));
    
            var isActiveParameter = isActive.HasValue ?
                new ObjectParameter("IsActive", isActive) :
                new ObjectParameter("IsActive", typeof(int));
    
            var activationcodeParameter = activationcode != null ?
                new ObjectParameter("activationcode", activationcode) :
                new ObjectParameter("activationcode", typeof(string));
    
            var profile_PictureParameter = profile_Picture != null ?
                new ObjectParameter("Profile_Picture", profile_Picture) :
                new ObjectParameter("Profile_Picture", typeof(string));
    
            var date_FormatParameter = date_Format != null ?
                new ObjectParameter("Date_Format", date_Format) :
                new ObjectParameter("Date_Format", typeof(string));
    
            var timezoneParameter = timezone != null ?
                new ObjectParameter("Timezone", timezone) :
                new ObjectParameter("Timezone", typeof(string));
    
            var currencyParameter = currency != null ?
                new ObjectParameter("Currency", currency) :
                new ObjectParameter("Currency", typeof(string));
    
            var companylogoParameter = companylogo != null ?
                new ObjectParameter("companylogo", companylogo) :
                new ObjectParameter("companylogo", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("createuser", emailIdParameter, first_NameParameter, last_NameParameter, dB_NameParameter, created_DateParameter, passwordParameter, subscriptionIdParameter, userTypeIdParameter, user_SiteParameter, companyNameParameter, phoneParameter, subscriptionDateParameter, isActiveParameter, activationcodeParameter, profile_PictureParameter, date_FormatParameter, timezoneParameter, currencyParameter, companylogoParameter);
        }
    
        public virtual ObjectResult<string> getOwnerDb(string code)
        {
            var codeParameter = code != null ?
                new ObjectParameter("code", code) :
                new ObjectParameter("code", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("getOwnerDb", codeParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> getsubscriptionid(string type)
        {
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("getsubscriptionid", typeParameter);
        }
    
        public virtual ObjectResult<getusersite_Result> getusersite(string site)
        {
            var siteParameter = site != null ?
                new ObjectParameter("site", site) :
                new ObjectParameter("site", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getusersite_Result>("getusersite", siteParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> GetUserType(string type, Nullable<long> id)
        {
            var typeParameter = type != null ?
                new ObjectParameter("type", type) :
                new ObjectParameter("type", typeof(string));
    
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("GetUserType", typeParameter, idParameter);
        }
    
        public virtual int insertcompanyaddress(string line1, string line2, string city, string state, string postalcode, string country)
        {
            var line1Parameter = line1 != null ?
                new ObjectParameter("Line1", line1) :
                new ObjectParameter("Line1", typeof(string));
    
            var line2Parameter = line2 != null ?
                new ObjectParameter("Line2", line2) :
                new ObjectParameter("Line2", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var stateParameter = state != null ?
                new ObjectParameter("state", state) :
                new ObjectParameter("state", typeof(string));
    
            var postalcodeParameter = postalcode != null ?
                new ObjectParameter("postalcode", postalcode) :
                new ObjectParameter("postalcode", typeof(string));
    
            var countryParameter = country != null ?
                new ObjectParameter("country", country) :
                new ObjectParameter("country", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertcompanyaddress", line1Parameter, line2Parameter, cityParameter, stateParameter, postalcodeParameter, countryParameter);
        }
    
        public virtual int insertuseraddress(string line1, string line2, string city, string state, string postalcode, string country)
        {
            var line1Parameter = line1 != null ?
                new ObjectParameter("Line1", line1) :
                new ObjectParameter("Line1", typeof(string));
    
            var line2Parameter = line2 != null ?
                new ObjectParameter("Line2", line2) :
                new ObjectParameter("Line2", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var stateParameter = state != null ?
                new ObjectParameter("state", state) :
                new ObjectParameter("state", typeof(string));
    
            var postalcodeParameter = postalcode != null ?
                new ObjectParameter("postalcode", postalcode) :
                new ObjectParameter("postalcode", typeof(string));
    
            var countryParameter = country != null ?
                new ObjectParameter("country", country) :
                new ObjectParameter("country", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("insertuseraddress", line1Parameter, line2Parameter, cityParameter, stateParameter, postalcodeParameter, countryParameter);
        }
    
        public virtual int updatecompanyaddress(Nullable<int> user_id, string line1, string line2, string city, string state, string postalcode, string country)
        {
            var user_idParameter = user_id.HasValue ?
                new ObjectParameter("user_id", user_id) :
                new ObjectParameter("user_id", typeof(int));
    
            var line1Parameter = line1 != null ?
                new ObjectParameter("Line1", line1) :
                new ObjectParameter("Line1", typeof(string));
    
            var line2Parameter = line2 != null ?
                new ObjectParameter("Line2", line2) :
                new ObjectParameter("Line2", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var stateParameter = state != null ?
                new ObjectParameter("state", state) :
                new ObjectParameter("state", typeof(string));
    
            var postalcodeParameter = postalcode != null ?
                new ObjectParameter("postalcode", postalcode) :
                new ObjectParameter("postalcode", typeof(string));
    
            var countryParameter = country != null ?
                new ObjectParameter("country", country) :
                new ObjectParameter("country", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("updatecompanyaddress", user_idParameter, line1Parameter, line2Parameter, cityParameter, stateParameter, postalcodeParameter, countryParameter);
        }
    
        public virtual int updatetimezone(string dateformat, string timezone, string id)
        {
            var dateformatParameter = dateformat != null ?
                new ObjectParameter("dateformat", dateformat) :
                new ObjectParameter("dateformat", typeof(string));
    
            var timezoneParameter = timezone != null ?
                new ObjectParameter("Timezone", timezone) :
                new ObjectParameter("Timezone", typeof(string));
    
            var idParameter = id != null ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("updatetimezone", dateformatParameter, timezoneParameter, idParameter);
        }
    
        public virtual int updateuser(string emailid, string activationcode)
        {
            var emailidParameter = emailid != null ?
                new ObjectParameter("Emailid", emailid) :
                new ObjectParameter("Emailid", typeof(string));
    
            var activationcodeParameter = activationcode != null ?
                new ObjectParameter("activationcode", activationcode) :
                new ObjectParameter("activationcode", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("updateuser", emailidParameter, activationcodeParameter);
        }
    
        public virtual int updateuseraddress(Nullable<int> user_id, string line1, string line2, string city, string state, string postalcode, string country)
        {
            var user_idParameter = user_id.HasValue ?
                new ObjectParameter("user_id", user_id) :
                new ObjectParameter("user_id", typeof(int));
    
            var line1Parameter = line1 != null ?
                new ObjectParameter("Line1", line1) :
                new ObjectParameter("Line1", typeof(string));
    
            var line2Parameter = line2 != null ?
                new ObjectParameter("Line2", line2) :
                new ObjectParameter("Line2", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var stateParameter = state != null ?
                new ObjectParameter("state", state) :
                new ObjectParameter("state", typeof(string));
    
            var postalcodeParameter = postalcode != null ?
                new ObjectParameter("postalcode", postalcode) :
                new ObjectParameter("postalcode", typeof(string));
    
            var countryParameter = country != null ?
                new ObjectParameter("country", country) :
                new ObjectParameter("country", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("updateuseraddress", user_idParameter, line1Parameter, line2Parameter, cityParameter, stateParameter, postalcodeParameter, countryParameter);
        }
    
        public virtual int updateusers(string emailid, string activationcode, string dB_Name)
        {
            var emailidParameter = emailid != null ?
                new ObjectParameter("Emailid", emailid) :
                new ObjectParameter("Emailid", typeof(string));
    
            var activationcodeParameter = activationcode != null ?
                new ObjectParameter("activationcode", activationcode) :
                new ObjectParameter("activationcode", typeof(string));
    
            var dB_NameParameter = dB_Name != null ?
                new ObjectParameter("DB_Name", dB_Name) :
                new ObjectParameter("DB_Name", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("updateusers", emailidParameter, activationcodeParameter, dB_NameParameter);
        }
    
        public virtual ObjectResult<GetUserProfile_Result> GetUserProfile(Nullable<long> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetUserProfile_Result>("GetUserProfile", idParameter);
        }
    }
}
