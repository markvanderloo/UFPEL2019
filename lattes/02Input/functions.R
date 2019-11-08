require(xml2)
require(lubridate)


# Function to extract fields from LATTES XML files
# Mark van der Loo
# 2019-11-04
extract_cv_data <- function(xml_file){
  xml <- read_xml(xml_file) 
  # Find CV
  cv_node <- xml_find_first(xml, "//CURRICULO-VITAE")
  # Get CV data
  cv <- xml_attrs(cv_node)
  cv[cv==""] <- NA
  
  # find address/institute info
  address_node <- xml_find_first(xml, "//ENDERECO-PROFISSIONAL")
  # get address/institute info
  address <- xml_attrs(address_node)[c(2,4)]
  # Set empty strings to missing
  address[address == ""] <- NA
  
   
  # find list of papers
  papers_node <- xml_find_all(xml, "//ARTIGO-PUBLICADO")
  # get length of list of papers
  papers <- length(papers_node)
  names(papers) <-"ARTIGOS"
  
  # find book chapters
  chapters_node <- xml_find_all(xml, "//CAPITULO-DE-LIVRO-PUBLICADO")
  # get length of list of book chapters
  chapters <- length(chapters_node)
  names(chapters) <- "CAPITULOS"
  
  # put everything in a single row
  out <- cbind(as.data.frame(t(cv))
        , as.data.frame(t(address))
        , as.data.frame(t(papers))
        , as.data.frame(t(chapters)))
 
  # Change names to lower-case, replace '-' with underscores
  names(out) <- tolower(names(out))
  names(out) <- gsub("-","_", names(out))
  
  out
} 





