<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Cities</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  
</head>
<body>
    <div class="row" style="padding:10px;">              
        <div class="col-md-3">
            <div class="col-md-12">
                <label>Birth Rate</label>
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder="min" id="birth_min" autocomplete="off" onkeyup="getTable()">
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder="max" id="birth_max" autocomplete="off" onkeyup="getTable()">
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <label>Population</label>
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder="min" id="population_min" autocomplete="off" onkeyup="getTable()">
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder="max" id="population_max" autocomplete="off" onkeyup="getTable()">
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <label>Height above</label>
                <input type="text" class="form-control" id="height" autocomplete="off" onkeyup="getTable()">
            </div>
            <div class="col-md-12">
                <label>Area below</label>
                <input type="text" class="form-control" id="area" autocomplete="off" onkeyup="getTable()">
            </div>
        </div>           
        <div class="col-md-9">
            <table id="city_table" class="table table-striped table-bordered pretty" style="width:100%">
                <thead>
                    <tr>
                    <th>City Name</th>                
                    <th>Area</th>
                    <th>Population</th>
                    <th>Height</th>
                    <th>Population Density</th>
                    <th>Birth per Woman per year</th>
                    <th>Growth Rate</th>
                    </tr>
                </thead>
                <tbody id="cities_tbody">
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
window.onload = function() {
  getTable();
}

function getTable()
{
    var birth_min=$('#birth_min').val();
    var birth_max=$('#birth_max').val();
    var population_min=$('#population_min').val();
    var population_max=$('#population_max').val();
    var height=$('#height').val();
    var area=$('#area').val();
    $.ajax({
        url:"get_cities.php",        
        dataType:'JSON',
        type:"POST",
        data:{
            birth_min:birth_min,
            birth_max:birth_max,
            population_min:population_min,
            population_max:population_max,
            height:height,
            area:area,
        },
        success: function(result) {
            $('#cities_tbody').html('');
            var table;
            $.each(result, function(key, val){
                table+=`<tr>
                    <td>`+val.name+`</td>
                    <td>`+val.area+`</td>
                    <td>`+val.population+`</td>
                    <td>`+val.height+`</td>
                    <td>`+val.population_density+`</td>
                    <td>`+val.births+`</td>
                    <td>`+val.growth_rate+`</td>
                </tr>`;
            })            
            $('#cities_tbody').append(table);
        },
    });
}
</script>
                