class User {
    User({
        required this.user,
        required this.carpetas,
    });

    UserUser user;
    List<Carpeta> carpetas;
}

class Carpeta {
    Carpeta({
        required this.cClave,
        required this.cNombre,
        required this.cTipo,
        required this.user,
        required this.notes,
    });

    int cClave;
    String cNombre;
    String cTipo;
    CarpetaUser user;
    List<Note> notes;
}

class Note {
    Note({
        required this.nClave,
        required this.nContenido,
        required this.nFechaCreada,
        this.nFechaBorrada,
        required this.nTipo,
        required this.folder,
    });

    int nClave;
    String nContenido;
    DateTime nFechaCreada;
    DateTime? nFechaBorrada;
    String nTipo;
    Folder folder;
}

class Folder {
    Folder({
        required this.cClave,
    });

    int cClave;
}

class CarpetaUser {
    CarpetaUser({
        required this.id,
    });

    int id;
}

class UserUser {
    UserUser({
        required this.id,
        required this.email,
        required this.firstName,
        required this.middleName,
        required this.firstSurname,
        required this.secondSurname,
        required this.username,
    });

    int id;
    String email;
    String firstName;
    String middleName;
    String firstSurname;
    String secondSurname;
    String username;
}