--after each line there is comment. That comments value is the name of model function in application's backend that is using this/these querys
--
--in following format this means that all querys under comment are used by that same fucntion
--*comment
--SELECT id, username FROM users WHERE id = ?;
--SELECT id, title, description, url FROM clips WHERE userId = ?;
--
--

SELECT id, name FROM games ORDER BY name;   --getAll

SELECT games.id, games.name FROM games, clips where games.id = clips.gameId GROUP BY games.id;  --getAllWithClips

SELECT * FROM games WHERE name LIKE ?;  --search


SELECT users.username, clips.id, clips.title, clips.description, clips.url FROM users, clips WHERE users.id = clips.userId ORDER BY RAND()  --getRandomQuery

SELECT users.username, clips.id, clips.title, clips.description, clips.url FROM users, clips WHERE users.id = clips.userId AND clips.gameId = ? ORDER BY RAND();    --getByGameId

insert into clips (userId, title, description, gameId, url) VALUES (?, ?, ?, ?, ?);     --uploadClip

--deleteClip
SELECT * FROM clips WHERE id=? and userId=?;
DELETE FROM comments WHERE clipId=?;
DELETE FROM clips WHERE id=? and userId=?;


SELECT comments.comment, users.username FROM comments, users WHERE comments.userId = users.id AND comments.clipId = ?;  --getCommentsByClipId

SELECT comments.comment, users.username FROM comments, users WHERE comments.userId = ?;  --getCommentsByUserId

insert into comments (comment, userId, clipId) VALUES (?, ?, ?);    --addCommentToClipById

DELETE FROM comments WHERE id=? and userId=?;   --deleteCommentByCommentId

update comments set comment = ? where id = ? and userId = ?; --modifyCommentByCommentId


--getUserProfileById
SELECT id, username FROM users WHERE id = ?;
SELECT id, title, description, url FROM clips WHERE userId = ?;


SELECT * FROM users WHERE email = ?;    --getUserLogin

INSERT INTO users(username, email, password) VALUES(?, ?, ?);   --addUser

--updateUser
update users set email = ? userId = ?
update users set password = ? userId = ?
update users set password = ?, email = ? userId = ?