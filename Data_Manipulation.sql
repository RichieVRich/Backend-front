-- Insert data example 1, (`VideoGame` entity)
INSERT INTO `VideoGame` (`id`, `Title`, `PublisherID`, `DeveloperID`, `Modes`, `ReleaseDate`, `Genre`)
VALUES (:idInput, :TitleInput, :PublisherIDInput, :DeveloperIDInput, :ModesInput, :ReleaseDateInput, :GenreInput)

-- Insert data example 2, (`Gamers` entity)
INSERT INTO `Gamers` (`Userid` , `Uname` , `T_Games`, `CC`, `email`)
VALUES (:UseridInput, :UnameInput, :T_GamesInput, :CCInput, emailInput)

-- Insert data example 3, (`ContentCreator` entity)
-- Inserting into table that organizes 1:M relationship with Gamers
INSERT INTO `ContentCreator` (`id`, `CCname`, `Followers`, `Fam_fri`)
VALUES (:idInput, :CCnameInput, :FollowersInput, :Fam_friInput)

-- Insert data example 4, (`Business` entity)
INSERT INTO `Business` (`id`, `Cname`, `GameID`, `ShopID`)
VALUES (:idInput, :CnameInput, :GameIDInput, :ShopIDInput)

-- Insert data example 5, (`Modes` entity)
INSERT INTO `Modes` (`id`, `modes`)
VALUES (:idInput, :modesInput)

-- Insert data example 6, (`Merch` entity)
INSERT INTO `Merch` (`id`, `Type`, `Name`, `Color`)
VALUES (:idInput, :TypeInput, :NameInput, :ColorInput)

-- Insert data example 7, (`Shop` entity)
INSERT INTO `Shop` (`id`, `GameID`, `MerchID`, `Genre`)
VALUES (:idInput, :GameIDInput, :MerchIDInput, :GenreInput)

-- Select data, example 1 (`VideoGame` entity)
-- Get all of the names of Video Games
SELECT :TitleFilter
FROM `VideoGame`

-- Select data, example 2 (`Gamers` entity)
-- Get the specific username from UsernameInput
SELECT :UnameFilter 
FROM `Gamers` 
WHERE Uname=:UnameInput

-- Select data, example 2 (`Gamers` entity)
-- Select if the user is a content creator or not.
SELECT :CCFilter
FROM `Gamers` 
WHERE CC=:CCInput

-- Select data, example 3 (`ContentCreator` entity)
-- Select if the user is a content creator or not.
SELECT :Fam_friFilter
FROM `ContentCreator` 
WHERE Fam_fri=:Fam_friInput

-- Select data, example 4 (`Business` entity)
-- Get the specific Content Creator
SELECT :CnameFilter
FROM `Business`
WHERE Cname=:CnameInput

-- Update data, example 1 (`Gamers` entity)
-- Change Username
UPDATE `Gamers`
SET Uname = ' '
WHERE Userid = :UseridInput
SET Uname = :UnameInput

-- Update data, example 2 (`ContentCreator` entity)
-- Change from family friendly into not family friendly content
UPDATE `ContentCreator`
SET Fam_fri =:Fam_friInput
WHERE id = :idInput

-- Delete data, example 1 (`Gamers` entity)
-- Delete the User
DELETE FROM `Gamers` WHERE UserID = :UserIDInput

-- Delete data, example 2 (`Content Creator` entity)
-- Delete the Content Creator status, and goes back into a normal user.
DELETE FROM `ContentCreator` WHERE CCID = :CCIDInput

-- Delete data, example 3 (`Business` entity)
-- Delete Business
DELETE FROM `Business` WHERE BusinessID = :BusinessIDInput