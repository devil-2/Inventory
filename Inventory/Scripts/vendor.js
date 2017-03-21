﻿//<!---------- Display Vendor Information and reset all forms --------------->
//<script type="text/javascript">

$("#add-vendor").click(function () {
    $("#vendor-information").css("display", "block");
    $("#contacttable").css("display", "none");
    //$("#contacttable input").val("");
    $("#vendor-information input, .cd-tabs input, .cd-tabs textarea").val("");
});
$("#vendor-information-cancel").click(function () {
    $("#vendor-information input").val("");
});

$("#vendor-information1-cancel").click(function () {
    $("#vendor-information1 input").val("");
});
$("#save-reset").click(function () {
    $(".contactperson input").val("");
});
//</script>
//<!---------- Display Vendor Information and reset all forms --------------->

//<!-- Clone Shipping Address -->
//<script type="text/javascript">
$("input[type='checkbox']").change(function () {
    if ($("input[type='checkbox']").is(':checked')) {
        $("[id='ship_street']").val($("[id='bill_street']").val());
        $("[id='ship_city']").val($("[id='bill_city']").val());
        $("[id='ship_state']").val($("[id='bill_state']").val());
        $("[id='ship_postalcode']").val($("[id='bill_postalcode']").val());
        $("[id='ship_country']").val($("[id='bill_country']").val());
    }
    else {
        $("[id='ship_street']").val("");
        $("[id='ship_city']").val("");
        $("[id='ship_state']").val("");
        $("[id='ship_postalcode']").val("");
        $("[id='ship_country']").val("");
    }
});
//</script>
//<!-- Clone Shipping Address -->
//<!------ Random Colors ------>
//<script type="text/javascript">
$(document).ready(function (e) {
    $("#Mobile_No").keydown(function (event) {
        if (event.shiftKey) {
            event.preventDefault();
        }
        if (event.keyCode == 46 || event.keyCode == 8) {
        }
        else {
            if (event.keyCode < 95) {
                if (event.keyCode < 48 || event.keyCode > 57) {
                    event.preventDefault();
                }
            }
            else {
                if (event.keyCode < 96 || event.keyCode > 105) {
                    event.preventDefault();
                }
            }
        }
    });
    
    $(".top-button").each(function () {
        var colors = ["#f4511e", "#7e57c2", "#455a64", "#512da8", "#c2185b", "#5c6bc0", "#0288d1", "#f4511e", "#ef6c00", "#0097a7", "#5c6bc0", "#5d4037"];
        var len = colors.length;
        var rand = Math.floor(Math.random() * len);
        $(this).css("background", colors[rand]);
    });



    $('#vendortable').after('<div id="nav"></div>');
    var rowsShown = 3;
    var rowsTotal = $('#vendortable tbody tr').length;
    var numPages = rowsTotal / rowsShown;
    for (i = 0; i < numPages; i++) {
        var pageNum = i + 1;
        $('#nav').append('<a href="#" class="btn btn-success" rel="' + i + '">' + pageNum + '</a> ');
    }
    $('#vendortable tbody tr').hide();
    $('#vendortable tbody tr').slice(0, rowsShown).show();
    $('#nav a:first').addClass('active');
   

    $('#nav a').bind('click', function () {

        $('#nav a').removeClass('active');
        $(this).addClass('active');
        var currPage = $(this).attr('rel');
        var startItem = currPage * rowsShown;
        var endItem = startItem + rowsShown;
        $('#vendortable tbody tr').css('opacity', '0.0').hide().slice(startItem, endItem).
                css('display', 'table-row').animate({ opacity: 1 }, 300);
    });


    $(".cd-tabs").css("display", "none");
    //$("button.save").click(function(){
    //    $(".cd-tabs").css("display","block");
    //});
    $("#additon").click(function () {
        $(".cd-tabs").css("display", "block");
    });

});
//</script>
//<!------ Random Colors ------>
//<!------ Cloning contact person ------>
//<script type="text/javascript">
$("#add").click(function (e) {
    var len = $(".contactperson #clone-content").length;
    if (len < 2) {
        var v = $("li.contactperson > div.row:first-of-type > div:last-of-type");
        $("#clone-content").clone().appendTo(v);
    }
});
//</script>
//<!------ Cloning contact person ------>
//<!------ Contact Person Pop Up Job Position ------->
//<script type="text/javascript">
function textval() {
    $(".display-positions .positions1").click(function () {
        var c = $(this).text();
        $("input.selected-position").val(c);
        $(".display-positions").css("display", "none");
    });
}

