drop database green_shop;
create database green_shop;
use green_shop;

-- ----------------------------
-- Table structure for role
-- ----------------------------
CREATE TABLE `green_shop`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
	-- data role
INSERT INTO `green_shop`.`role` (`role_name`) VALUES ('ROLE_ADMIN');
INSERT INTO `green_shop`.`role` (`role_name`) VALUES ('ROLE_USER');

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `green_shop`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,  
  `password` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(10) NOT NULL,
  `address` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

INSERT INTO `green_shop`.`user` (`name`, `email`, `password`, `phone`, `address`) VALUES ('admin', 'admin@gmail.com', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '0344161791', 'Linh Trung Thủ Đức');
INSERT INTO `green_shop`.`user` (`name`, `email`, `password`, `phone`, `address`) VALUES ('user', 'user@gmail.com', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '0344141791', 'Linh Trung Thủ Đức');



CREATE TABLE `green_shop`.`role_user` (
  `roleId` INT NOT NULL,
  `userId` INT NOT NULL,
  PRIMARY KEY (`roleId`, `userId`),
  INDEX `fk_user_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_role`
    FOREIGN KEY (`roleId`)
    REFERENCES `green_shop`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user`
    FOREIGN KEY (`userId`)
    REFERENCES `green_shop`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

INSERT INTO `green_shop`.`role_user` (`roleId`, `userId`) VALUES ('1', '1');
INSERT INTO `green_shop`.`role_user` (`roleId`, `userId`) VALUES ('2', '1');
INSERT INTO `green_shop`.`role_user` (`roleId`, `userId`) VALUES ('2', '2');


CREATE TABLE `green_shop`.`image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `image` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));
  
 INSERT INTO `green_shop`.`image` (`image`) VALUES ('cateXR');
 INSERT INTO `green_shop`.`image` (`image`) VALUES ('cateSD');
 INSERT INTO `green_shop`.`image` (`image`) VALUES ('cateTC');
 INSERT INTO `green_shop`.`image` (`image`) VALUES ('cateCTN');
 INSERT INTO `green_shop`.`image` (`image`) VALUES ('cateTreo');
 INSERT INTO `green_shop`.`image` (`image`) VALUES ('cateDL');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-mac-ao');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-nui-dang-tru');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-tai-tho');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-trung-chim');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-sao');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-than-long');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('xuong-rong-anh-duong');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('sao-bien');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('sen-da-la-ngoc');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('sen-da-bong-thoc');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('duoi-lim-la-bau');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('tieu-lan-phu-huynh');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('thien-huong-sac-la-xanh-tham');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('dinh-sam');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('dia-lan-da-yen-kim');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('kim-phat-tai');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('hac-hong-lan');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('hong-lac-anh');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('lan-dinh-hong');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('truc-canh-mini');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('luoi-ho-la-vang');
INSERT INTO `green_shop`.`image` (`image`) VALUES ('bach-kim');
-- ----------------------------
-- Table structure for category
-- ----------------------------
CREATE TABLE `green_shop`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `image_id` int,
  PRIMARY KEY (`id`),
  INDEX `fk_image_idx` (`image_id` ASC) VISIBLE,
  CONSTRAINT `fk_image_category`
    FOREIGN KEY (`image_id`)
    REFERENCES `green_shop`.`image` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
	-- data
INSERT INTO `green_shop`.`category` (`name`,`image_id`) VALUES ('Xương Rồng','1');
INSERT INTO `green_shop`.`category` (`name`,`image_id`) VALUES ('Sen đá','2');
INSERT INTO `green_shop`.`category` (`name`,`image_id`) VALUES ('Tiểu cảnh','3');
INSERT INTO `green_shop`.`category` (`name`,`image_id`) VALUES ('Cây xanh trong nhà','4');
INSERT INTO `green_shop`.`category` (`name`,`image_id`) VALUES ('Cây treo','5');
INSERT INTO `green_shop`.`category` (`name` ,`image_id`) VALUES ('Cây dàn leo','6');



-- ----------------------------
-- Table structure for discount
-- ----------------------------
CREATE TABLE `green_shop`.`discount` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NOT NULL,
  `persent` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
	-- data
INSERT INTO `green_shop`.`discount` (`code`, `persent`) VALUES ('AYBGK', '10');
INSERT INTO `green_shop`.`discount` (`code`, `persent`) VALUES ('HGDUK', '20');
INSERT INTO `green_shop`.`discount` (`code`, `persent`) VALUES ('KIUHJ', '30');

-- ----------------------------
-- Table structure for image
-- ----------------------------


