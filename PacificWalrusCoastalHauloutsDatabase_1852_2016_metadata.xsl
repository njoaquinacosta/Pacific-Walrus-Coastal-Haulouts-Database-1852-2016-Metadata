<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html> 
  <head>
  <title>Pacific Walrus Coastal Haulouts Database 1852-2016 Metadata</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <style>
    html {font-family: Calibri, Arial, san-serif; }

    h2 { text-align: center; }
    
    table, th, td { padding: 5px; border: 1px solid black; border-collapse: collapse; }

    table { border-collapse: collapse; width: 80%; }

    a:link, a:visited {
    background-color: #DAA520;
    color: #FFFAF0;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    }
    
    a:hover, a:active {
    background-color: #778899;
    text-decoration: none;
    }
    
    .center {
    margin: auto;
    width: 90%;
    padding: 10px;
    }

    .tcenter {
        margin: auto;
        width: 60%;
        padding: 10px 70px;
        position: relative;
        text-align: center;
    }

    #rcorners {
    border-radius: 300px 300px 300px 300px;
    background: #73AD21;
    padding: 10px; 
    width: 30px;
    height: 30px;
    }
  </style>
  </head>
  <body class="center">
  <h1>Pacific Walrus Coastal Haulouts Database 1852 2016 Metadata</h1>
    <table>
    <tr bgcolor="#6A5ACD">
      <th style="text-align:center"><h2><xsl:text>Title</xsl:text></h2></th>
      <th style="text-align:center"><h2><xsl:text>Description</xsl:text></h2></th>
    </tr>
    <xsl:for-each select="metadata/idinfo">
      <xsl:for-each select = "citation/citeinfo">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Origin</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "origin"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Origin</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "origin[last()-1]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Origin</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "origin[last()-2]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Origin</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "origin[last()]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Pubdate</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "pubdate"/></td>
     </tr>
    <tr>
      <th bgcolor="#daa520"><strong><xsl:text>Title</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "title"/></td>
     </tr>
    <tr>
      <th bgcolor="#daa520"><strong><xsl:text>Edition</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "edition"/></td>
     </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Geoform</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select = "geoform"/></td>
     </tr>
    <tr>
      <th bgcolor="#daa520"><strong><xsl:text>Pubplace</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/pubplace"/></td>
     </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Publish</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/publish"/></td>
     </tr>
    <tr>
      <th bgcolor="#daa520"><strong><xsl:text>Onlink</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="onlink"/><i style="font-size:24px" class="fa"> <a href="http://dx.doi.org/10.5066/F7RX994P" target="_blank" style="margin-left: 10px;" id="rcorners">&#xf08e;</a></i></td>
     </tr>
      </xsl:for-each>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Abstract</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/abstract"/></td>
    </tr>
     <tr>
      <th bgcolor="#daa520"><strong><xsl:text>Purpose</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/purpose"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Supplinf</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/supplinf"/></td>
    </tr>
     <tr>
      <th rowspan="2" width="15%" bgcolor="#daa520"><strong><xsl:text>Timeperd</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><b>Begdate: </b><xsl:value-of select="*/*/*/begdate"/></td>
    </tr>
    <tr>
      <td bgcolor="#d9ffb3"><b>Enddate: </b><xsl:value-of select="*/*/*/enddate"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Current</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/current"/></td>
    </tr>
     <tr>
      <th rowspan="2" width="15%" bgcolor="#daa520"><strong><xsl:text>Status</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><b>Progress: </b><xsl:value-of select="*/progress"/></td>
    </tr>
    <tr>
     <td bgcolor="#d9ffb3"><b>Update: </b><xsl:value-of select="*/update"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Descgeog</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/descgeog"/></td>
    </tr>
     <tr>
      <th rowspan="4" width="15%" bgcolor="#daa520"><strong><xsl:text>Bounding</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><b>Westbc: </b><xsl:value-of select="*/*/westbc"/></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"><b>Eastbc:</b> <xsl:value-of select="*/*/eastbc"/></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"><b>Northbc:</b> <xsl:value-of select="*/*/northbc"/></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"><b>Southbc: </b><xsl:value-of select="*/*/southbc"/></td>
    </tr>
    <!--Theme-->
    <tr>
    <th width="15%" bgcolor="#daa520"><strong><xsl:text>Theme</xsl:text></strong></th>
     <td class="tcenter">
      <table>
      <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Themekt</xsl:text></strong></th>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Themekey</xsl:text></strong></th>
      </tr>
     <tr>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekt"/></td>
      <td bgcolor="#d9ffb3"></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"></td>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekey"/></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"></td>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekey[last()-3]"/></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"></td>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekey[last()-2]"/></td>
    </tr>
    <tr>
      <td bgcolor="#d9ffb3"></td>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekey[last()-1]"/></td>
    </tr>
     <tr>
      <th bgcolor="#d9ffb3"></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekey[last()]"/></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekt[contains(text(),'ISO')]"/></td>
      <td bgcolor="#d9ffb3"></td>
    </tr>
     <tr>
      <td bgcolor="#d9ffb3"></td>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/themekey[contains(text(),'biota')]"/></td>
    </tr>
     </table>
     </td>
    </tr>
    <!--Place-->
    <tr>
    <th width="15%" bgcolor="#daa520"><strong><xsl:text>Place</xsl:text></strong></th>
     <td class="tcenter">
      <table>
       <tr>
       <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekt</xsl:text></strong></th>
      <th bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekt"/></th>
      </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-8]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-7]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-6]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-5]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-4]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-3]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-2]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()-1]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Placekey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/placekey[last()]"/></td>
    </tr>
     </table>
     </td>
    </tr>
    <!--Stratum-->
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Stratkt</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/stratkt"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Stratkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/stratkey"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Stratkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/stratkey[last()]"/></td>
    </tr>
    <!--Keyword Taxonomy-->
    <tr>
    <th width="15%" bgcolor="#daa520"><strong><xsl:text>Keywtax</xsl:text></strong></th>
     <td class="tcenter">
      <table>
       <tr>
       <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkt</xsl:text></strong></th>
       <th bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkt"/></th>
      </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey"/></td>
    </tr> <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey[last()-5]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey[last()-4]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey[last()-3]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey[last()-2]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey[last()-1]"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonkey</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonkey[last()]"/></td>
    </tr>
     </table>
     </td>
    </tr>
    <!--Taxonomy System-->
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonomy System</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/origin"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Published Date</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/pubdate"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Title</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/title"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Geoform</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/geoform"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Serinfo</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/serinfo"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Sername</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/sername"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Issue</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/issue"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Publishplace</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/pubplace"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Publish</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/publish"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Othercit</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/othercit"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxonpro</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonpro"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxoncom</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxoncom"/></td>
    </tr>
    <!--Taxoncl-->
    <tr>
    <th width="15%" bgcolor="#daa520"><strong><xsl:text>Taxoncl</xsl:text></strong></th>
     <td class="tcenter">
      <table>
       <tr>
       <th bgcolor="#daa520"><strong><xsl:text>Taxonnrn</xsl:text></strong></th>
       <th bgcolor="#daa520"><strong><xsl:text>Taxonnrv</xsl:text></strong></th>
       <th bgcolor="#daa520"><strong><xsl:text>Common</xsl:text></strong></th>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonrn"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/taxonrv"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/common"/></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/taxonrn[contains(text(),'Phylum')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/taxonrv[contains(text(),'Chordata')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/common[contains(text(),'chordates')]"/></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/taxonrn[contains(text(),'Subphylum')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/taxonrv[contains(text(),'Vertebrata')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/taxonrn[contains(text(),'Class')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/taxonrv[contains(text(),'Mammalia')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/taxonrn[contains(text(),'Subclass')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/taxonrv[contains(text(),'Theria')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/taxonrn[contains(text(),'Infraclass')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/taxonrv[contains(text(),'Eutheria')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/taxonrn[contains(text(),'Order')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/taxonrv[contains(text(),'Carnivora')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/taxonrn[contains(text(),'Suborder')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/taxonrv[contains(text(),'Caniformia')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/taxonrn[contains(text(),'Family')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/taxonrv[contains(text(),'Odobenidae')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:text> </xsl:text></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/*/taxonrn[contains(text(),'Genus')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/*/taxonrv[contains(text(),'Odobenus')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/*/common[contains(text(),'Walruses')]"/></td>
      </tr>
      <tr>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/*/*/taxonrn[contains(text(),'Species')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/*/*/taxonrv[contains(text(),'Odobenus rosmarus divergens')]"/></td>
        <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/*/*/*/*/*/*/common[contains(text(),'Pacific walrus')]"/></td>
      </tr>
     </table>
     </td>
    </tr>
    <!--Taxoncom-->
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Accconst</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="accconst"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Useconst</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="useconst"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Ptcontac</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/cntorg"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Address Type</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/addrtype"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Address</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/address"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>City</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/city"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>State</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/state"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Postal</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/postal"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Country</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/country"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Voice</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/cntvoice"/></td>
    </tr>
     <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>E-Mail</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/cntemail"/><i style="font-size:24px" class="fa"> <a href="mailto:ascweb@usgs.gov" style="margin-left: 10px;" id="rcorners">&#xf003;</a></i></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Datacred</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="datacred"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Cross-reference</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/origin"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Origin</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/origin"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Pub Date</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/pubdate"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Title</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/title"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Geoform</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/geoform"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Sername</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/sername"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Issue</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/issue"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Pub Info</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/pubinfo"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Pub Place</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/pubplace"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Publish</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/publish"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Other Citation</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/othercit"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Onlink</xsl:text></strong></th>
          <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/onlink"/><i style="font-size:24px" class="fa"> <a href="http://dx.doi.org/10.3133/ofr20161108" target="_blank" style="margin-left: 10px;" id="rcorners">&#xf08e;</a></i></td>
    </tr>
  </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th width="15%" style="text-align: center"><xsl:text>Title</xsl:text></th>
      <th style="text-align: center"><xsl:text>Description</xsl:text></th>
    </tr>
    <xsl:for-each select="metadata/dataqual">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Attraccr</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/attraccr"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Logic</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="logic"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Complete</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="complete"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Horizpar</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/horizpar"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Methtype</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/methtype"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Methdesc</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/methdesc"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Procdesc</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/procdesc"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Procdate</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/procdate"/></td>
    </tr>
    </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th style="text-align: center" padding="15"><xsl:text>Title</xsl:text></th>
      <th style="text-align: center" padding="15"><xsl:text>Description</xsl:text></th>
    </tr>
    <xsl:for-each select="metadata/spdoinfo">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Direct</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="direct"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Sdtstype</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/sdtstype"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Ptvctcnt</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/ptvctcnt"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Sdtstype</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>String</xsl:text></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Ptvctcnt</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>18</xsl:text></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Sdtstype</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>String</xsl:text></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Ptvctcnt</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>18</xsl:text></td>
    </tr>
    </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th style="text-align: center" padding="15"><xsl:text>Title</xsl:text></th>
      <th style="text-align: center" padding="15"><xsl:text>Description</xsl:text></th>
    </tr>
    <xsl:for-each select="metadata/spref">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Latres</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*//latres"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Longres</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/longres"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Geogunit</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/geogunit"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Horizdn</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/horizdn"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Ellips</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/ellips"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Semiaxis</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/semiaxis"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Denflat</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/denflat"/></td>
    </tr>
    </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th style="text-align: center" padding="15"><xsl:text>Title</xsl:text></th>
      <th style="text-align: center" padding="15"><xsl:text>Description</xsl:text></th>
    </tr>
    <xsl:for-each select="metadata/eainfo">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Enttypl</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypl"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Enttypd</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypd"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Enttypds</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypds"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Attrlabl</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Attrdef</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Attrdefs</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong><xsl:text>Udom</xsl:text></strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Name')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Primary name used')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom"/></td>
    </tr>
    <!--AlternateName-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'AlternateName')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Alternate names used to reference')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom"/></td>
    </tr>
    <!--RU_Name-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'RU_Name')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Alternate names used to reference the haulout in English language reports.  Each alternative name is separated by a semi-colon.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Country')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Abbreviation of the country on whose shores the haulout is found.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'US')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'United States of America')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Sea-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Name of the sea on which shores the haulout is found.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Sea-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Beaufort')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Beaufort Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Bering-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Bering')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Chukchi-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Chukchi')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--East Siberian-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'East Siberian')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'East Siberian Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--North Pacific-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'North Pacific')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'North Pacific Ocean')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Region-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Region')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Name of the region in which the haulout is found.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Alaska Peninsula-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Alaska Peninsula')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast extending from the mouth of Naknek River to Cape Sarichef in the south-eastern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Aleutian Islands-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Aleutian Islands')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Islands extending from the Alaska Peninsula out to and including the Commander Islands')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Beaufort Sea-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Beaufort Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast extending east of Point Barrow')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Bering Strait-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Bering Strait and Chirikov Basin')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'The region north of Saint Lawrence Island encompassing Cape Chaplina, the Bering Strait, and Sledge Island in the northern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Bristol Bay-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Bristol Bay')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between Cape Newenham and the Naknek River in the south-eastern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Central Bering Sea-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Central Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coasts of Saint Matthew and Hall Islands in the central Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--East Siberian Coast-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'East Siberian coast')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast west of Long Strait in the eastern East Siberian Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Eastern Chukchi Sea-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Eastern Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Eastern coast of the Chukchi Sea north of Kotzebue Sound')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Gulf of Anadyr-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Gulf of Anadyr')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between Cape Chukotskiy and Cape Navarin in the north-western Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Kamchatka-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Kamchatka')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Western coast of the Kamchatka Peninsula south of Cape Anana in the south-western Bering Sea and north Pacific Ocean')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Koryak Coast-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Koryak Coast')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast of the Koryak mountains between Cape Anana and Cape Navarin in the western Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Kotzebue Sound-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Kotzebue Sound')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between Cape Krusenstern and Cape Espenberg in the south-eastern Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Kuskowim Bay-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Kuskokwim Bay')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast at the mouth of the Kuskokwim River between Cape Newenham and the village of Kipnik')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Norton Sound-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Norton Sound')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>Coast at the mouth of the Kuskokwim River between Cape Newenham and the village of Kipnik</xsl:text></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Nunivak Island-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Nunivak Island')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast of Nunivak Island in the eastern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Pribilof Islands-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Pribilof Islands')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Pribilof Islands in the central Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Saint Lawrence Island-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Saint Lawrence Island')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Saint Lawrence and Punuk Islands in the northern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Western Chukchi Coast-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Western Chukchi Coast')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Russian coast west of the Bering Strait and east of Long Strait in the western Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Wrangel Island area-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Wrangel Island area')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast of Wrangel Island and adjacent islands in the western Chukchi and eastern East Siberian Seas')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Lon-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Lon')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Longitude expressed in decimal degrees east of Greenwich')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--Lat-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Lat')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Latitude expressed in decimal degrees north of the equator')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--Notes-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Notes')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Notes describing the haulout location and history of use with citations to original reports, as well as personal communications and observations of the authors')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--OrderOfLargestUse-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'OrderOfLargestUse')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Order of magnitude of the maximum number of walruses reported (0 to 5 on the log10 scale, indicating the range from less than 10 to over 100,000)')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'-1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'The maximum number of walruses was not reported.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Fewer than 10 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 10 and fewer than 100 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'2')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 100 and fewer than 1,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'3')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 1,000 and fewer than 10,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'4')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 10,000 and fewer than 100,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'5')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'100,000 walruses or more reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--LargestUse-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'LargestUse')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Order of magnitude of the maximum number of walruses reported (0 to 5 on the log10 scale, indicating the range from less than 10 to over 100,000)')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Not Reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'The maximum number of walruses was not reported.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Fewer than 10 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Fewer than 10 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 10 and fewer than 100 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 100 and fewer than 1,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 1,000 and fewer than 10,000 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 1,000 and fewer than 10,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 10,000 and fewer than 100,000 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'100,000 walruses or more reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--DecadeOfMostRecentReportedUse-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'DecadeOfMostRecentReportedUse')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'The decade of the most recent reported haulout use')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--HerdCompositions-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'HerdCompositions')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'The reported composition of walruses using the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Predominately males')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Predominately males were reported at the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'not reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No herd composition is reported for the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Mixed age and sex classes')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Both males, adult females and their young are reported at the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Predominately females and dependent calves')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Predominately females and dependent calves are reported at the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Jan_Feb_Mar-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Jan_Feb_Mar')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of January through March')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of January through March.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of January through March.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Apr_May_Jun-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Apr_May_Jun')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of April through June')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of April through June.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of April through June.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Jul_Aug_Sep-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Jul_Aug_Sep')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of July through September')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of April through June.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of April through June.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Jul_Aug_Sep')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of July through September')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of July through September.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of July through September.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Oct_Nov_Dec-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Oct_Nov_Dec')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of October through December')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdfs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of October through December.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of October through December.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--LinearFeature-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'LinearFeature')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Is this haulout described with a linear feature?  Some have repeatedly formed along an extended stretch of coastline and are best presented as a linear geographic feature in addition to a point feature.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdfs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, the haulout is described with a linear feature.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, the haulout is not described with a linear feature.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--PacificWalrusHauloutsDatabaseLinearFeatures.shp-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttypl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypl[contains(text(),'PacificWalrusHauloutsDatabaseLinearFeatures.shp')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttypd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypd[contains(text(),'Digital Geographic Information System representation of linear features of haulouts that required a linear feature for their geographic representation.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttypds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypl[contains(text(),'http://www.gdal.org/drv_shapefile.html')]"/><xsl:text>http://www.gdal.org/drv_shapefile.html</xsl:text><i style="font-size:24px" class="fa"> <a href="http://www.gdal.org/drv_shapefile.html" target="_blank" style="margin-left: 10px;" id="rcorners">&#xf08e;</a></i></td>
    </tr>
    <!--FID-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'FID')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Internal feature number')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'ESRI, also known as Environmental Systems Research Institute founded 1969 in Redlands, California')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Sequential unique whole numbers that are automatically generated.')]"/></td>
    </tr>
    <!--Shape-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Shape')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Feature geometry')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'ESRI, also known as Environmental Systems Research Institute founded 1969 in Redlands, California')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Coordinates defining the features in the coordinate system defined for the overall dataset.')]"/></td>
    </tr>
    <!--Id-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Id')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Integer identifier used to link linear features to tabular data in the PacificWalrusHauloutDatabase.csv table.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Values assigned by data producer during the digitizing of the linear coastal features.')]"/></td>
    </tr>
    <!--PacificWalrusHauloutDatabase.KML-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttpyl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypl[contains(text(),'PacificWalrusHauloutDatabase.KML')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttypd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypd[contains(text(),'Keyhole Markup Language file containing all fields of the database in tabular format, including the Cyrillic')]"/></td>
    </tr>
    <!--PK-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'PK')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Primary key uniquely identifying each haulout record with an integer value that may be used to link this record to linear features within a GIS context.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--Name-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Name')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Primary name used to reference the haulout in English language reports.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--AlternateName-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'AlternateName')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Alternate names used to reference the haulout in English language reports.  Each alternative name is separated by a semi-colon.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Русское название-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Русское название')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Primary names used to reference the haulout in Russian language reports.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--Country-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Country')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Abbreviation of the country on whose shores the haulout is found.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--RU-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'RU')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Russian Federation')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--US-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'US')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'United States of America')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Sea-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Name of the sea on which shores the haulout is found.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Beaufort')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Beaufort Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Bering')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Chukchi')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'East Siberian')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'East Siberian Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'North Pacific')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'North Pacific Ocean')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Region-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Region')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Name of the region in which the haulout is found.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Beaufort')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Beaufort Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Bering Strait and Chirikov Basin')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'The region north of Saint Lawrence Island encompassing Cape Chaplina, the Bering Strait, and Sledge Island in the northern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Bristol Bay')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between Cape Newenham and the Naknek River in the south-eastern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Central Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coasts of Saint Matthew and Hall Islands in the central Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'East Siberian coast')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast west of Long Strait in the eastern East Siberian Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Eastern Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Eastern coast of the Chukchi Sea north of Kotzebue Sound')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Gulf of Anadyr')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between Cape Chukotskiy and Cape Navarin in the north-western Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Kamchatka')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Western coast of the Kamchatka Peninsula south of Cape Anana in the south-western Bering Sea and north Pacific Ocean')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Koryak Coast')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast of the Koryak mountains between Cape Anana and Cape Navarin in the western Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Kotzebue Sound')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between Cape Krusenstern and Cape Espenberg in the south-eastern Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Kuskokwim Bay')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast at the mouth of the Kuskokwim River between Cape Newenham and the village of Kipnik')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Norton Sound')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast between the mouth of the Yukon River and the town of Nome in the north-eastern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Nunivak Island')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast of Nunivak Island in the eastern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Pribilof Island')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Pribilof Islands in the central Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Saint Lawrence Island')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Saint Lawrence and Punuk Islands in the northern Bering Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Western Chukchi Coast')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Russian coast west of the Bering Strait and east of Long Strait in the western Chukchi Sea')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Wrangel Island area')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Coast of Wrangel Island and adjacent islands in the western Chukchi and eastern East Siberian Seas')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Lon-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Lon')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Longitude expressed in decimal degrees east of Greenwich')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--Lat-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Lat')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Latitude expressed in decimal degrees north of the equator')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--Notes-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Notes')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Notes describing the haulout location and history of use with citations to original reports, as well as personal communications and observations of the authors')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!--OrderOfLargestUse-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'OrderOfLargestUse')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Order of magnitude of the maximum number of walruses reported (0 to 5 on the log10 scale, indicating the range from less than 10 to over 100,000)')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Udom</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/udom[contains(text(),'Domain not known')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'-1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'The maximum number of walruses was not reported.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Fewer than 10 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 10 and fewer than 100 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'2')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 100 and fewer than 1,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'3')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 1,000 and fewer than 10,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'4')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 10,000 and fewer than 100,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'5')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'100,000 walruses or more reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--LargestUse-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'LargestUse')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Order of magnitude of the maximum number of walruses reported (0 to 5 on the log10 scale, indicating the range from less than 10 to over 100,000)')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Not Reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'The maximum number of walruses was not reported.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Fewer than 10 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Fewer than 10 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 10 and fewer than 100 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 10 and fewer than 100 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 100 and fewer than 1,000 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 100 and fewer than 1,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 1,000 and fewer than 10,000 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 1,000 and fewer than 10,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'At least 10,000 and fewer than 100,000 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'At least 10,000 and fewer than 100,000 walruses reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'more than 100,000 walruses')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'100,000 walruses or more reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>DecadeOfMostRecentReportedUse</xsl:text></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>The decade of the most recent reported haulout use</xsl:text></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:text>Author Defined</xsl:text></td>
    </tr>
    <!--HerdCompositions-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'HerdCompositions')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'The reported composition of walruses using the haulout')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Predominately males')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Predominately males were reported at the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'not reported')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No herd composition is reported for the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Mixed age and sex classes')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Both males, adult females and their young are reported at the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Predominately females and dependent calves')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Predominately females and dependent calves are reported at the haulout.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Jan_Feb_Mar-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Jan_Feb_Mar')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of January through March')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'Predominately females and dependent calves')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of January through March.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of January through March.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Apr_May_Jun-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Apr_May_Jun')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of April through June')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'-1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of April through June.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of April through June.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Jul_Aug_Sep-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Jul_Aug_Sep')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of July through September')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'-1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of July through September.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of July through September.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!--Use_in_Oct_Nov_Dec-->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrlabl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrlabl[contains(text(),'Use_in_Oct_Nov_Dec')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdef</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdef[contains(text(),'Haulout use reported during the months of October through December')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Attrdefs</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/attrdefs[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'-1')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'Yes, haulout use was reported during the months of October through December.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomv</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomv[contains(text(),'0')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvd[contains(text(),'No, haulout use was not reported during the months of October through December.')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Edomvds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/edomvds[contains(text(),'Author Defined')]"/></td>
    </tr>
    <!---->
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttpyl</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypl[contains(text(),'PacificWalrusHauloutDatabaseBibliography_DS.RIS')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttypd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypd[contains(text(),'Machine readable bibliography of the reports cited in the Pacific Walrus Coastal Haulout Database.  This bibliography contains 151 citations for reports cited in the Pacific Walrus Coastal Haulout Database.  Within the Pacific Walrus Coastal Haulout Database each haulout record includes a narrative summary of reports that mention the haulout along with citations to the reports listed in the bibliography.  This machine readable bibliography is provided to enable the use of the biobliography records in bibliographic managment software; and is a complete copy of the bibliography provided as appendix A to the open file report (USGS OFR 2016-110, http://dx.doi.org/10.3133/ofr20161108). The RIS file format was developed by Research Information Systems, which produced the bibliographic management software Refman, and was later acquired by Thomson ISI ResearchSoft.  The file format and encoding specification for the RIS file is available from Thomson Reuters at http://refman.com/support/risformat_intro.asp and also available through Wikipedia at https://en.wikipedia.org/wiki/RIS_(file_format).')]"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Enttypds</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/enttypds[contains(text(),'Author Defined')]"/></td>
    </tr>
    </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th style="text-align: center" padding="15">Title</th>
      <th style="text-align: center" padding="15">Description</th>
    </tr>
    <xsl:for-each select="metadata/eainfo">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Eaover</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/eaover"/></td>
    </tr>
    </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th style="text-align: center" padding="15">Title</th>
      <th style="text-align: center" padding="15">Description</th>
    </tr>
    <xsl:for-each select="metadata/distinfo">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Cntorg</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/cntorg"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Cntpos</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/cntpos"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Addrtype</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/addrtype"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Address</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/address"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>City</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/city"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>State</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/state"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Postal</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/postal"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Country</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/country"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Cntvoice</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/cntvoice"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Cntemail</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/cntemail"/><i style="font-size:24px" class="fa"> <a href="mailto:ascweb@usgs.gov" style="margin-left: 10px;" id="rcorners">&#xf003;</a></i></td>
    </tr>
    </xsl:for-each>
    <tr bgcolor="#6A5ACD">
      <th style="text-align: center" padding="15">Title</th>
      <th style="text-align: center" padding="15">Description</th>
    </tr>
    <xsl:for-each select="metadata/distinfo">
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Resdesc</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="resdesc"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Distliab</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="distliab"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Formname</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/formname"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Formverd</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/formverd"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Filedec</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/filedec"/></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Networkr</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/*/*/*/*/*/networkr"/><i style="font-size:24px" class="fa"> <a href="http://dx.doi.org/10.5066/F7RX994P" target="_blank" style="margin-left: 10px;" id="rcorners">&#xf08e;</a></i></td>
    </tr>
    <tr>
      <th width="15%" bgcolor="#daa520"><strong>Fees</strong></th>
      <td bgcolor="#d9ffb3"><xsl:value-of select="*/fees"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>