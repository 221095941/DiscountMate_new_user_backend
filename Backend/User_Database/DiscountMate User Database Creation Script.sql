SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ProductCategory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ProductCategory` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ProductCategory` (
  `CategoryID` INT NOT NULL,
  `CategoryName` VARCHAR(200) NULL,
  PRIMARY KEY (`CategoryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Product` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Product` (
  `ProductID` INT NOT NULL,
  `ProductName` VARCHAR(200) NOT NULL,
  `ProductDescription` VARCHAR(200) NULL,
  `ProductUnit` INT NULL,
  `ProductSize` VARCHAR(200) NULL,
  `ProductImage` BLOB NULL,
  `ProductNutrition` VARCHAR(200) NULL,
  `ProductIngredients` VARCHAR(200) NULL,
  `ProductBarcode` VARCHAR(200) NULL,
  `ProductCategory_CategoryID` INT NOT NULL,
  PRIMARY KEY (`ProductID`, `ProductCategory_CategoryID`),
  INDEX `fk_Product_ProductCategory1_idx` (`ProductCategory_CategoryID` ASC) VISIBLE,
  CONSTRAINT `fk_Product_ProductCategory1`
    FOREIGN KEY (`ProductCategory_CategoryID`)
    REFERENCES `mydb`.`ProductCategory` (`CategoryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UserDetails` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserDetails` (
  `UserID` INT NOT NULL,
  `UserName` VARCHAR(200) NOT NULL,
  `UserEmail` VARCHAR(200) NOT NULL,
  `UserPasswordHash` VARCHAR(200) NOT NULL,
  `UserPasswordSalt` VARCHAR(200) NOT NULL,
  `UserPhone` VARCHAR(45) NOT NULL,
  `UserAddress` VARCHAR(200) NULL,
  `UserGPS` VARCHAR(200) NULL,
  PRIMARY KEY (`UserID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Prices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Prices` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Prices` (
  `PricesID` INT NOT NULL,
  `CurrentPrice` DECIMAL(8,2) NULL,
  `CurrentDiscountRate` DECIMAL(4,2) NULL,
  `CurrentDiscountPrice` DECIMAL(8,2) NULL,
  `PriceDate` TIMESTAMP(3) NULL,
  `Product_ProductID` INT NOT NULL,
  PRIMARY KEY (`PricesID`, `Product_ProductID`),
  INDEX `fk_Prices_Product1_idx` (`Product_ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_Prices_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Retailer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Retailer` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Retailer` (
  `RetailerID` INT NOT NULL,
  `RetailerName` VARCHAR(200) NULL,
  `RetailerWebsite` VARCHAR(200) NULL,
  PRIMARY KEY (`RetailerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`StoreLocation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`StoreLocation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`StoreLocation` (
  `StoreID` INT NOT NULL,
  `Address` VARCHAR(200) NULL,
  `StoreGPS` VARCHAR(200) NULL,
  `StoreName` VARCHAR(200) NULL,
  `Retailer_RetailerID` INT NOT NULL,
  PRIMARY KEY (`StoreID`, `Retailer_RetailerID`),
  INDEX `fk_StoreLocation_Retailer1_idx` (`Retailer_RetailerID` ASC) VISIBLE,
  CONSTRAINT `fk_StoreLocation_Retailer1`
    FOREIGN KEY (`Retailer_RetailerID`)
    REFERENCES `mydb`.`Retailer` (`RetailerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Stock` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Stock` (
  `StockID` INT NOT NULL,
  `StockQuantity` VARCHAR(200) NULL,
  `StoreLocation_StoreID` INT NOT NULL,
  `StoreLocation_Retailer_RetailerID` INT NOT NULL,
  `Product_ProductID` INT NOT NULL,
  PRIMARY KEY (`StockID`, `StoreLocation_StoreID`, `StoreLocation_Retailer_RetailerID`, `Product_ProductID`),
  INDEX `fk_Stock_StoreLocation1_idx` (`StoreLocation_StoreID` ASC, `StoreLocation_Retailer_RetailerID` ASC) VISIBLE,
  INDEX `fk_Stock_Product1_idx` (`Product_ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_Stock_StoreLocation1`
    FOREIGN KEY (`StoreLocation_StoreID` , `StoreLocation_Retailer_RetailerID`)
    REFERENCES `mydb`.`StoreLocation` (`StoreID` , `Retailer_RetailerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Stock_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserReviews`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UserReviews` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserReviews` (
  `ReviewID` INT NOT NULL,
  `Rating` INT NULL,
  `ReviewComment` VARCHAR(200) NULL,
  `Date` TIMESTAMP(3) NULL,
  `UserDetails_UserID` INT NOT NULL,
  `Product_ProductID` INT NOT NULL,
  PRIMARY KEY (`ReviewID`, `UserDetails_UserID`, `Product_ProductID`),
  INDEX `fk_UserReviews_UserDetails1_idx` (`UserDetails_UserID` ASC) VISIBLE,
  INDEX `fk_UserReviews_Product1_idx` (`Product_ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_UserReviews_UserDetails1`
    FOREIGN KEY (`UserDetails_UserID`)
    REFERENCES `mydb`.`UserDetails` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UserReviews_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProductPriceHistory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ProductPriceHistory` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ProductPriceHistory` (
  `Product_ProductID` INT NOT NULL,
  `Retailer_RetailerID` INT NOT NULL,
  `IPH_BasePrice` JSON NULL,
  `IPH_DiscountPrice` JSON NULL,
  `IPH_DiscountPercentage` JSON NULL,
  `IPH_Date` JSON NULL,
  `IPH_FOUR_WEEK_HIGHEST` DECIMAL(8,2) NULL,
  `IPH_FOUR_WEEK_LOWEST` DECIMAL(8,2) NULL,
  PRIMARY KEY (`Product_ProductID`, `Retailer_RetailerID`),
  INDEX `fk_ProductPriceHistory_Product_idx` (`Product_ProductID` ASC) VISIBLE,
  INDEX `fk_ProductPriceHistory_Retailer1_idx` (`Retailer_RetailerID` ASC) VISIBLE,
  CONSTRAINT `fk_ProductPriceHistory_Product`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductPriceHistory_Retailer1`
    FOREIGN KEY (`Retailer_RetailerID`)
    REFERENCES `mydb`.`Retailer` (`RetailerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ProductPricePrediction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ProductPricePrediction` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ProductPricePrediction` (
  `Product_ProductID` INT NOT NULL,
  `Retailer_RetailerID` INT NOT NULL,
  `PPP_NextWeekDiscountPercentage` DECIMAL(8,2) NULL,
  `PPP_NextWeekDiscountPrice` DECIMAL(8,2) NULL,
  PRIMARY KEY (`Product_ProductID`, `Retailer_RetailerID`),
  INDEX `fk_ProductPricePrediction_Product1_idx` (`Product_ProductID` ASC) VISIBLE,
  INDEX `fk_ProductPricePrediction_Retailer1_idx` (`Retailer_RetailerID` ASC) VISIBLE,
  CONSTRAINT `fk_ProductPricePrediction_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductPricePrediction_Retailer1`
    FOREIGN KEY (`Retailer_RetailerID`)
    REFERENCES `mydb`.`Retailer` (`RetailerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ItemRecommendation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ItemRecommendation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ItemRecommendation` (
  `ItemRecommendationID` VARCHAR(45) NOT NULL,
  `Product_ProductID` INT NOT NULL,
  `UserDetails_UserID` INT NOT NULL,
  PRIMARY KEY (`ItemRecommendationID`, `Product_ProductID`, `UserDetails_UserID`),
  INDEX `fk_ItemRecommendation_UserDetails1_idx` (`UserDetails_UserID` ASC) VISIBLE,
  CONSTRAINT `fk_ItemRecommendation_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ItemRecommendation_UserDetails1`
    FOREIGN KEY (`UserDetails_UserID`)
    REFERENCES `mydb`.`UserDetails` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserOrder`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UserOrder` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserOrder` (
  `OrderID` INT NOT NULL,
  `OrderTotal` DECIMAL(8,2) NULL,
  `OrderTotalDiscount` DECIMAL(8,2) NULL,
  `UserDetails_UserID` INT NOT NULL,
  PRIMARY KEY (`OrderID`, `UserDetails_UserID`),
  INDEX `fk_UserOrder_UserDetails1_idx` (`UserDetails_UserID` ASC) VISIBLE,
  CONSTRAINT `fk_UserOrder_UserDetails1`
    FOREIGN KEY (`UserDetails_UserID`)
    REFERENCES `mydb`.`UserDetails` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserCart`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UserCart` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserCart` (
  `UserCartID` INT NOT NULL,
  `UserDetails_UserID` INT NOT NULL,
  `UserOrder_OrderID` INT NOT NULL,
  PRIMARY KEY (`UserCartID`, `UserOrder_OrderID`, `UserDetails_UserID`),
  INDEX `fk_UserCart_UserOrder1_idx` (`UserOrder_OrderID` ASC) VISIBLE,
  CONSTRAINT `fk_UserCart_UserDetails1`
    FOREIGN KEY (`UserDetails_UserID`)
    REFERENCES `mydb`.`UserDetails` (`UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UserCart_UserOrder1`
    FOREIGN KEY (`UserOrder_OrderID`)
    REFERENCES `mydb`.`UserOrder` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UserCart_has_Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`UserCart_has_Product` ;

CREATE TABLE IF NOT EXISTS `mydb`.`UserCart_has_Product` (
  `UserCart_UserCartID` INT NOT NULL,
  `UserCart_UserOrder_OrderID` INT NOT NULL,
  `UserCart_UserDetails_UserID` INT NOT NULL,
  `Product_ProductID` INT NOT NULL,
  PRIMARY KEY (`UserCart_UserCartID`, `UserCart_UserOrder_OrderID`, `UserCart_UserDetails_UserID`, `Product_ProductID`),
  INDEX `fk_UserCart_has_Product_Product1_idx` (`Product_ProductID` ASC) VISIBLE,
  INDEX `fk_UserCart_has_Product_UserCart1_idx` (`UserCart_UserCartID` ASC, `UserCart_UserOrder_OrderID` ASC, `UserCart_UserDetails_UserID` ASC) VISIBLE,
  CONSTRAINT `fk_UserCart_has_Product_UserCart1`
    FOREIGN KEY (`UserCart_UserCartID` , `UserCart_UserOrder_OrderID` , `UserCart_UserDetails_UserID`)
    REFERENCES `mydb`.`UserCart` (`UserCartID` , `UserOrder_OrderID` , `UserDetails_UserID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UserCart_has_Product_Product1`
    FOREIGN KEY (`Product_ProductID`)
    REFERENCES `mydb`.`Product` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