-- ----------------------------
-- Table structure for tree
-- ----------------------------
CREATE TABLE `green_shop`.`tree` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `price` FLOAT NOT NULL,
  `description` TEXT NOT NULL,
  `quantity` INT NOT NULL,
  `category_id` INT NOT NULL,
  `discount_id` INT NULL,
  `image_id` int,
  PRIMARY KEY (`id`),
  INDEX `fk_category_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_discount_idx` (`discount_id` ASC) VISIBLE,
  INDEX `fk_image_idx` (`image_id` ASC) VISIBLE,
  CONSTRAINT `fk_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `green_shop`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
CONSTRAINT `fk_discount`
    FOREIGN KEY (`discount_id`)
    REFERENCES `green_shop`.`discount` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_image_tree`
    FOREIGN KEY (`image_id`)
    REFERENCES `green_shop`.`image` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
	-- data


INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Mắc Áo', '68000', 'Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, dẻo dai, 
		và là món quà tặng ý nghĩa cho bạn bè, người thân. Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng là loài có gai góc nên không nên để trong nhà; 
        nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ, ngăn cản tà khí. Lưu ý riêng trong quá trình chăm sóc cây: 
        không nên tưới nước cho cây quá nhiều dễ gây thối rễ và chết cây; cây cần nhiều ánh sáng để sinh trưởng, do đó không nên để trong nhà quá lâu.', '100', '1','7');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Sao biển', '45000', 'Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, người thân. 
		Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng là loài có gai góc nên không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước 
		cửa sẽ mang ý nghĩa bảo vệ, ngăn cản tà khí. Lưu ý riêng trong quá trình chăm sóc cây: không nên tưới nước cho cây quá nhiều dễ gây thối rễ và chết cây; cây 
		cần nhiều ánh sáng để sinh trưởng, do đó không nên để trong nhà quá lâu.', '100', '2','14');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Duối Lim Lá Bầu', '160000', 'Đang cập nhật...', '100', '3','17');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Núi - Dạng Trụ', '36000', 'Xương rồng Núi – dạng trụ Xương rồng Núi là loại cây cảnh đẹp, 
		cây thích nghi với điều kiện khô hạn và ưa môi trường sống nhiều ánh sáng. Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, 
		dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, người thân. Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng là loài có gai góc nên 
		không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ, ngăn cản tà khí. Lưu ý riêng trong quá trình chăm sóc cây: 
		không nên tưới nước...', '100', '1','8');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Tai Thỏ', '30000', 'Xương rồng Tai thỏ Xương rồng Tai thỏ là loại cây cảnh đẹp, 
		cây thích nghi với điều kiện khô hạn và ưa môi trường sống nhiều ánh sáng. Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, 
        dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, người thân. Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng là loài có gai góc nên 
        không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ, ngăn cản tà khí. Lưu ý riêng trong quá trình 
        chăm sóc cây: không nên tưới nước cho...', '100', '1','9');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Trứng Chim', '37000', 'Xương rồng Trứng chim Xương rồng Trứng chim hay Xương rồng tuyết, Xương rồng trứng cút là loại cây cảnh đẹp, cây thích nghi 
với điều kiện khô hạn và ưa môi trường sống nhiều ánh sáng. Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, 
người thân. Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng là loài có gai góc nên không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ,
 ngăn cản tà khí. Lưu ý riêng trong quá trình...', '100', '1','10');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Sao', '36000', 'Xương rồng sao Xương rồng Sao là loại cây cảnh đẹp, cây thích nghi với điều kiện khô hạn và ưa môi trường sống nhiều ánh sáng. 
		Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, người thân. Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng 
        là loài có gai góc nên không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ, ngăn cản tà khí. Lưu ý riêng trong quá trình chăm sóc cây:
        không nên tưới nước cho cây quá...', '100', '1','11');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Thần Long', '42000', 'Xương rồng Thần long Xương rồng Thần long là loại cây cảnh đẹp, cây thích nghi với điều kiện khô hạn và ưa môi trường 
sống nhiều ánh sáng. Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, người thân. Cần lưu ý theo ý nghĩa về phong thủy, 
do xương rồng là loài có gai góc nên không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ, ngăn cản tà khí. Lưu ý riêng trong quá trình
 chăm sóc cây: không nên tưới nước cho...', '100', '1','12');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Xương Rồng Ánh Dương', '35000', 'Xương rồng Ánh dương là loại cây cảnh đẹp, cây thích nghi với điều kiện khô hạn 
