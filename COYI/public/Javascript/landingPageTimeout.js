// redirect the user after 10 seconds if they don't click into the site
setTimeout(function(){
  document.cookie = "visited=true;";
  if(window.location.href == '/'){
    window.location.href = '/home';
  }
},10000);

// check if the user has visited the site before and redirect them if they have after 4 seconds
if(document.cookie == 'visited=true'){
  setTimeout(function(){
    document.cookie = "visited=true;";
    if(window.location.href == '/'){
      window.location.href = '/home';
    }
  },4000);
};
