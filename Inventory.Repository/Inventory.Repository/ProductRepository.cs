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
    public class ProductRepository
    {
        private static string ConnectionString;

        #region Get Warehouse Count
        public static SqlDataReader GetWarehouseCount(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getwarehousecount");
        }
        #endregion

        #region Sorting Sub-Category
        public static SqlDataReader GetSubCategory(string dbname,string type,string categoryid)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getsubcategory",type,categoryid);
        }
        #endregion

        #region Add/Remove ProductItems
        public static int ProductItems(string dbname,string command,string weight,string size,string color,string itemshape,string assignedcategoryid,string category,string subcategory,string brand,string model,string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "ProductItems", command, weight, size, color, itemshape, assignedcategoryid, category, subcategory,brand,model, id);
        }
        #endregion

        #region Get Product Items
        public static SqlDataReader GetProductItems(string dbname, string command,string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetProductItems", command,id);
        }
        #endregion

        #region Add Product
        public static int ProductFunctionalities(string type,string dbname,int id, string product_id, string product_name, string brand , string model , string category , string sub_category , string cost_price , string selling_price , string tax ,
           string discount , string shipping_price , string total_price , string Measurement , string weight , string size , string color , string item_shape , string product_consumable ,
           string product_type , string product_perishability , string product_expirydate , string product_description , string product_tags,string product_images)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "ProductFunctionalities", type,id,product_id, product_name, brand, model, category, sub_category, cost_price, selling_price, tax, discount,
                shipping_price, total_price, Measurement, weight, size, color, item_shape, product_consumable, product_type, product_perishability, product_expirydate,
                product_description, product_tags,product_images);
        }
        #endregion

        #region Get All Products
        public static SqlDataReader GetAllProducts(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetAllProducts");
        }
        #endregion

        #region Get Product Max ID
        public static SqlDataReader GetProductMaxID(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetProductMaxID");
        }
        #endregion

        #region Add Quantity In Hand
        public static int AddQuantityInHand(string dbname, string product_id, string area, string Qty, string Total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "AddQuantityInHand", product_id, area, Qty, Total);
        }
        #endregion

        //to get chicken products
        public static SqlDataReader Getproductsbysubcategory(string dbname, string sub_category)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "Getproductsbysubcategory", sub_category);
        }
    }
}
