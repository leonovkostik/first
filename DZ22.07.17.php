<?php
$stadium_id = 1;
$city_id = 1;
$name = 'Олимпийский';
$opacity = 67000;

$stadium = new Stadium($stadium_id, $city_id, $name, $opacity);
echo 'Номер стадиона - '. $stadium-> getCityId();

class City {
    private $name;
    private $city_id;

    public function __construct($name, $city_id)
    {  $this->name = $name;
       $this->city_id = $city_id;
    }
    public function setName($name)
    {   $this->name = $name;   }

    public function getName()
    {    return $this->name;   }

    public function setCityId($city_id)
    { $this->city_id = $city_id; }

    public function getCityId()
    {  return $this->city_id;  }
}
class Stadium
{
    private $stadium_id;
    private $city_id;
    private $name;
    private $opacity;

    public function __construct($stadium_id, $city_id, $name, $opacity )
    { $this-> stadium_id = $stadium_id;
      $this-> city_id = $city_id;
      $this-> name = $name;
      $this-> opacity = $opacity;
    }

    public function getStadiumId()
    {  return $this->stadium_id;   }

    public function setStadiumId($stadium_id)
    { $this->stadium_id = $stadium_id;  }

    public function setCityId($city_id)
    {     $this->city_id = $city_id;  }

    public function getCityId()
    {    return $this->city_id;  }

    public function setName($name)
    {    $this->name = $name;  }

    public function getName()
    {   return $this->name;  }

    public function setOpacity($opacity)
    {   $this->opacity = $opacity;   }

    public function getOpacity()
    {    return $this->opacity;   }
}
class Team{
    private $team_id;
    private $city_id;
    private $stadium_id;
    private $name;

    public function __construct($team_id, $city_id, $stadium_id, $name)
    { $this->team_id = $team_id;
      $this->city_id = $city_id;
      $this->stadium_id = $stadium_id;
      $this->name = $name;
    }

    public function setTeamId($team_id)
    {  $this->team_id = $team_id;   }

    public function getTeamId()
    { return $this->team_id;  }

    public function setCityId($city_id)
    {    $this->city_id = $city_id; }

    public function getCityId()
    {   return $this->city_id;  }

    public function setStadiumId($stadium_id)
    {    $this->stadium_id = $stadium_id;   }

    public function getStadiumId()
    {   return $this->stadium_id;   }

    public function setName($name)
    {   $this->name = $name;   }

    public function getName()
    {  return $this->name;  }
}
?>