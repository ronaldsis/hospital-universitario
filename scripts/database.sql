SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Persona` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cedula` VARCHAR(12) NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `apellido` VARCHAR(45) NOT NULL ,
  `fechaNacimiento` DATETIME NOT NULL ,
  `telefono` VARCHAR(45) NULL ,
  `direccion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Cargo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cargo` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Cargo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `TipoEmpleado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `TipoEmpleado` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `TipoEmpleado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Dependencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Dependencia` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Dependencia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Usuario` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL ,
  `clave` VARCHAR(45) NOT NULL , 
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Empleado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Empleado` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Empleado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idPersona` INT NOT NULL ,
  `idCargo` INT NOT NULL ,
  `idTipoEmpleado` INT NOT NULL ,
  `idDependencia` INT NOT NULL ,
  `idUsuario` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Permiso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Permiso` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Permiso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `HistoriaClinica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `HistoriaClinica` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `HistoriaClinica` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Paciente` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Paciente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idPersona` INT NOT NULL ,
  `idHistoriaClinica` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Factura` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Factura` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idPaciente` INT NOT NULL ,
  `fechaGeneracion` DATETIME NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Cuenta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cuenta` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Cuenta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idFactura` INT NOT NULL ,
  `fechaGeneracion` DATETIME NULL ,
  `descripcion` VARCHAR(45) NULL ,
  `valor` DECIMAL(12) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `FormaDePago`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FormaDePago` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `FormaDePago` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Pago`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Pago` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Pago` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idFactura` INT NOT NULL ,
  `idFormaDePago` INT NOT NULL ,
  `fechaDePago` VARCHAR(45) NULL ,
  `valor` DECIMAL(12) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `TipoExamen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `TipoExamen` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `TipoExamen` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Examen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Examen` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Examen` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idHistoriaClinica` INT NOT NULL ,
  `fechaSolicitud` DATETIME NULL ,
  `fechaAplicacion` DATETIME NULL ,
  `observacion` VARCHAR(45) NULL ,
  `idTipoExamen` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Dieta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Dieta` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Dieta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idHistoriaClinica` INT NOT NULL ,
  `fechaInicio` DATETIME NULL ,
  `fechaFinalizacion` VARCHAR(45) NULL ,
  `contenido` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `TipoTratamiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `TipoTratamiento` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `TipoTratamiento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Tratamiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Tratamiento` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Tratamiento` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idHistoriaClinica` INT NOT NULL ,
  `idTipoTratamiento` INT NOT NULL ,
  `fechaSolicitud` DATETIME NULL ,
  `fechaInicio` DATETIME NULL ,
  `fechaFinalizacion` DATETIME NULL ,
  `observaciones` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Resultado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Resultado` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `Resultado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idExamen` INT NOT NULL ,
  `fechaEntrega` DATETIME NULL ,
  `descripcion` VARCHAR(45) NULL ,
  `doucmentoAsociado` INT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `PermisosXUsuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PermisosXUsuario` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `PermisosXUsuario` (
  `idUsuario` INT NOT NULL ,
  `idPermiso` INT NOT NULL ,
  PRIMARY KEY (`idPermiso`, `idUsuario`) )
ENGINE = InnoDB;

SHOW WARNINGS;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