$(".positions1 > i").click(function () {
    $(this).parent(".positions1").remove();
});

$(".selected-position").click(function () {
    $(".display-positions").css("display", "block");
    return textval();
});

$(".display-positions .position").click(function () {
    $(".add-position").css("display", "block");

    $(".add-position .add-button").click(function () {
        var v = $(".add-position input[type='text']").val();
        var value = $("<div class='positions1'>" + "<i class='fa fa-trash-o pull-right' aria-hidden='true'></i>" + v + "</div>");
        $(".form-group .display-positions").append(value);
        $(".positions1 > i").click(function () {
            $(this).parent(".positions1").remove();
        });
        return textval();
    });

    $(".close-button").click(function () {
        $(".add-position").css("display", "none");
    });

});

//</script>

//<!------ Contact Person Pop Up Job Position ------->

//Assigning values to inputs
function editFunction(array) {
    $('#vendor-information').css('display', 'block');
    $("#contacttable").css("display", "block");
    $(".cd-tabs").css("display", "block");
            $('#company_Id').val(array.company_Id);
            $('#Company_Name').val(array.Company_Name);
            $('#Email').val(array.Email);
            $('#Bank_Acc_Number').val(array.Bank_Acc_Number);
            $('#Bank_Name').val(array.Bank_Name);
            $('#Bank_Branch').val(array.Bank_Branch);
            $('#IFSC_No').val(array.IFSC_No);
            $('#Note').val(array.Note);
            $('#Contact_PersonFname').val(array.Contact_PersonFname);
            $('#Contact_PersonLname').val(array.Contact_PersonLname);
            $('#emailid').val(array.emailid);
            $('#Job_position').val(array.Job_position);
            $('#Mobile_No').val(array.Mobile_No);
            $('#Adhar_Number').val(array.Adhar_Number);
            $('#Vendor_Id').val(array.Vendor_Id);
            $('#bill_city').val(array.bill_city);
            $('#bill_country').val(array.bill_country);
            $('#bill_state').val(array.bill_state);
            $('#bill_street').val(array.bill_street);
            $('#bill_postalcode').val(array.bill_postalcode);
            $('#ship_city').val(array.ship_city);
            $('#ship_country').val(array.ship_country);
            $('#ship_state').val(array.ship_state);
            $('#ship_street').val(array.ship_street);
            $('#ship_postalcode').val(array.ship_postalcode);

}

//Get Particular Vendor Record
function getEditDetails(id) {
    //alert(id);
    $('#mySubmit').val("update").text("Update Company");
    $('#mySubmit1').val("updateaddress").text("Update Address");
    $('#bankid').val("updatebankdetails").text("Update Bank Details");
    $('#notebutton').val("updatenote").text("Update Note");
    $('#contactbutton').val("updatecontact").text("Update Contact");

    $('#btnedit').click(function () {
        $('#company').css('display', 'none');
    });

    $.ajax({
        url: '/Vendor/getAllDetails?company_Id=' + id,
        type: 'POST',
        data: JSON.stringify({ company_Id: id }),
        dataType: 'json',
        contentType: 'application/json',
        success: function (data) {
            if (data == "unique") {
                alert("sai");
            }
            else {
                var array = JSON.parse(data);
                editFunction(array);
                
            }
        },
        error: function (data)
        { alert("Failed!!!"); }
    });
}

