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
        public static SqlDataReader GetSubCategory(string dbname, string type, string categoryid)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getsubcategory", type, categoryid);
        }
        #endregion

        #region Add/Remove ProductItems
        public static int ProductItems(string dbname, string command, string weight, string size, string color, string itemshape, string assignedcategoryid, string category, string subcategory, string brand, string model, string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "ProductItems", command, weight, size, color, itemshape, assignedcategoryid, category, subcategory, brand, model, id);
        }
        #endregion

        #region Get Product Items
        public static SqlDataReader GetProductItems(string dbname, string command, string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetProductItems", command, id);
        }
        #endregion

        #region Add Product
        public static int ProductFunctionalities(string type, string dbname, int id, string product_id, string product_name, string batch_number, string brand, string model, string category, string sub_category, string cost_price, string selling_price, string tax,
           string discount, string shipping_price, string total_price, string Measurement, string weight, string size, string color, string item_shape, string product_consumable,
           string product_type, string product_perishability, string product_expirydate, string product_description, string product_tags, string product_images,
           string sgst,string cgst,string igst,string hsncode)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "ProductFunctionalities", type, id, product_id, product_name, batch_number, brand, model, category, sub_category, cost_price, selling_price, tax, discount,
                shipping_price, total_price, Measurement, weight, size, color, item_shape, product_consumable, product_type, product_perishability, product_expirydate,
                product_description, product_tags, product_images,sgst,cgst,igst,hsncode);
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
        public static int AddQuantityInHand(string dbname, string product_id, string area, int Qty, string reorder, string Total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "AddQuantityInHand", product_id, area, Qty, reorder, Total);
        }
        #endregion

        #region Active/InActive Product
        public static int productstatus(string dbname, string id, string status)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "productstatus", id, status);
        }
        #endregion

        #region Get Product
        public static SqlDataReader GetProduct(string dbname, string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetProduct", id);
        }
        #endregion

        #region Get Quantity In Hand
        public static SqlDataReader GetQuantityInHand(string dbname, string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetQuantityInHand", id);
        }
        #endregion

        #region Update Product
        public static int updateproduct(string dbname, string id, string batch, string cost_price, string selling_price, string tax, string discount, string shipping, string total_price)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "UpdateProduct", id, batch, cost_price, selling_price, tax, discount, shipping, total_price);
        }
        #endregion

        #region Update Stock
        public static int UpdateStock(string dbname, string id, int qty, string total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "UpdateStock", id, qty, total);
        }
        #endregion

        #region Re-Order
        public static SqlDataReader Reordering(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "Reordering");
        }
        #endregion

        #region Add Product Log
        public static int ProductFunctionalitieslog(string dbname, int id, string mainproduct_id, string product_id, string product_name, string batch_number,
            string brand, string model, string category, string sub_category, string cost_price, string selling_price, string tax,
           string discount, string shipping_price, string total_price, string Measurement, string weight, string size, string color, string item_shape,
           string product_consumable, string product_type, string product_perishability, string product_expirydate, string product_description,
           string product_tags, string product_images, string created_date, string status)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "ProductFunctionalitieslog", id, mainproduct_id, product_id, product_name, batch_number, brand, model,
                category, sub_category, cost_price, selling_price, tax, discount, shipping_price, total_price, Measurement, weight, size, color, item_shape,
                product_consumable, product_type, product_perishability, product_expirydate, product_description, product_tags, product_images, created_date, status);
        }
        #endregion

        #region Add Quantity In Hand Log
        public static int AddQuantityInHandLog(string dbname, int mainquantity_id, string product_id, string area, int Qty, string reorder,
            string Total, string vendor_id, string vendor)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "QuantityInHandLog", mainquantity_id.ToString(), product_id, area, Qty, reorder, Total, vendor_id, vendor);
        }
        #endregion

        #region Get Product Log Max ID
        public static SqlDataReader GetProductLogMaxID(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetProductLogMaxID");
        }
        #endregion

        #region Update Product Stock & Re-Oreder Level
        public static int UpdateReorder(string dbname, string id, int qty, string reorder, string total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "updatereorder", id, qty, reorder, total);
        }
        #endregion

        #region Product Image Removal
        public static int removeproductimage(string dbname, string id, string updatedimage)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "removeproductimage", id, updatedimage);

        }
        #endregion

        #region Update Product Stock
        public static int UpdateProductStock(string dbname, string id, string total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "updateproductqty", id, total);
        }
        #endregion

        #region Get Max Warehouse Qty
        public static SqlDataReader GetMaxWarehouseQty(string dbname, string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetMaxWarehouseQty", id);
        }
        #endregion

        #region Update Max Warehouse Qty
        public static int updateMaxWarehouseQty(string dbname, string product_id, string id, int qty, string total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "updateMaxWarehouseQty", product_id, id, qty, total);
        }
        #endregion

        //to get all categories

        public static SqlDataReader GetAllCategories(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetAllCategories");
        }

        public static SqlDataReader GetAllSubCategories(string dbname, string category_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetAllSubCategories", category_id);
        }

        //to get chicken products
        public static SqlDataReader Getproductsbysubcategory(string dbname, string sub_category)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "Getproductsbysubcategory", sub_category);
        }

        public static SqlDataReader Getdistinctproducts(string dbname)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getuniqueproducts");
        }

        public static SqlDataReader Getdescripton(string dbname, String product_name)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "getmeasurmentsbyproduct", product_name);
        }

        //for images

        public static SqlDataReader Getimages(string dbname, String product_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "Getimages", product_id);
        }

        public static int Addtocart(string dbname, string cid, string product_id, string product_name, string cost_price, string Quantity, string Measurement, string total_price, string product_images)
        {

            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "addtocart", cid, product_id, product_name, cost_price, Quantity, Measurement, total_price, product_images);
        }

        //Updatecart
        public static int Updatecart(string dbname, int cart_id, string Quantity, string total_price)
        {

            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "updatecart", cart_id, Quantity, total_price);
        }

        public static SqlDataReader Addtocartbyid(string dbname, string cid)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "addtocartbycustomerid", cid);
        }
        //for genarating purchase order
        public static int GenaratePurchaseOrder(string dbname, string cid, string product_id, string cname, string created_date, string Prchaseorder_no, string shipping_date, string shipping_terms, string product_name, string description, string quantity, string price, string total_price, string remarks, string sub_total,/* float vat, float discount,*/ string grand_total)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "insertpurchaseOrder", cid, product_id, cname, created_date, Prchaseorder_no, shipping_date, shipping_terms, product_name, description, quantity, price, total_price, remarks, sub_total,/* vat, discount,*/ grand_total);
        }

        public static int Emptycart(string dbname, string cid)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "emptycart", cid);

        }
        public static int Removefromcart(string dbname, int cart_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteNonQuery(ConnectionString, "deletefromcart", cart_id);

        }
        public static SqlDataReader Getcartdata(string dbname, string id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "basedoncustomeridcartdata", id);
        }
        //Getpodata
        public static SqlDataReader Getpodata(string dbname, string Prchaseorder_no)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "basedoncustomeridpodata", Prchaseorder_no);
        }

        //GetqtyInHand

        public static SqlDataReader GetqtyInHand(string dbname, string product_id)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "GetqtyInHand", product_id);
        }
        //Getpoproductdata

        public static SqlDataReader Getpoproductdata(string dbname, string Prchaseorder_no)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "PoProductdetails", Prchaseorder_no);
        }

        //public static SqlDataReader checkcartdata(string dbname, string product_name, string Measurement, string cid)
        //{
        //    GetConnectionString getConnectionString = new GetConnectionString();
        //    ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
        //    return SqlHelper.ExecuteReader(ConnectionString, "checkcartdata", product_name, Measurement, cid);

        //}
        public static SqlDataReader checkcartdata(string dbname, string product_id, string cid)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "checkcartdata", product_id,cid);

        }
        public static SqlDataReader checkponum(string dbname, string Prchaseorder_no)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "checkponum", Prchaseorder_no);

        }

        public static SqlDataReader PosOfCustomer(string dbname, string cid)
        {
            GetConnectionString getConnectionString = new GetConnectionString();
            ConnectionString = getConnectionString.CustomizeConnectionString(dbname);
            return SqlHelper.ExecuteReader(ConnectionString, "posofcustomer", cid);
        }
    }
}
