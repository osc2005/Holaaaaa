USE SistemaEducatDB
GO

ALTER TABLE Maestro
ADD CONSTRAINT FK_Maestro_Roles
    FOREIGN KEY (Id) REFERENCES AspNetRoles(Id);
GO

ALTER TABLE Seccion
ADD CONSTRAINT FK_Secciones_Maestro
    FOREIGN KEY (RTNMaestro) REFERENCES Maestro(RTN);  -- Nueva relación con RTN
GO



ALTER TABLE Matricula
ADD CONSTRAINT FK_Matricula_Secciones
    FOREIGN KEY (IDSeccion) REFERENCES Seccion(IDSeccion);   -- Relación por RTN
GO


ALTER TABLE Nota
ADD CONSTRAINT FK_Notas_Secciones
    FOREIGN KEY (IDSeccion) REFERENCES Seccion(IDSeccion);  
GO

ALTER TABLE Nota
ADD CONSTRAINT DF_Nota_FechaRegistro DEFAULT GETDATE() FOR FechaRegistro;
GO

