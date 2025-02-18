CREATE TABLE media_types (
    MediaTypeId INT PRIMARY KEY,
    Name VARCHAR(120)
);
CREATE TABLE genres(
    GenreId INT PRIMARY KEY,
    Name VARCHAR(120)
);
CREATE TABLE playlists (
    playlistId INT PRIMARY KEY,
    name VARCHAR(120)
);
CREATE TABLE artists (
    ArtistId INT PRIMARY KEY,
    Name VARCHAR(120)
);
CREATE TABLE albums (
    AlbumId INT PRIMARY KEY,
    Title VARCHAR(160),
    ArtistId INT,
    FOREIGN KEY (ArtistId) REFERENCES artists (ArtistId)
);
CREATE TABLE playlist_track (
    PlaylistId INT,
    TrackId INT,
    PRIMARY KEY (PlaylistId, TrackId),
    FOREIGN KEY (PlaylistId) REFERENCES playlists (PlaylistId),
    FOREIGN KEY (TrackId) REFERENCES tracks (TrackId)
);
CREATE TABLE tracks (
    TrackId INT PRIMARY KEY,
    Name VARCHAR(200),
    AlbumId INT,
    MediaTypeId INT,
    GenreId INT,
    Composer VARCHAR(220),
    Milliseconds INT,
    Bytes INT,
    UnitPrice NUMERIC(10,2),
    FOREIGN KEY (AlbumId) REFERENCES albums (AlbumId),
    FOREIGN KEY (MediaTypeId) REFERENCES media_types (MediaTypeId),
    FOREIGN KEY (GenreId) REFERENCES genres (GenreId)
);
CREATE TABLE customers (
    customersid integer PRIMARY KEY,
    lastName NVARCHAR(20),
    firstName NVARCHAR(20),
    company NVARCHAR(80),
    address NVARCHAR(70),
    city NVARCHAR(40),
    state NVARCHAR(40),
    country NVARCHAR(40),
    postalCode NVARCHAR(10),
    phone NVARCHAR(24),
    fax NVARCHAR(24),
    email NVARCHAR(60),
    supportRepId integer
);

CREATE TABLE employees (
    Employeeid integer PRIMARY KEY,
    lastName NVARCHAR(20),
    firstName NVARCHAR(20),
    title NVARCHAR(30),
    reportsTo integer,
    birthDate integer,
    hireDate integer,
    address NVARCHAR(70)
);
CREATE TABLE invoices (
    InvoiceId INT PRIMARY KEY,
    CustomerId INT,
    InvoiceDate DATETIME,
    BillingAddress VARCHAR(70),
    BillingCity VARCHAR(40),
    FOREIGN KEY (CustomerId) REFERENCES customers (CustomerId)
);