//Particular Vendor
function editcompany(clickedvalue) {
    //alert(clickedvalue);

    $('#update').click(function () {
        $('#company').css('display', 'none');
    });
    $('#update').click(function () {
        $('#additional').css('display', 'none');
    });
    company_Id = $('#company_Id').val();
    Company_Name = $('#Company_Name').val();
    
    Email = $('#Email').val();
    if ((Company_Name == "") || (Email == "")) {
        if (Company_Name == "")
            alert("Please Enter Company Name");
        else
            alert("Please Enter Email");
    }
    else{
    if (clickedvalue == 'update') {
        $.ajax({
            url: '/Vendor/updatecompany?company_Id=' + company_Id + '&Company_Name=' + Company_Name + '& Email=' + Email,
            type: 'POST',
            data: JSON.stringify({ company_Id, Company_Name, Email }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();
                   
                    alert("Company Updated sucessfully");
                }
                else {
                    alert("not updated");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
    if (clickedvalue == 'Save') {
        $.ajax({
            url: '/Vendor/savecompany?Company_Name=' + Company_Name + '& Email=' + Email,
            type: 'POST',
            data: JSON.stringify({ Company_Name, Email }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();
                   
                    alert("company saved sucessfully");
                }
                else {
                    alert("not saved");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
    }
}

//Particular vendor Company Address
function editcompanyaddress(clickedvalue) {
    //alert(clickedvalue);
    $('#updateaddress').click(function () {
        $('#company').css('display', 'none');
    });
    $('#updateaddress').click(function () {
        $('#additional').css('display', 'none');
    });
    company_Id = $('#company_Id').val();
    //alert(company_Id);
    bill_street = $('#bill_street').val();
    bill_city = $('#bill_city').val();
    bill_state = $('#bill_state').val();
    bill_postalcode = $('#bill_postalcode').val();
    bill_country = $('#bill_country').val();
    ship_street = $('#ship_street').val();
    ship_city = $('#ship_city').val();
    ship_state = $('#ship_state').val();
    ship_postalcode = $('#ship_postalcode').val();
    ship_country = $('#ship_country').val();

    if (clickedvalue == 'updateaddress') {
        $.ajax({
            url: '/Vendor/updatecompanyaddress?company_Id=' + company_Id + '&bill_street=' + bill_street + '& bill_city=' + bill_city + '&bill_state=' + bill_state + '& bill_postalcode=' + bill_postalcode + '&bill_country=' + bill_country + '& ship_street=' + ship_street + '&ship_city=' + ship_city + '& ship_state=' + ship_state + '&ship_postalcode=' + ship_postalcode + '& ship_country=' + ship_country,
            type: 'POST',
            data: JSON.stringify({ company_Id, bill_street, bill_city, bill_state, bill_postalcode, bill_country, ship_street, ship_city, ship_state, ship_postalcode, ship_country }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();

                    alert("Address Updated sucessfully");
                }
                else {
                    alert("not updated");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
    if (clickedvalue == 'saveaddress') {

        $.ajax({
            url: '/Vendor/savecompanyaddress?company_Id=' + company_Id + '&bill_street=' + bill_street + '& bill_city=' + bill_city + '&bill_state=' + bill_state +
                   '& bill_postalcode=' + bill_postalcode + '&bill_country=' + bill_country + '& ship_street=' + ship_street + '&ship_city=' + ship_city +
                   '& ship_state=' + ship_state + '&ship_postalcode=' + ship_postalcode + '& ship_country=' + ship_country,
            type: 'POST',
            data: JSON.stringify({
                company_Id, bill_street, bill_city, bill_state, bill_postalcode,
                bill_country, ship_street, ship_city, ship_state, ship_postalcode, ship_country
            }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();

                    alert("Address Saved sucessfully");
                }
                else {
                    alert("not Saved");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
}

//Vendor Bank Details
function editcompanybankdetails(clickedvalue) {
   // alert(clickedvalue);
    $('#updatebakdetails').click(function () {
        $('#company').css('display', 'none');
    });
    $('#updatebakdetails').click(function () {
        $('#additional').css('display', 'none');
    });
    company_Id = $('#company_Id').val();
    Bank_Acc_Number = $('#Bank_Acc_Number').val();
    Bank_Name = $('#Bank_Name').val();
    Bank_Branch = $('#Bank_Branch').val();
    IFSC_No = $('#IFSC_No').val();
    if (clickedvalue == 'updatebankdetails') {
        $.ajax({
            url: '/Vendor/updatecompanybankdetails?company_Id=' + company_Id + '&Bank_Acc_Number=' + Bank_Acc_Number + '&Bank_Name=' + Bank_Name + '&Bank_Branch=' + Bank_Branch + '&IFSC_No=' + IFSC_No,
            type: 'POST',
            data: JSON.stringify({ company_Id, Bank_Acc_Number, Bank_Name, Bank_Branch, IFSC_No }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();

                    alert("Bank details Updated sucessfully");
                }
                else {
                    alert("not updated");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }

        });
    }
    if (clickedvalue == 'savebankdetails') {
        $.ajax({
            url: '/Vendor/savecompanybankdetails?company_Id=' + company_Id + '&Bank_Acc_Number=' + Bank_Acc_Number + '&Bank_Name=' + Bank_Name + '&Bank_Branch=' + Bank_Branch + '&IFSC_No=' + IFSC_No,
            type: 'POST',
            data: JSON.stringify({ company_Id, Bank_Acc_Number, Bank_Name, Bank_Branch, IFSC_No }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();
                    alert("Bank details saved sucessfully");
                }
                else {
                    alert("not saved");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }

        });
    }
}

//Vendor Note
function updatecompanynote(clickedvalue) {
    //alert(clickedvalue);
    $('#updatenote').click(function () {
        $('#company').css('display', 'none');
    });
    $('#updatenote').click(function () {
        $('#additional').css('display', 'none');
    });
    company_Id = $('#company_Id').val();
    Note = $('#Note').val();
    if (clickedvalue == 'updatenote') {
        $.ajax({
            url: '/Vendor/updatecompanynote?company_Id=' + company_Id + '&Note=' + Note,
            type: 'POST',
            data: JSON.stringify({ company_Id, Note }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();

                    alert("Notes Updated sucessfully");
                }
                else {
                    alert("not updated");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
    if (clickedvalue == 'Save Note') {
        $.ajax({
            url: '/Vendor/savecompanynote?company_Id=' + company_Id + '&Note=' + Note,
            type: 'POST',
            data: JSON.stringify({ company_Id, Note }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();
                    alert("Notes Saved sucessfully");
                }
                else {
                    alert("not Saved");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
}

//Contact Person
function UpdateContact(clickedvalue) {
    //alert(clickedvalue);
    $('#updatecontact').click(function () {
        $('#company').css('display', 'none');
    });
    $('#updatecontact').click(function () {
        $('#additional').css('display', 'none');
    });
    company_Id = $('#company_Id').val();
    //alert(company_Id);
    Contact_PersonFname = $('#Contact_PersonFname').val();
    Contact_PersonLname = $('#Contact_PersonLname').val();
    Mobile_No = $('#Mobile_No').val();
    emailid = $('#emailid').val();
    Adhar_Number = $('#Adhar_Number').val();
    Job_position = $('#Job_position').val();
    //alert(Adhar_Number);
    if (clickedvalue == 'savecontact') {
        $.ajax({
            url: '/Vendor/savecontactdetails?company_Id=' + company_Id + '&Contact_PersonFname=' + Contact_PersonFname + '&Contact_PersonLname=' + Contact_PersonLname + '&Mobile_No=' + Mobile_No + '&emailid=' + emailid + '&Adhar_Number=' + Adhar_Number + '&Job_position=' + Job_position,
            type: 'POST',
            data: JSON.stringify({company_Id, Contact_PersonFname, Contact_PersonLname, Mobile_No, emailid, Adhar_Number, Job_position}),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();

                    alert("Contact Details saved sucessfully");
                }
                else {
                    alert("not saved");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
    if (clickedvalue == 'updatecontact') {
        $.ajax({
            url: '/Vendor/updatecontactdetails?company_Id=' + company_Id + '&Contact_PersonFname=' + Contact_PersonFname + '&Contact_PersonLname=' + Contact_PersonLname + '&Mobile_No=' + Mobile_No + '&emailid=' + emailid + '&Adhar_Number=' + Adhar_Number + '&Job_position=' + Job_position,
            type: 'POST',
            data: JSON.stringify({ company_Id, Contact_PersonFname, Contact_PersonLname, Mobile_No, emailid, Adhar_Number, Job_position }),
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) {
                if (data == "sucess") {
                    $('#savebutton').hide();
                    alert("Contact Details updated sucessfully");
                }
                else {
                    alert("not updated");
                }
            },
            error: function (data)
            { alert("Failed!!!"); }
        });
    }
}