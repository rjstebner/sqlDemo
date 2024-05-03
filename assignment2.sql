INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starknet.com', 'Iam1ronM@n');


UPDATE public.account
SET account_type = 'admin'
WHERE account_email = 'tony@starknet.com';

DELETE FROM account WHERE account_id = 1;

UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_model = 'Hummer' and inv_make = 'GM';

SELECT 
    inventory.inv_make, 
    inventory.inv_model, 
    classification.classificaiton_name 
FROM 
    public.inventory 
INNER JOIN 
    public.classification 
ON 
    inventory.classification_id = classification.classification_id 
WHERE 
    classification.classificaiton_name = 'Sport';

UPDATE public.inventory
SET 
    inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');