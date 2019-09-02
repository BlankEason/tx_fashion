
SET NAMES UTF8;

DROP DATABASE IF EXISTS tx_fashion;

CREATE DATABASE tx_fashion CHARSET=UTF8;

USE tx_fashion;

/*用户表*/
CREATE TABLE tx_user(
    uid      INT PRIMARY KEY AUTO_INCREMENT,
    uname   VARCHAR(50),
    upwd    VARCHAR(32),
    email   VARCHAR(32),
    phone   VARCHAR(32),
    user_name   VARCHAR(32)
);
INSERT INTO tx_user VALUES(null,'tom',md5('123'),'blank@qq.com','13712354799','张三');
INSERT INTO tx_user VALUES(null,'blank',md5('123'),'blank@qq.com','13721247991','小李');

-- 商品表
CREATE TABLE tx_index_product(
    pid         INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(128),
    price       INT,
    subprice    INT,
    spec        VARCHAR(32),
    color       VARCHAR(32),
    pic		VARCHAR(128),
    href	VARCHAR(128),
    pic_collect_active VARCHAR(128),
    pic_collect VARCHAR(128),
    collect     INT
);
INSERT INTO tx_index_product VALUES(null,"OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",199.99,299.99,"L","红色","pd-007.png","Detail?lid=1","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"被火箭放弃后：1.24亿后场830万抛售休城豪宅，冠军老将专注时尚",199.99,299.99,"L","红色","pd-008.png","Detail?lid=2","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"美媒：保罗以830万价格挂牌出售位于休斯顿的一处房产",99.99,199.99,"L","红色","pd-009.png","Detail?lid=3","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"Nike 耐克官方NIKE TANJUN男子运动鞋休闲鞋812654",399.99,499.99,"L","红色","pd-010.png","Detail?lid=4","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"Adidas阿迪达斯男鞋2019秋季新款运动鞋鞋子透气休闲鞋小白板鞋",599.99,899.99,"L","红色","pd-008.png","Detail?lid=5","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",299.99,499.99,"L","红色","pd-007.png","Detail?lid=6","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-009.png","Detail?lid=7","cart.png","cart_a.png",1);
INSERT INTO tx_index_product VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-010.png","Detail?lid=8","cart.png","cart_a.png",1);
-- shirt
CREATE TABLE tx_product_shirt(
    pid         INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(128),
    price       INT,
    subprice    INT,
    spec        VARCHAR(32),
    color       VARCHAR(32),
    pic		VARCHAR(128),
    href	VARCHAR(128),
    pic_collect_active VARCHAR(128),
    pic_collect VARCHAR(128),
    collect     INT
);
INSERT INTO tx_product_shirt VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-010.png","Detail?lid=8","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-009.png","Detail?lid=7","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",299.99,499.99,"L","红色","pd-007.png","Detail?lid=6","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",199.99,299.99,"L","红色","pd-007.png","Detail?lid=1","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"被火箭放弃后：1.24亿后场830万抛售休城豪宅，冠军老将专注时尚",199.99,299.99,"L","红色","pd-008.png","Detail?lid=2","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"美媒：保罗以830万价格挂牌出售位于休斯顿的一处房产",99.99,199.99,"L","红色","pd-009.png","Detail?lid=3","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"Nike 耐克官方NIKE TANJUN男子运动鞋休闲鞋812654",399.99,499.99,"L","红色","pd-010.png","Detail?lid=4","cart.png","cart_a.png",1);
INSERT INTO tx_product_shirt VALUES(null,"Adidas阿迪达斯男鞋2019秋季新款运动鞋鞋子透气休闲鞋小白板鞋",599.99,899.99,"L","红色","pd-008.png","Detail?lid=5","cart.png","cart_a.png",1);