và ưa môi trường sống nhiều ánh sáng. Cây có sức sống mạnh mẽ, tượng trưng cho sự bền bỉ, dẻo dai, và là món quà tặng ý nghĩa cho bạn bè, người thân. 
Cần lưu ý theo ý nghĩa về phong thủy, do xương rồng là loài có gai góc nên không nên để trong nhà; nên đặt cây ở lan can, hàng rào trước cửa sẽ mang ý nghĩa bảo vệ, 
ngăn cản tà khí. Lưu ý riêng trong quá trình chăm sóc cây: không nên tưới nước cho cây quá nhiều dễ gây thối rễ...', '100', '1','13');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) 
VALUES ('Sen Đá Lá Ngọc', '75000', 'Sen đá lá ngọc là loại cây thuộc họ bỏng (Crassualaceae) có nguồn gốc từ Mexico đên Tây Bắc Nam Mỹ. Cây có lá xếp 
quanh trục rất giống hình bông hoa hồng, lá màu xanh nhạt được phủ lên một lớp phấn trắng. Nếu hoa hồng trắng thể hiện cho tình yêu vĩnh cửu tình yêu 
mạnh hơn cái chết bất diệt và trường tòn mãi mãi thì sen đá bông hồng trắng cũng có ý nghĩa tương tự vậy.', '100', '2','15');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Sen Đá Ngọc Xanh Chậu Treo', '75000', 'Đang cập nhật...', '100', '2','16');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Sen Đá Bông Thóc', '80000', 'Đang cập nhật...', '100', '2','18');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Tiểu Lan Phu Quỳnh', '250000', 'Đang cập nhật...', '100', '3','19');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Thiên Hương Sắc Lá Xanh Thẩm', '120000', 'Đang cập nhật...', '100', '3','20');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Dịnh Sâm', '140000', 'Đang cập nhật...', '100', '3','21');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Địa Lan Dạ Yến Kim', '125000', 'Đang cập nhật...', '100', '3','22');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Kim Phát Tài', '85000', 'Đang cập nhật...', '100', '3','23');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Hạc Hồng Lan', '160000', 'Đang cập nhật...', '100', '3','24');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Hồng Lạc Anh', '125000', 'Đang cập nhật...', '100', '3','25');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Lan Đỉnh Hồng', '100000', 'Đang cập nhật...', '100', '3','26');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Trúc Cảnh Mini', '120000', 'Đang cập nhật...', '100', '3','27');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Bạch Kim', '76000', 'Đang cập nhật...', '100', '3','28');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Lưỡi Hổ Lá Vàng', '95000', 'Đang cập nhật...', '100', '3','28');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Kilaz Lá Nhỏ', '150000', 'Đang cập nhật...', '100', '3','28');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Thiên Mộc Hương', '250000', 'Đang cập nhật...', '100', '3','28');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Luas Nuide', '280000', 'Đang cập nhật...', '100', '3','28');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Đia Lan Ý Lá Xanh Trắng', '110000', 'Đang cập nhật...', '100', '3','28');
INSERT INTO `green_shop`.`tree` (`name`, `price`, `description`, `quantity`, `category_id`,`image_id`) VALUES ('Zulax Lá Vàng', '180000', 'Đang cập nhật...', '100', '3','28');



-- ----------------------------
-- Table structure for status
-- ----------------------------
CREATE TABLE `green_shop`.`status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
-- data
INSERT INTO `green_shop`.`status` (`status`) VALUES ('Đang chuẩn bị hàng');
INSERT INTO `green_shop`.`status` (`status`) VALUES ('Đang giao');
INSERT INTO `green_shop`.`status` (`status`) VALUES ('Đã giao');
INSERT INTO `green_shop`.`status` (`status`) VALUES ('Đã thanh toán');
INSERT INTO `green_shop`.`status` (`status`) VALUES ('Hủy đơn');



-- ----------------------------
-- Table structure for order
-- ----------------------------
CREATE TABLE `green_shop`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `ordered_date` DATE NOT NULL,
  `received_date` DATE NULL,
  `status_id` INT NOT NULL,
  `total_price` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_status_idx` (`status_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_order`
    FOREIGN KEY (`user_id`)
    REFERENCES `green_shop`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_status`
    FOREIGN KEY (`status_id`)
    REFERENCES `green_shop`.`status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
CREATE TABLE `green_shop`.`order_item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tree_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `total_price_item` float NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tree_idx` (`tree_id` ASC) VISIBLE,
  INDEX `fk_order_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `fk_tree`
    FOREIGN KEY (`tree_id`)
    REFERENCES `green_shop`.`tree` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order`
    FOREIGN KEY (`order_id`)
    REFERENCES `green_shop`.`order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
CREATE TABLE `green_shop`.`shoppingcart` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userId` INT NOT NULL,
  `total_price` float NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_cart_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_user_cart`
    FOREIGN KEY (`userId`)
    REFERENCES `green_shop`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE TABLE `green_shop`.`shoppingcart_item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `tree_id` INT NOT NULL,
  `shoppingcart_id` INT NOT NULL,
  `total_price_item` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_shoppingItem_tree_idx` (`tree_id` ASC) VISIBLE,
  INDEX `fk_shoppingItem_cart_idx` (`shoppingcart_id` ASC) VISIBLE,
  CONSTRAINT `fk_shoppingItem_tree`
    FOREIGN KEY (`tree_id`)
    REFERENCES `green_shop`.`tree` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_shoppingItem_cart`
    FOREIGN KEY (`shoppingcart_id`)
    REFERENCES `green_shop`.`shoppingcart` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

