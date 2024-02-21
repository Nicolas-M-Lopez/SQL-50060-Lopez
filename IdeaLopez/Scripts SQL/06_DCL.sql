DROP USER IF EXISTS 'NICOLAS'; -- Elimino el usuario si existe
CREATE USER IF NOT EXISTS 'NICOLAS' IDENTIFIED BY 'CONTRASEÑA1'; -- Creo el usuario y le asigno una contraseña
GRANT SELECT, INSERT, UPDATE ON GESTAR.* TO 'NICOLAS'; -- Le doy permisos al usuario para poder Leer, Insertar y Modificar cualquier tabla del schema Gestar
SHOW GRANTS FOR 'NICOLAS'; -- Checkeo los permisos que tiene el usuario Nicolas

DROP USER IF EXISTS 'MAIRA'; -- Elimino el usuario si existe
CREATE USER IF NOT EXISTS 'MAIRA' IDENTIFIED BY 'CONTRASEÑA2'; -- Creo el usuario y le asigno una contraseña
GRANT SELECT ON GESTAR.* TO 'MAIRA'; -- Le doy permiso al usuario para solamente poder leer cualquier tabla del schema Gestar
SHOW GRANTS FOR 'MAIRA';  -- Checkeo los permisos que tiene el usuario Maira