-- men
CREATE TABLE tx_product_men(
    pid         INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(128),
    price       INT,
    subprice    INT,
    spec        VARCHAR(32),
    color       VARCHAR(32),
    pic		VARCHAR(128),
    href	VARCHAR(128),
    pic_collect_active VARCHAR(128),
    pic_collect VARCHAR(128),
    collect     INT
);
INSERT INTO tx_product_men VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-009.png","Detail?lid=7","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"Adidas阿迪达斯男鞋2019秋季新款运动鞋鞋子透气休闲鞋小白板鞋",599.99,899.99,"L","红色","pd-008.png","Detail?lid=5","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-010.png","Detail?lid=8","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",299.99,499.99,"L","红色","pd-007.png","Detail?lid=6","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",199.99,299.99,"L","红色","pd-007.png","Detail?lid=1","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"被火箭放弃后：1.24亿后场830万抛售休城豪宅，冠军老将专注时尚",199.99,299.99,"L","红色","pd-008.png","Detail?lid=2","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"美媒：保罗以830万价格挂牌出售位于休斯顿的一处房产",99.99,199.99,"L","红色","pd-009.png","Detail?lid=3","cart.png","cart_a.png",1);
INSERT INTO tx_product_men VALUES(null,"Nike 耐克官方NIKE TANJUN男子运动鞋休闲鞋812654",399.99,499.99,"L","红色","pd-010.png","Detail?lid=4","cart.png","cart_a.png",1);

