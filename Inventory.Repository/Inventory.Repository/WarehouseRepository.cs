﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using Inventory.Utility;


namespace Inventory.Repository
{
   public class WarehouseRepository
    {
        private static string ConnectionString ;
        private static string ConnectionString1 = ConfigurationManager.ConnectionStrings["DbConnection1"].ToString();
        
        public static int warehouseinsert(string Wh_Name, string wh_Shortname)
        {
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "insertwarehouse",Wh_Name,wh_Shortname );
            return count;
        }

        public static int WHaddressinsert(string WH_Name,string WH_ShortName,string contactperson,string jobposition,
            long phone, long mobile,string Email,string Note,string bill_street,string bill_city,string bill_state,string bill_postalcode,
            string bill_country, string ship_street, string ship_city, string ship_state, string ship_postalcode, string ship_country, string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "insertwarehouse",WH_Name,WH_ShortName,contactperson, jobposition, phone,mobile, 
                Email,Note,bill_street,
                bill_city,bill_state,bill_postalcode,bill_country,ship_street,ship_city,ship_state,ship_postalcode,ship_country);
            return count;
        }
        public static SqlDataReader getwarehousedtls(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "[dbo].[spGetwarehouseDtls]");
        }

        public static SqlDataReader getwhid(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getMaxwhid");
        }

        public static SqlDataReader getcontactdetail(string dbname, string wh_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getContactBywarehouse", wh_id);

        }

        public static SqlDataReader getlastinsertedwarehouse(string dbname, string wh_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getLastInsertedwarehouse", wh_id);
        }
       public static SqlDataReader getallwhdetails(string dbname, string wh_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "Getallwhdetailsbywhid", wh_id);
        }
        //update warehouse

        public static int updatewarehouse(string dbname, string wh_id,string wh_name,string wh_sname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "updatewarehouse", wh_id, wh_name, wh_sname);
            return count;
        }
        public static int updatewhaddress(string dbname, string wh_id, string bill_street, string bill_city, string bill_state, string bill_postalcode,
            string bill_country, string ship_street, string ship_city, string ship_state, string ship_postalcode, string ship_country)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count1 = SqlHelper.ExecuteNonQuery(ConnectionString, "updatewh_address", wh_id, bill_street, bill_city, bill_state, bill_postalcode,
                bill_country, ship_street, ship_city, ship_state, ship_postalcode, ship_country);
            return count1;
        }

        public static int updatewhcontact(string dbname, string wh_id,string Contact_Person,long phone,long Mobile,string Email,string job_position)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "updatewhcontact", wh_id, Contact_Person, phone, Mobile, Email, job_position);
            return count;
        }
        public static int updatewhnotes(string dbname, string wh_id,string Note)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count= SqlHelper.ExecuteNonQuery(ConnectionString, "updatewhnotes", wh_id, Note);
            return count;
        }
        public static int insertwhdtls(string dbname, string wh_name,string wh_sname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "insertwhdtls", wh_name,wh_sname);
            return count;
        }

        public static int insertwhaddress(string dbname, string wh_id, string bill_street, string bill_city, string bill_state, string bill_postalcode,
            string bill_country, string ship_street, string ship_city, string ship_state, string ship_postalcode, string ship_country)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count1 = SqlHelper.ExecuteNonQuery(ConnectionString, "insertwh_address", wh_id, bill_street, bill_city, bill_state, bill_postalcode,
               bill_country, ship_street, ship_city, ship_state, ship_postalcode, ship_country);
            return count1;
        }
        public static int insertwhcontact(string dbname, string wh_id, string Contact_Person, long phone, long Mobile, string Email, string job_position)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "insertwarehouse1", wh_id, Contact_Person, phone, Mobile, Email, job_position);
            return count;
        }
        public  static int deletewarehouse(string dbname,string wh_Id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            int count = SqlHelper.ExecuteNonQuery(ConnectionString, "spdeletewhdtls", wh_Id);
            return count;

        }
    }
}
