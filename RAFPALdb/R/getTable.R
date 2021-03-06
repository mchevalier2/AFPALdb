#' Get the Site table.
#'
#' This function allows you to get all the entries from the AFPALdb.Site table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Site_Name' by default.
#' @keywords getTable
#' @export
#' @examples
#' sites=getSiteList()
#' sites=getSiteList(ORDERBY="Site_ID")
#' sites=getSiteList("Site_Name")

getSiteList=function(ORDERBY="Site_Name"){
    return(.executeSQL(paste("select * from Site",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the Reference table.
#'
#' This function allows you to get all the entries from the AFPALdb.Reference table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Citation_Key' by default.
#' @keywords getTable
#' @export
#' @examples
#' ref=getReferenceList()
#' ref=getReferenceList("Citation_Key")

getReferenceList=function(ORDERBY="Citation_Key"){
    return(.executeSQL(paste("select * from Reference",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the Dataset table.
#'
#' This function allows you to get all the entries from the AFPALdb.Reference table, except the data.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Dataset_ID' by default.
#' @keywords getTable
#' @export
#' @examples
#' dataset=getDatasetList()
#' dataset=getDatasetList("Proxy")
#' dataset=getDatasetList("Record_Name,Citation_Key")

getDatasetList=function(ORDERBY="Dataset_ID"){
    return(.executeSQL(paste("select Dataset_ID, Site_Name, Citation_Key, Proxy, Digitized from Dataset",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the Chronology table.
#'
#' This function allows you to get all the entries from the AFPALdb.Chronology table, except the data.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Chrono_ID' by default.
#' @keywords getTable
#' @export
#' @examples
#' chronology=getChronologyList()
#' chronology=getChronologyList("Record_Name")

getChronologyList=function(ORDERBY="Chrono_ID"){
    return(.executeSQL(paste("select Chrono_ID, Citation_Key, Site_Name, Chrono_Name, Model, Digitized from Chronology",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the Age table.
#'
#' This function allows you to get all the entries from the AFPALdb.C14 table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'LabCode' by default.
#' @keywords getTable
#' @export
#' @examples
#' Age=getAgeList()
#' Age=getAgeList("LabCode")

getAgeList=function(ORDERBY="LabCode"){
    return(.executeSQL(paste("select * from Age",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the ChronoData table.
#'
#' This function allows you to get all the entries from the AFPALdb.ChronoData table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Chrono_ID x Dataset_ID' by default.
#' @keywords getTable
#' @export
#' @examples
#' chronodata=getChronoDataList()
#' chronodata=getChronoDataList("Dataset_ID")

getChronoDataList=function(ORDERBY="Chrono_ID,Dataset_ID"){
    return(.executeSQL(paste("select * from ChronoData",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the ChronoC14 table.
#'
#' This function allows you to get all the entries from the AFPALdb.ChronoC14 table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Chrono_ID x LabCode' by default.
#' @keywords getTable
#' @export
#' @examples
#' chronocAge=getChronoAgeList()
#' chronocAge=getChronoAgeList("LabCode")

getChronoAgeList=function(ORDERBY="Chrono_ID,LabCode"){
    return(.executeSQL(paste("select * from ChronoAge",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the RefSite table.
#'
#' This function allows you to get all the entries from the AFPALdb.RefSite table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Citation_Key x Record_Name' by default.
#' @keywords getTable
#' @export
#' @examples
#' refsite=getRefSiteList()
#' refsite=getRefSiteList("Record_Name")

getRefSiteList=function(ORDERBY="Citation_Key,Record_Name"){
    return(.executeSQL(paste("select * from RefSite",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the SiteRegion table.
#'
#' This function allows you to get all the entries from the AFPALdb.SiteRegion table.
#' @param ORDERBY Set of variables (separated by a comma) to order the results by. Results sorted by 'Region' by default.
#' @keywords getTable
#' @export
#' @examples
#' siteregion=getSiteRegionList()
#' siteregion=getSiteRegionList("SRZ")

getSiteRegionList=function(ORDERBY="Region"){
    return(.executeSQL(paste("select * from SiteRegion",ifelse(ORDERBY=="","",paste(" ORDER BY",ORDERBY)),sep=""))[[2]])
}

#' Get the Taxalist table.
#'
#' This function allows you to get all the entries from the AFPALdb.Taxalist table.
#' @keywords getTable
#' @export
#' @examples
#' taxalist=getTaxalist()

getTaxalist=function(){
    return(.executeSQL("select * from Taxalist")[[2]])
}

#' Get the distrib table.
#'
#' This function allows you to get all the entries from the AFPALdb.distrib table.
#' @keywords getTable
#' @export
#' @examples
#' distrib=getDistrib()

getDistrib=function(){
    return(.executeSQL("select * from distrib")[[2]])
}

#' Get the Biome table.
#'
#' This function allows you to get all the entries from the AFPALdb.Biome table.
#' @keywords getTable
#' @export
#' @examples
#' biome=getBiome()

getBiome=function(){
    return(.executeSQL("select * from Biome")[[2]])
}

#' Get the Altitude table.
#'
#' This function allows you to get all the entries from the AFPALdb.Altitude table.
#' @keywords getTable
#' @export
#' @examples
#' altitude=getAltitude()

getAltitude=function(){
    return(.executeSQL("select * from Altitude")[[2]])
}

#' Get the tmpr_min table.
#'
#' This function allows you to get all the entries from the AFPALdb.tmpr_min table.
#' @keywords getTable
#' @export
#' @examples
#' tmpr_min=getTmpr_min()

getTmpr_min=function(){
    return(.executeSQL("select * from tmpr_min")[[2]])
}

#' Get the tmpr_max table.
#'
#' This function allows you to get all the entries from the AFPALdb.tmpr_max table.
#' @keywords getTable
#' @export
#' @examples
#' tmpr_max=getTmpr_max()

getTmpr_max=function(){
    return(.executeSQL("select * from tmpr_max")[[2]])
}

#' Get the tmpr_mean table.
#'
#' This function allows you to get all the entries from the AFPALdb.tmpr_mean table.
#' @keywords getTable
#' @export
#' @examples
#' tmpr_mean=getTmpr_mean()

getTmpr_mean=function(){
    return(.executeSQL("select * from tmpr_mean")[[2]])
}

#' Get the PET table.
#'
#' This function allows you to get all the entries from the AFPALdb.PET table.
#' @keywords getTable
#' @export
#' @examples
#' pet=getPET()

getPET=function(){
    return(.executeSQL("select * from pet")[[2]])
}

#' Get the precip table.
#'
#' This function allows you to get all the entries from the AFPALdb.precip table.
#' @keywords getTable
#' @export
#' @examples
#' precip=getPrecip()

getPrecip=function(){
    return(.executeSQL("select * from precip")[[2]])
}

#' Get the bio table.
#'
#' This function allows you to get all the entries from the AFPALdb.bio table.
#' @keywords getTable
#' @export
#' @examples
#' bio=getBio()

getBio=function(){
    return(.executeSQL("select * from bio")[[2]])
}
