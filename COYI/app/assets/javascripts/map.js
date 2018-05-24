// function btnrefresh(){
//   window.location.reload(true);
// }

//Run map after callback from API
function initMap() {
  // Map markers. All are hard coded
  var markers = [
    {
      'lat': '51.509865',
      'lng': '-0.118092',
      'type': 'info',
      'city': 'London',
      'lead1': 'Tim Heard',
      'lead2': 'David Spears',
      'facebook': 'https://www.facebook.com/COYILondon/',
      'twitter': 'circleofyi',
      'linkedin1': 'https://www.linkedin.com/in/timjrheard/',
      'linkedin2': 'https://www.linkedin.com/in/davidjspears/',
      'email': 'mailto:lydia.rollinson@yougov.com',
      'image1': 'https://media.licdn.com/dms/image/C5603AQFcED_wN5MdCA/profile-displayphoto-shrink_800_800/0?e=1527699600&v=alpha&t=GNCzdWObNM_onOO93dDmPHrRSv2AFzd30T0xovFG5ac',
      'image2': 'https://media.licdn.com/dms/image/C4D03AQFpyuQwJ2_RNQ/profile-displayphoto-shrink_800_800/0?e=1527703200&v=alpha&t=bELc7lpzpe0hfpUNJarjbgYnmuHwmPrkITmkUpsjqpc'
    },
    {
      'lat': '34.05223',
      'lng': '-118.24368',
      'type': 'info',
      'city': 'Los Angeles',
      'lead': 'Justin Deshaw',
      'facebook': '',
      'twitter': 'Deshawaustin',
      'linkedin': 'https://www.linkedin.com/in/justin-deshaw-5574b51a/',
      'email': 'mailto:justin.deshaw@gmail.com',
      'image': 'https://media.licdn.com/dms/image/C4D03AQHWLgL0e9VEzA/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=PGYFpgz4TRVZomhKzj7xHdun8uyaR4bIFCUOSgXwrrE'
    },
    {
      'lat': '38.90719',
      'lng': '-77.03687',
      'type': 'info',
      'city': 'Washington DC',
      'lead1': 'John Balkam',
      'lead2': 'Achal Patel',
      'facebook': 'https://www.facebook.com/dccircleofyi/',
      'twitter': 'JohnBalkam',
      'linkedin1': 'https://www.linkedin.com/in/johnbalkam/',
      'linkedin2': 'https://www.linkedin.com/in/achalapatel/',
      'email': 'mailto:jrbalkam@gmail.com',
      'image1': 'https://media.licdn.com/dms/image/C5603AQEHOELhL3-jOw/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=b6i9VI6ccl2zdvauXxZZTkshyexvZ5SP7LJ0xkHk6fk',
      'image2': 'https://media.licdn.com/dms/image/C5603AQHmxDCLyJUR1Q/profile-displayphoto-shrink_800_800/0?e=1527699600&v=alpha&t=pKQjkFrhWZ-TRkgpDHWe546P31tZwxAVqd_WbudSTgo'
    },
    {
      'lat': '40.71278',
      'lng': '-74.00594',
      'type': 'info',
      'city': 'New York City',
      'lead': 'Hallie Stebbins ',
      'facebook': 'https://www.facebook.com/COYINYC/',
      'twitter': 'circleofyi',
      'linkedin': 'https://www.linkedin.com/in/hallie-stebbins-76b170133/',
      'email': 'mailto:hallie.stebbins@gmail.com',
      'image': 'images/no_profile.jpg'
    },
    {
      'lat': '42.36008',
      'lng': '-71.05888',
      'type': 'info',
      'city': 'Boston',
      'lead': 'Alejandra Grupp',
      'facebook': 'https://www.facebook.com/COYIBoston/',
      'twitter': 'Alejagrupp ',
      'linkedin': 'https://www.linkedin.com/in/alejandra-grupp-5aa7a51a/',
      'email': 'mailto:alejandragrupp@gmail.com',
      'image': 'https://media.licdn.com/dms/image/C4D03AQF9bW6iTmkshQ/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=79sHTwpAKeT6KTngZGn3z5UULGEleHbAUpvTbmWQKy8'
    },
    {
      'lat': '53.3498',
      'lng': '-6.2603',
      'type': 'info',
      'city': 'Dublin',
      'lead': 'Ciara Keane',
      'facebook': 'https://www.facebook.com/COYIdublin/',
      'twitter': 'circleofyi',
      'linkedin': 'https://www.linkedin.com/in/ciara-keane-517b6a56/',
      'email': '',
      'image': 'https://media.licdn.com/dms/image/C5103AQGlwV-ZG6DKbA/profile-displayphoto-shrink_800_800/0?e=1527616800&v=alpha&t=QLerN1h64ZV_yWH-9oN2eiW5JjUoJl2odva1lAawDP0'
    },
    {
      'lat': '52.48624',
      'lng': '-1.8904',
      'type': 'info',
      'city': 'Birmingham',
      'lead': 'Sally Eaves',
      'facebook': '',
      'twitter': 'Sallyeaves',
      'linkedin': 'https://www.linkedin.com/in/sally-eaves/',
      'email': 'mailto:business@sallyeaves.co.uk',
      'image': 'https://media.licdn.com/dms/image/C5103AQElrldKmcifIQ/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=YzQ2hHmKHd4FLH7Wg3vOx65N1BoqAiHg4uPtqs1vU5U'
    },
    {
      'lat': '48.85661',
      'lng': '2.35222',
      'type': 'info',
      'city': 'Paris',
      'lead': 'Anna Donna-Hie',
      'facebook': 'https://www.facebook.com/COYIparis/',
      'twitter': 'Anna_Donnahie ',
      'linkedin': 'https://www.linkedin.com/in/annadonahie/',
      'email': 'mailto:annadonahie@gmail.com',
      'image': 'images/no_profile.jpg'
    },
    {
      'lat': '43.73841',
      'lng': '7.42461',
      'type': 'info',
      'city': 'Monaco',
      'lead': 'Dara Miller',
      'facebook': '',
      'twitter': 'DaraMiller23',
      'linkedin': 'https://www.linkedin.com/in/dara-mclean-0491563/',
      'email': 'mailto:miller.dara@gmail.com',
      'image': 'https://media.licdn.com/dms/image/C4E03AQFeHV8ulYPM1A/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=2JtRYgntniqRnz0aDfLHCNaT596XQs0w0iClsGH52TM'
    },
    {
      'lat': '52.37021',
      'lng': '4.89516',
      'type': 'info',
      'city': 'Amsterdam',
      'lead': 'Aouatif Tawfik',
      'facebook': '',
      'twitter': 'TFTWFK',
      'linkedin': 'https://www.linkedin.com/in/aouatif-tawfik-mba-2a108a4b/',
      'email': 'mailto:aouatif.tawfik@unilever.com',
      'image': 'https://media.licdn.com/dms/image/C5603AQH8u2I6i6XigQ/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=M1uwIGDXHlALJzZMT9nwsjTkNrOmce9wYFTiB6KGxgI'
    },
    {
      'lat': '33.57311',
      'lng': '-7.58984',
      'type': 'info',
      'city': 'Casablanca',
      'lead': 'Guillaume Vigier',
      'facebook': '',
      'twitter': 'G_Vigier',
      'linkedin': 'https://www.linkedin.com/in/gvigier/',
      'email': 'mailto:gvigier.mazars@gmail.com',
      'image': 'images/no_profile.jpg'
    },
    {
      'lat': '28.61393',
      'lng': '77.20902',
      'type': 'info',
      'city': 'New Delhi',
      'lead': 'Ashutosh Kumar',
      'facebook': 'https://www.facebook.com/COYIIndia/',
      'twitter': 'circleofyi',
      'linkedin': 'https://www.linkedin.com/in/ashutosh-kumar-9b86686/',
      'email': 'mailto:helloashu.kumar@gmail.com',
      'image': 'https://media.licdn.com/dms/image/C4E03AQG1DdEsSU0NRA/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=zg1TajnrnWum5QbsbXPVqi_b8TPkVJ7bEGCUxgj5SUQ'
    },
    {
      'lat': '1.35208',
      'lng': '103.81983',
      'type': 'info',
      'city': 'Singapore',
      'lead': 'David Nosibor',
      'facebook': 'https://www.facebook.com/coyisingapore/',
      'twitter': 'DavidNosibor',
      'linkedin': 'https://www.linkedin.com/in/davidnosibor/',
      'email': 'mailto:david.nosibor@mazars.com.sg',
      'image': 'https://media.licdn.com/dms/image/C4D03AQF2iqL7ufztVg/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=ttHaAkmzzh8dDYloUwtyt27yJtf5Z8TqmIor_YRJv-4'
    },
    {
      'lat': '-26.2041',
      'lng': '28.0473',
      'type': 'info',
      'city': 'Johannesburg',
      'lead1': 'Fabio Henriquez',
      'lead2': 'Hiram Garcia',
      'facebook': 'https://www.facebook.com/COYIJoburg/',
      'twitter': 'https://twitter.com/coyi_jhb',
      'linkedin1': 'https://www.linkedin.com/in/fabiohenriquez/',
      'linkedin2': 'https://www.linkedin.com/in/garciahiram/',
      'email': '',
      'image1': 'images/no_profile.jpg',
      'image2': 'https://media.licdn.com/dms/image/C5603AQF3Ql1Z01VpHg/profile-displayphoto-shrink_800_800/0?e=1527595200&v=alpha&t=oWNRCZW1l8msdDilHfaorWJIXMpxPGvzevsYyZl4hIc'
    },
    {
      'lat': '-33.86881',
      'lng': '151.20929',
      'type': 'info',
      'city': 'Sydney',
      'lead': 'Laurie Brown',
      'facebook': 'https://www.facebook.com/circleofyisydney/',
      'twitter': 'LauriesBrown',
      'linkedin': 'https://www.linkedin.com/in/lauriesbrown/',
      'email': 'mailto:laurie.s.brown@hotmail.com',
      'image': 'https://media.licdn.com/dms/image/C4E03AQEf3cFJF8mSCQ/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=gIHbkogr6tBNvDOAfZh_GY1hv_t7P5FgDOIE5F4zRro'
    },
    {
      'lat': '40.44062',
      'lng': '-79.99588',
      'type': 'info',
      'city': 'Pittsburgh',
      'lead': 'Meg Trite',
      'facebook': 'https://www.facebook.com/COYIPGH/',
      'twitter': 'meg_trite',
      'linkedin': 'https://www.linkedin.com/in/megantrite/',
      'email': 'mailto:megtrite@gmail.com',
      'image': 'https://media.licdn.com/dms/image/C4D03AQGNvhn9W6S_tw/profile-displayphoto-shrink_800_800/0?e=1527591600&v=alpha&t=dbezZvGHm92DDHDjsfZFKk6HgOczvi9Fx6Cv9CZ8yDk'
    },
    {
      'lat': '25.2048',
      'lng': '55.2708',
      'type': 'info',
      'city': 'Dubai',
      'lead1': 'Mohamed Abdeljalil',
      'lead2': 'Mohamed Al Moosa',
      'facebook': 'https://www.facebook.com/COYIDXB/',
      'twitter': 'coyi_dxb',
      'linkedin1': 'https://www.linkedin.com/in/abdeljalil/',
      'linkedin2': 'https://www.linkedin.com/in/mohamed-al-moosa-998a764a/',
      'email': '',
      'image1': 'https://pbs.twimg.com/profile_images/801663756761710592/mVcS9nRH_400x400.jpg',
      'image2': 'https://media.licdn.com/dms/image/C5603AQH1jsrw15ePgw/profile-displayphoto-shrink_800_800/0?e=1527606000&v=alpha&t=cTsmVVeHyp0VUyf0b-ehWgNq56iAegrNLqgV4so1O-c'
    },
    {
      'lat': '43.70011',
      'lng': '-79.4163',
      'type': 'info',
      'city': 'Toronto',
      'lead1': 'Nader Saif',
      'lead2': 'Kabir Sewani',
      'facebook': 'https://www.facebook.com/COYIToronto/',
      'twitter': 'Nadersaif_ns',
      'linkedin1': 'https://www.linkedin.com/in/nadersaif/',
      'linkedin2': 'https://www.linkedin.com/in/kabir-sewani-b6512039/',
      'email': '',
      'image1': 'https://pbs.twimg.com/profile_images/921148429639839744/Wmxmi7Kg_400x400.jpg',
      'image2': 'https://media.licdn.com/dms/image/C5603AQE7w8cK8eMABg/profile-displayphoto-shrink_800_800/0?e=1527699600&v=alpha&t=NSO-ALq-0-4qXPgHu9TnQyViQ7D6DYHs15nZ5skQz_M'
    },
    {
      'lat': '41.8781',
      'lng': '-87.6298',
      'type': 'info',
      'city': 'Chicago',
      'lead1': 'Jack Redding',
      'lead2': 'Julie Muggli',
      'facebook': 'https://www.facebook.com/COYICHI/',
      'twitter': 'jredding90',
      'linkedin1': 'https://www.linkedin.com/in/jack-redding-6541b434/',
      'linkedin2': 'https://www.linkedin.com/in/juliemuggli/',
      'email': '',
      'image1': 'https://media.licdn.com/dms/image/C5603AQGezNRBULuJCA/profile-displayphoto-shrink_800_800/0?e=1527699600&v=alpha&t=5LWNqgVRNIX-quXjAW57Tgkmlwy2zVXDCCHyovOVrPo',
      'image2': 'images/no_profile.jpg'
    },
    {
      'lat': '59.3293',
      'lng': '18.0686',
      'type': 'info',
      'city': 'Stockholm',
      'lead1': 'Jacob Larsson',
      'lead2': 'Jonatan Norman',
      'facebook': 'https://www.facebook.com/COYIstockholm/',
      'twitter': 'circleofyi',
      'linkedin1': 'https://www.linkedin.com/in/jacobhlarsson/',
      'linkedin2': 'https://www.linkedin.com/in/jonatan-norman/',
      'email': '',
      'image1': 'https://media.licdn.com/dms/image/C4D03AQFR5tPbR4P-mw/profile-displayphoto-shrink_800_800/0?e=1527717600&v=alpha&t=r_Zic5lf6E06V2n9FGKppDk89EyuUhsfRyaqZuXove4',
      'image2': 'https://media.licdn.com/dms/image/C5603AQH7UiBOYlPzng/profile-displayphoto-shrink_800_800/0?e=1527717600&v=alpha&t=YUr5CZMEYg7ysNHYTU-UtLcIx6F40zpSjYrElm-Jg90'
    },
    {
      'lat': '-33.4489',
      'lng': '-70.6693',
      'type': 'info',
      'city': 'Santiago',
      'lead': 'Cristian Guerrero',
      'twitter': 'crisguerreroa',
      'facebook': 'https://www.facebook.com/Circle-of-Young-Intrapreneurs-Santiago-161754641086172/',
      'linkedin': 'https://www.linkedin.com/in/cristianguerreroa/',
      'email': '',
      'image': 'images/no_profile.jpg'
    },
    {
      'lat': '50.8503',
      'lng': '4.3517',
      'type': 'info',
      'city': 'Brussels',
      'lead1': 'Jason Stamm',
      'lead2': 'Elizabeth Woodward ',
      'facebook': 'https://www.facebook.com/coyibru/',
      'twitter': 'circleofyi',
      'linkedin1': 'https://www.linkedin.com/in/jason-stamm/',
      'linkedin2': 'https://www.linkedin.com/in/elizabethmwoodward/',
      'email': '',
      'image1': 'images/no_profile.jpg',
      'image2': 'https://media.licdn.com/dms/image/C5603AQGktFNQ25feLg/profile-displayphoto-shrink_800_800/0?e=1527721200&v=alpha&t=fKVxZ5C1VPK81n9cG2M6K-OFHZ97W5U1ATviQk5qPRE'
    }
  ];
  //After window is loaded load map
  window.onload = function () {
    LoadMap();
  }
  //images selected for map marker
  var icon = 'images/marker.png';

  //Load map function. Sets all map options and styles(color, border sizes)
  function LoadMap() {
    var mapOptions = {
      //Maps default location. Set to Dublin currently.
      center: new google.maps.LatLng(markers[5].lat, markers[5].lng),
      //Zoomed out view
      zoom: 2,
      styles: [{
          elementType: 'geometry.fill',
          stylers: [{
              color: '#F0564E'
            }]},
        {
          elementType: 'labels.icon',
          stylers: [{
              color: '#F0564E'
            }]},
        {
          elementType: 'labels.text',
          stylers: [{
              color: '#F0564E'
            }]},
        {
          elementType: 'labels.text.fill',
          stylers: [{
              weight: 0.5
            }]},
        {
          featureType: 'administrative',
          stylers: [{
              weight: 0.5
            }]},
        {
          featureType: 'administrative.land_parcel',
          stylers: [{
              color: '#F0564E'
            }]},
        {
          featureType: 'administrative.land_parcel',
          elementType: 'labels.text',
          stylers: [{
              color: '#F0564E'
            }]},
        {
          featureType: 'administrative.province',
          stylers: [{
              color: '#ffffff'
            },
            {
              visibility: 'simplified'
            }]},
        {
          featureType: 'administrative.province',
          elementType: 'geometry.fill',
          stylers: [{
              visibility: 'simplified'
            },
            {
              weight: 0.5
            }]},
        {
          featureType: 'landscape',
          stylers: [{
              color: '#ffffff'
            }]},
        {
          featureType: 'landscape',
          elementType: 'geometry.fill',
          stylers: [{
              color: '#ffffff'
            },
            {
              visibility: 'on'
            }]},
        {
          featureType: 'landscape.man_made',
          stylers: [{
              color: '#ffffff'
            }]},
        {
          featureType: 'landscape.natural',
          stylers: [{
              color: '#ffffff'
            }]},
        {
          featureType: 'landscape.natural.terrain',
          stylers: [{
              color: '#FFFFFF'
            }]},
        {
          featureType: 'road',
          stylers: [{
              visibility: 'off'
            }]},
        {
          featureType: 'transit',
          stylers: [{
              visibility: 'off'
            }]},
        {
          featureType: 'transit',
          elementType: 'geometry.fill',
          stylers: [{
              visibility: 'off'
            }]},
        {
          featureType: 'water',
          stylers: [{
              color: '#F0564E'
            }]}]
    };
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    //Create and open InfoWindow.
    var infoWindow = new google.maps.InfoWindow();
    //Loop through map marker data and place pegs
    for (var i = 0; i < markers.length; i++) {
      // var icon = 'marker.png';
      var icon = 'https://i.imgur.com/d2DM8vA.png';
      var data = markers[i];
      var myLatlng = new google.maps.LatLng(data.lat, data.lng);
      //Create map marker icon with data.
      var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: data.city,
        icon: icon
      });

      //Attach click event to the marker.
      (function (marker, data) {
        google.maps.event.addListener(marker, 'click', function (e) {
          var coleads = data.city.toString();

          //Wrap the content inside an HTML DIV in order to set height and width of InfoWindow.
          //Check if there is one or two chapter leads. Top if statement is for one lead. Bottom is for two.
          if(data.twitter && coleads !== 'Johannesburg' && coleads !== 'Dubai' && coleads !== 'Toronto' && coleads !== 'Chicago' && coleads !== 'Washington DC' && coleads !== 'London' && coleads !== 'Stockholm' && coleads !== 'Brussels') {
            infoWindow.setContent(
              '<section class="section text-center" id="siteNotice">' +
                '<div class="row">' +
                  '<div class="col-md-4 col-sm-4 col-xs-4">' +
                    '<div class="my-auto">' +
                      '<div class="card-up teal lighten-2"></div>' +
                      '<div class="avatar mx-auto white">' +
                        `<img class="rounded-circle" src="${data.image}" alt="${data.lead}">` +
                      '</div>' +
                    '</div>' +
                  '</div>' +
                    '<div class="col-md-8 col-sm-8 col-xs-8">' +
                      '<div class="card-body">' +
                        `<h5 class="card-title mt-1">${data.lead}</h5>` +
                        `<h6 class="card-title">${data.city}</h6>` +
                      '</div>' +
                    '</div>' +
                  '</div>' +
                '<div class="row center">' +
                  '<div class="map-social" >' +
                    `<a target="_blank" href="https://twitter.com/search?q=${data.twitter}&src=typd&lang=en-gb">` +
                    '<i class="fab fa-twitter" id="map-twitter"></i></a>' +
                    `<a target="_blank" href="${data.linkedin}">` +
                    '<i class="fab fa-linkedin-in" id="map-linkedin"></i></a>' +
                    `<a target="_blank" href="${data.facebook}">` +
                    '<i class="fab fa-facebook-f" id="map-facebook" ></i></a>' +
                  '</div>' +
                '</section>' +
              // '<div class="hr"></div>'+
              // '<div class="row center">' +
              // '<br>' +
              // '<div class="col-md-12 col-sm-12 col-xs-12 text-center" > <a href="#" class="success">Chapter Success Stories...</a> </div>' +
              '</div>'
              );
              // This is where the check occurs for two chapter leads
            } else if (coleads === 'Johannesburg' || coleads === 'Dubai' || coleads === 'Toronto' || coleads === 'Chicago' || coleads === 'Washington DC' || coleads === 'London' || coleads === 'Stockholm' || coleads === 'Brussels') {
              infoWindow.setContent(
                '<section class="section text-center" id="siteNotice">' +
                  '<div class="row">' +
                    '<div class="col-md-4 col-sm-4 col-xs-4">' +
                      '<div class="my-auto">' +
                        '<div class="card-up teal lighten-2"></div>' +
                        '<div class="avatar mx-auto white">' +
                          `<img class="rounded-circle" src="${data.image1}" alt="${data.lead1}">` +
                        '</div>' +
                      '</div>' +
                    '</div>' +
                    '<div class="col-md-8 col-sm-8 col-xs-8">' +
                      '<div class="card-body">' +
                        `<h5 class="card-title mt-1">${data.lead1}</h5>` +
                        `<h6 class="card-title"> ${data.city}</h6>` +
                      '</div>' +
                    '</div>' +
                  '</div>' +
                  '<div class="row center">' +
                    '<div class="map-social" >' +
                      `<a target="_blank" href="https://twitter.com/search?q= ${data.twitter} &src=typd&lang=en-gb">` +
                      '<i class="fab fa-twitter" id="map-twitter"></i></a>' +
                      `<a target="_blank" href="${data.linkedin1}">` +
                      '<i class="fab fa-linkedin-in" id="map-linkedin"></i></a>' +
                      `<a target="_blank" href="${data.facebook}">` +
                      '<i class="fab fa-facebook-f" id="map-facebook" ></i></a>' +
                    '</div>' +
                '</section>' +
                '<section class="section text-center" id="siteNotice">' +
                  '<div class="row">' +
                    '<div class="col-md-4 col-sm-4 col-xs-4">' +
                      '<div class="my-auto">' +
                        '<div class="card-up teal lighten-2"></div>' +
                        '<div class="avatar mx-auto white">' +
                          `<img class="rounded-circle" src="${data.image2}" alt="${data.lead2}">` +
                        '</div>' +
                      '</div>' +
                    '</div>' +
                    '<div class="col-md-8 col-sm-8 col-xs-8">' +
                      '<div class="card-body">' +
                        `<h5 class="card-title mt-1">${data.lead2}</h5>` +
                        `<h6 class="card-title">${data.city}</h6>` +
                      '</div>' +
                    '</div>' +
                  '</div>' +
                  '<div class="row center">' +
                    '<div class="map-social" >' +
                      `<a target="_blank" href="https://twitter.com/search?q= ${data.twitter} &src=typd&lang=en-gb">` +
                      '<i class="fab fa-twitter" id="map-twitter"></i></a>' +
                      `<a target="_blank" href="${data.linkedin2}">`+
                      '<i class="fab fa-linkedin-in" id="map-linkedin"></i></a>' +
                      `<a target="_blank" href="${data.facebook}">` +
                      '<i class="fab fa-facebook-f" id="map-facebook" ></i></a>' +
                  '</div>' +
                '</section>' +
                // '<div class="hr"></div>'+
                // '<div class="row center">' +
                // '<br>' +
                // '<div class="col-md-12 col-sm-12 col-xs-12 text-center" > <a href="#" class="success">Chapter Success Stories...</a> </div>' +
                '</div>');
              } else {
                // This styles the info window adding the city name and the chapter leads name
                infoWindow.setContent(
                  '<div id="content" style="background:#F0564E;padding:25px;color:white;">'+
                    '<div id="siteNotice">' +
                      `<h4>${data.city}</h4>` +
                      `<h5>${data.lead}</h5>` +
                    '</div>'+
                  '</div>');
              }
              // Simply opens the map and marker
              infoWindow.open(map, marker);
            });
          })(marker, data);
        }
      }
    };