-- tshirt
CREATE TABLE tx_product_tshirt(
    pid         INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(128),
    price       INT,
    subprice    INT,
    spec        VARCHAR(32),
    color       VARCHAR(32),
    pic		VARCHAR(128),
    href	VARCHAR(128),
    pic_collect_active VARCHAR(128),
    pic_collect VARCHAR(128),
    collect     INT
);
INSERT INTO tx_product_tshirt VALUES(null,"Adidas阿迪达斯男鞋2019秋季新款运动鞋鞋子透气休闲鞋小白板鞋",599.99,899.99,"L","红色","pd-008.png","Detail?lid=5","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-009.png","Detail?lid=7","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"智能陪护让你的孩子赢在起跑线上面智能陪护让你的孩子赢在起跑线上面",199.99,299.99,"L","红色","pd-010.png","Detail?lid=8","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",299.99,499.99,"L","红色","pd-007.png","Detail?lid=6","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",199.99,299.99,"L","红色","pd-007.png","Detail?lid=1","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"被火箭放弃后：1.24亿后场830万抛售休城豪宅，冠军老将专注时尚",199.99,299.99,"L","红色","pd-008.png","Detail?lid=2","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"美媒：保罗以830万价格挂牌出售位于休斯顿的一处房产",99.99,199.99,"L","红色","pd-009.png","Detail?lid=3","cart.png","cart_a.png",1);
INSERT INTO tx_product_tshirt VALUES(null,"Nike 耐克官方NIKE TANJUN男子运动鞋休闲鞋812654",399.99,499.99,"L","红色","pd-010.png","Detail?lid=4","cart.png","cart_a.png",1);









-- 商品详情表
CREATE TABLE tx_product(
    lid         INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(128),
    subtitle    VARCHAR(128),
    price       INT,
    subprice    INT,
    spec        VARCHAR(32),
    color       VARCHAR(32),
    discount    VARCHAR(32),
    special     VARCHAR(32),
    brand       VARCHAR(32),
    style       VARCHAR(32),
    type        VARCHAR(32),
    free        VARCHAR(32),
    sales       VARCHAR(128),
    pic         VARCHAR(128)
);
INSERT INTO tx_product VALUES(null,"OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋","OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",899.99,1999.99,"L","红色","6.9折","特价","NIKE","AJ","鞋子","12期免息","免费开通易支付 全场最低6期免息","pd-009.png");
INSERT INTO tx_product VALUES(null,"Nike 耐克官方NIKE TANJUN男子运动鞋休闲鞋812654","瞩目造型 简约风范 轻盈舒适 轻盈缓震",349.00,549.00,"L","红色","9.9折","特价","LINimg","运动","鞋子","10期免息","免费开通易支付 全场最低8期免息","pd-010.png");
INSERT INTO tx_product VALUES(null,"Nike 耐克官方MAMBA FOCUS EP男子篮球鞋AO4434
","尺码略偏小，可酌情考虑选购大半码或一码",899.99,1999.99,"L","红色","6.9折","特价","NIKE","AJ","鞋子","10期免息","免费开通易支付 全场最低12期免息","pd-009.png");
INSERT INTO tx_product VALUES(null,"Nike 耐克官方NIKE AIR VERSITILE IV 男/女篮球鞋AT1199","便捷迅疾 轻松舒适",899.99,1999.99,"37","红色","6.9折","特价","NIKE","AJ","鞋子","8期免息","免费开通易支付 全场最低6期免息","pd-008.png");
INSERT INTO tx_product VALUES(null,"Adidas阿迪达斯男鞋2019秋季新款运动鞋鞋子透气休闲鞋小白板鞋","经典板鞋 潮流出街 低帮小白鞋",899.99,1999.99,"40","红色","6.9折","特价","阿迪达斯","AJ","鞋子","6期免息","免费开通易支付 全场最低6期免息","pd-007.png");
INSERT INTO tx_product VALUES(null,"Puma彪马男鞋女鞋夏季suede鞋子李现同款帮运动鞋休闲鞋情侣板鞋","经典suede板鞋 放肆舞动 李现同款",899.99,1999.99,"M","粉色","6.9折","特价","NIKE","AJ","衣服","3期免息","免费开通易支付 全场最低6期免息","pd-009.png");
INSERT INTO tx_product VALUES(null,"Nike 耐克官方 NIKE SPORTSWEAR JDI男子T恤大LOGO AR5007","OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",899.99,1999.99,"L","白色","6.9折","特价","NIKE","AJ","衣服","12期免息","免费开通易支付 全场最低8期免息","pd-007.png");
INSERT INTO tx_product VALUES(null,"Nike 耐克官方 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈","OnitsukaTiger 鬼冢虎 Mexico66 李宇春同款 经典烫金标男女运动休闲鞋经典烫金标男女运动休闲鞋",899.99,1999.99,"L","白色","6.9折","特价","NIKE","AJ","衣服","12期免息","免费开通易支付 全场最低8期免息","blank.jpg");





-- 商品轮播图
CREATE TABLE tx_product_carousel(
    cid         INT PRIMARY KEY AUTO_INCREMENT,
    lid         INT,
    pic1        VARCHAR(128),
    pic2        VARCHAR(128),
    pic3        VARCHAR(128),
    pic4        VARCHAR(128)
);
INSERT INTO tx_product_carousel VALUES(null,1,"0001-1.jpg","0001-2.jpg","0001-3.jpg","0001-4.jpg");
INSERT INTO tx_product_carousel VALUES(null,2,"0003_1.jpg","0003_2.jpg","0003_3.jpg","0003_4.jpg");
INSERT INTO tx_product_carousel VALUES(null,3,"0004_1.jpg","0004_2.jpg","0004_3.jpg","0004_4.jpg");
INSERT INTO tx_product_carousel VALUES(null,4,"0005_1.jpg","0005_2.jpg","0005_3.jpg","0005_4.jpg");
INSERT INTO tx_product_carousel VALUES(null,5,"0008_1.jpg","0008_2.jpg","0008_3.jpg","0008_4.jpg");
INSERT INTO tx_product_carousel VALUES(null,6,"0009_1.jpg","0009_2.jpg","0009_3.jpg","0009_4.jpg");
INSERT INTO tx_product_carousel VALUES(null,7,"0010_1.jpg","0010_2.jpg","0010_3.jpg","0010-4.jpg");
INSERT INTO tx_product_carousel VALUES(null,8,"aj1.png","aj2.png","aj3.png","aj4.png");

CREATE TABLE tx_shopcart(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    uid         INT,
    pid		    INT,
    title       VARCHAR(128),
    price       INT,
    pic		    VARCHAR(128),
    spec        VARCHAR(32),
    color       VARCHAR(32),
    href	    VARCHAR(128),
    count       INT
);