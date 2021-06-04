<?php
include('msConfig.php');

$birth_max=$_POST['birth_max'];
$birth_min=$_POST['birth_min'];
$population_max=$_POST['population_max'];
$population_min=$_POST['population_min'];
$height=$_POST['height'];
$area=$_POST['area'];

$resarray= array();
$filter= array();

$birth="";
$population="";
$height_fil="";
$area_fil="";

if(!empty($birth_max) && !empty($birth_min))
{
    $filter['birth']='births BETWEEN '.$birth_min.' AND '.$birth_max;
}
else if(!empty($birth_min) && empty($birth_max))
{
    $filter['birth']='births > '.$birth_min;
}
else if(empty($birth_min) && !empty($birth_max))
{
    $filter['birth']='births < '.$birth_max;
}


if(!empty($population_max) && !empty($population_min))
{
    $filter['population']='population BETWEEN '.$population_min.' AND '.$population_max;
}
else if(!empty($population_min) && empty($population_max))
{
    $filter['population']='population > '.$population_min;
}
else if(empty($population_min) && !empty($population_max))
{
    $filter['population']='population < '.$population_max;
}

if(!empty($height))
{
    $filter['height']='height > '.$height;
}
if(!empty($area))
{
    $filter['area']='area < '.$area;
}

$sql="SELECT * FROM cities";

if (count($filter) > 0) 
{
    $sql .= " WHERE " . implode(' AND ', $filter);
}

$result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
while($row =mysqli_fetch_assoc($result))
{     
    $resarray[] = $row;
}

if($resarray == null)
{
    $row['name']="No data available";
    $row['area']="";
    $row['population']="";
    $row['height']="";
    $row['population_density']="";
    $row['births']="";
    $row['growth_rate']="";
    $resarray[] = $row;
}

echo json_encode($resarray,JSON_UNESCAPED_SLASHES);
mysqli_close($connection);
?>