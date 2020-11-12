var search = document.getElementById("search2");
search.addEventListener("click", searchCode);

var xmlFilename = "../XML/products1.xml";

function searchCode() {
    var codeSearch = document.getElementById( "code" ).value;
  
    var result = document.getElementById( "result" );
    result.innerHTML = "";

    
    getXMLDocObject( xmlFilename, function ( xmlDoc ) {
        
      // extract the info from the xmlDoc object
      var catalog = xmlDoc.getElementsByTagName( "products" )[ 0 ];
      var products = catalog.getElementsByTagName( "product" );
      var found = false;
      var i;
  
      for ( i = 0; i < products.length; i += 1 ) {
       var code = products[i].id
        //var code = books[ i ].attributes[0].value;
  
        if ( codeSearch === code ) {
          var pCode = document.createElement( "p" );
          pCode.innerHTML = "id: " + codeSearch;
          result.appendChild( pCode );
            
          var pCategory = document.createElement( "p" );
          pCategory.innerHTML = products[ i ].children[ 0 ].nodeName + ": " + products[ i ].children[ 0 ].innerHTML;
          result.appendChild( pCategory );
  
          var pName = document.createElement( "p" );
          pName.innerHTML = products[ i ].children[ 2 ].nodeName + ": " + products[ i ].children[ 2 ].innerHTML;
          result.appendChild( pName );

          var pDesc = document.createElement( "p" );
          pDesc.innerHTML = products[ i ].children[ 3 ].nodeName + ": " + products[ i ].children[ 3 ].innerHTML;
          result.appendChild( pDesc );

          var pQtd = document.createElement( "p" );
          pQtd.innerHTML = products[ i ].children[ 4 ].nodeName + ": " + products[ i ].children[ 4 ].innerHTML;
          result.appendChild( pQtd );

          var pPrice = document.createElement( "p" );
          pPrice.innerHTML = products[ i ].children[ 5 ].nodeName + ": " + products[ i ].children[ 5 ].innerHTML;
          result.appendChild( pPrice );
  
          found = true;
        }
      }
  
      if ( !found ) {
        alert( "Book is not registered" );
      }
    } );
  }
  
  // Get file content and parse it to Document Object Model
  function getXMLDocObject( xmlFile, callback ) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
      if ( ( this.readyState === 4 ) && ( this.status === 200 ) ) {
        var xmlContent = this.responseText;
        var xmlDoc = parseXML( xmlContent );
        callback( xmlDoc );
      }
    };
    xhttp.open( 'GET', xmlFile, true );
    xhttp.send();
  }
  
  // Parse a text string into an XML DOM object
  function parseXML( xmlContent ) {
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString( xmlContent, 'text/xml' );
    return xmlDoc;
  }
  