# simple JSON
variable "simple"
/*
  Following JSON is the variable annotation JSON
  {
  "hidden" : false
  }
*/
{
}

variable "complex"
/*
  Following JSON is the variable annotation JSON
  {
  "hidden" : true,
  "range" : {
    "start" : 1,
    "end" : 5
   }
  }
*/
{
}

variable "simple - complex"
/*
  Following JSON is the variable annotation JSON
  {
  "hidden" : true
  }
*/
{
}

# simple JSON with some leading comment
variable "simple_leading_comment"
/*
  This is some comment which is not part of the variable annotation
  Following JSON is the variable annotation JSON
  {
  "hidden" : true
  }
  This is some comment which is not part of the variable annotation  
*/
{
}

# simple JSON with some comment but no JSON
variable "simple_leading_comment_no_JSON"
/*
  This is some comment which is not part of the variable annotation  
*/
{
}

# simple JSON with multiple JSONs
variable "simple_leading_multiple_JSONs"
/*
 This is some comment which is not part of the variable annotation
 Any leading JSONs are ignored. 
  {
  "validJSON" : false
  }
  This is some comment which is not part of the variable annotation
  Following JSON is the variable annotation JSON
  {
  "validJSON" : true
  }
  This is some comment which is not part of the variable annotation
*/
{
}

# simple JSON with JSON error
variable "simple_leading_JSON_error"
/*
  Following JSON is the variable annotation JSON
  {
  "validJSON" : true,
  }
*/
{
}

# complex JSON
variable "complex"
/*
  Following JSON is the variable annotation JSON
  {
    "visible" : false,
    "range" : {
      "start" : 1,
      "end" : 42
    },
    "selectionList" : [
    "red",
    "green",
    "blue"
    ],
    "regex" : "[0-9]+.[0-9]*"
  }
*/
{
}

# variable with option
variable "<script>alert(1)</script>"
/*
  Following JSON is the variable annotation JSON
  {
    "visible" : true,
    "options" : [
      {
        "value": "dc1",    
        "label": "My Favorite DC",  
        "default": "true"  
      },
      {
        "value": "dc2",    
        "label": "Second DC"
      },
      {
        "value": "javascript",    
        "label": "<script>alert(1)</script>"
      }
    ]
  }
*/
{
  default = "dc2"
}
