<?php
$team_name = 'Динамо Киев';
$city = 'Киев';
$logo = 'dynamo.png';
$stadium_name = 'Олимпийский';
$opacity = 67000;

$team = new Team($team_name, $city, $logo, $stadium_name, $opacity);
echo 'Название стадиона - '. $team-> getStadiumName();


class Team{
    private $team_name;
    private $city;
    private $logo;
    private $stadium_name;
    private $opacity;

    public function __construct($team_name, $city, $logo, $stadium_name, $opacity)
    { $this->team_name = $team_name;
      $this->city = $city;
      $this->logo = $logo;
      $this->stadium_name = $stadium_name;
      $this->opacity = $opacity;
    }

    public function setTeamName($team_name)
    {    $this->team_name = $team_name;   }

    public function getTeamName()
    {     return $this->team_name;  }

    public function setCity($city)
    {     $this->city = $city;    }

    public function getCity()
    {   return $this->city;   }

    public function setLogo($logo)
    {     $this->logo = $logo;   }

    public function getLogo()
    {     return $this->logo;  }

    public function setStadiumName($stadium_name)
    {     $this->stadium_name = $stadium_name;   }

    public function getStadiumName()
    {    return $this->stadium_name;   }

    public function setOpacity($opacity)
    {    $this->opacity = $opacity;  }

    public function getOpacity()
    {        return $this->opacity;    }
}
?>