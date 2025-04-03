INSERT INTO film(title, release_year,language_id, rental_duration, rental_rate)
VALUES ('SLEUTH', 2007,1, 2, 4.99);


INSERT INTO actor(first_name, last_name)
VALUES 
('MICHAEL','CAINE'),
('JUDE','LAW');

INSERT INTO film_actor
VALUES
(201, 1002),
(202,1002);


INSERT INTO inventory (film_id, store_id)
VALUES
(1002,1);



