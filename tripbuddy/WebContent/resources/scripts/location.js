
function ajaxCall() {
    this.send = function(data, url, method, success, type) {
        type = type||'json';
        var successRes = function(data) {
            success(data);
        }

        var errorRes = function(e) {
            console.log(e);
        }
        jQuery.ajax({
            url: url,
            type: method,
            data: data,
            success: successRes,
            error: errorRes,
            dataType: type,
            timeout: 60000
        });

    }

}

function locationInfoo() {
    var rootUrl = "//geodata.solutions/api/api.php";
    //set default values
    var username = 'demo';
    var ordering = 'name';
    //now check for set values
    var addParams = '';
    if(jQuery("#gds_appid").length > 0) {
        addParams += '&appid=' + jQuery("#gds_appid").val();
    }
    if(jQuery("#gds_hash").length > 0) {
        addParams += '&hash=' + jQuery("#gds_hash").val();
    }

    var call = new ajaxCall();

    this.confCityy = function(id) {
        var url = rootUrl+'?type=confCity&countryId=IN&stateId=' + jQuery('#stateId2 option:selected').attr('stateid2') + '&cityId=' + id;
        var method = "post";
        var data = {};
        call.send(data, url, method, function(data) {
            if(data){
                //    alert(data);
            }
            else{
                //   alert('No data');
            }
        });
    };

    this.getCitiess = function(id) {
        jQuery(".cities2 option:gt(0)").remove();
        //get additional fields
        var stateClasses = jQuery('#cityId2').attr('class');
        //console.log(stateClasses);
        var cC = stateClasses.split(" ");
        cC.shift();
        var addClasses = '';
        if(cC.length > 0)
        {
            acC = cC.join();
            addClasses = '&addClasses=' + encodeURIComponent(acC);
        }
        var url = rootUrl+'?type=getCities&countryId=IN&stateId=' + id + addParams + addClasses;
        var method = "post";
        var data = {};
        jQuery('.cities2').find("option:eq(0)").html("Please wait..");
        call.send(data, url, method, function(data) {
            jQuery('.cities2').find("option:eq(0)").html("Select City");
            if(data.tp == 1){
                if(data.hits > 500)
                {
                    //alert('Free usage far exceeded. Please subscribe at geodata.solutions.');
                    console.log('Daily geodata.solutions hit count:' + data.hits);
                }
                else
                {
                    console.log('Daily geodata.solutions hit count:' + data.hits)
                }

                var listlen = Object.keys(data['result']).length;
                console.log('number is cities is ' + listlen);
                if(listlen > 0)
                {
                    jQuery.each(data['result'], function(key, val) {

                        var option = jQuery('<option />');
                        option.attr('value', val).text(val);
                        jQuery('.cities2').append(option);
                    });
                }
                else
                {
                    var usestate = jQuery('#stateId2 option:selected').val();
                    var option = jQuery('<option />');
                    option.attr('value', usestate).text(usestate);
                    option.attr('selected', 'selected');
                    jQuery('.cities2').append(option);
                }

                jQuery(".cities2").prop("disabled",false);
            }
            else{
                alert(data.msg);
            }
        });
    };

    this.getStatess = function(id) {
        jQuery(".states2 option:gt(0)").remove();
        jQuery(".cities2 option:gt(0)").remove();
        //get additional fields
        var stateClasses = jQuery('#stateId2').attr('class');
        console.log(stateClasses);
        var cC = stateClasses.split(" ");
        cC.shift();
        var addClasses = '';
        if(cC.length > 0)
        {
            acC = cC.join();
            addClasses = '&addClasses=' + encodeURIComponent(acC);
        }
        var url = rootUrl+'?type=getStates&countryId=' + id + addParams  + addClasses;
        var method = "post";
        var data = {};
        jQuery('.states2').find("option:eq(0)").html("Please wait..");
        call.send(data, url, method, function(data) {
            jQuery('.states2').find("option:eq(0)").html("Select State");
            if(data.tp == 1){
                if(data.hits > 500)
                {
                    //alert('Free usage far exceeded. Please subscribe at geodata.solutions.');
                    console.log('Daily geodata.solutions hit count exceeded: ' + data.hits + ' of 500.');
                }
                else
                {
                    console.log('Daily geodata.solutions hit count:' + data.hits)
                }
                jQuery.each(data['result'], function(key, val) {
                    var option = jQuery('<option />');
                    option.attr('value', val).text(val);
                    option.attr('stateid2', key);
                    jQuery('.states2').append(option);
                });
                jQuery(".states2").prop("disabled",false);
            }
            else{
                alert(data.msg);
            }
        });
    };
}

jQuery(function() {
    var loc = new locationInfoo();
    var coid = 'IN';
    loc.getStatess(coid);
    jQuery(".states2").on("change", function(ev) {
        var stateId = jQuery("option:selected", this).attr('stateid2');
        if(stateId != ''){
            loc.getCitiess(stateId);
        }
        else{
            jQuery(".cities2 option:gt(0)").remove();
        }
    });
    jQuery(".cities2").on("change", function(ev) {
        var cityId = jQuery("option:selected", this).val();
        if(cityId != ''){
            loc.confCityy(cityId);
        }
    });
});