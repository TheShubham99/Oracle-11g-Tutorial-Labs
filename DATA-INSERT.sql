--  INSERT Data TO Database 

DECLARE 
p_name PRODUCT.PRODUCT_NAME%TYPE;
p_no PRODUCT.PRODUCT_ID%TYPE;
s_cost PRODUCT.STANDARD_COST%TYPE;
color PRODUCT.COLOR%TYPE;
list_p PRODUCT.LIST_PRICE%TYPE;
p_size PRODUCT.PRODUCT_SIZE%TYPE;
weight PRODUCT.WEIGHT%TYPE;
cat PRODUCT.PRODUCT_CATEGORY%TYPE;


BEGIN

INSERT INTO PRODUCT values(&p_no,'&p_name',&s_cost,'&color',&list_p,&p_size,&weight,'&cat');

end;

-- SELECT * FROM PRODUCT;