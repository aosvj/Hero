DROP TABLE IF EXISTS `tb_code`;
CREATE TABLE tb_code (
    `id` int(11) auto_increment comment 'code id',
    `code` varchar(3),
    `group` varchar(3),
    `info` varchar(255),
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE tb_user (
    `id` varchar(255) comment 'user id',
    `password` varchar(50) comment 'user password',
    `name`  varchar(50) comment 'user password',
    `certification` tinyint(1) comment 'is certified',
    `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tb_workspace`;
CREATE TABLE tb_workspace (
    id int(11) auto_increment comment 'workspace id',
    title varchar(255) comment 'workspace title',
    description text comment 'workspace description',
    link text comment 'user shred link with auth',
    `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tb_board`;
CREATE TABLE tb_board (
    `id` varchar(255) comment 'board id',
    `title` varchar(255) comment 'board title',
    link text comment 'user shred link with auth',
    `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tb_board_member`;
CREATE TABLE tb_board_member (
    `user_id` varchar(255) comment 'user id',
    `baord_id` int(11) comment 'board id',
    `starred` tinyint(1),
    `permission` varchar(3) comment '',
    `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`user_id`)
);

DROP TABLE IF EXISTS `tb_workspace_mamber`;
CREATE TABLE tb_workspace_mamber (
    `user_id` varchar(255) comment 'user id',
    `workspace_id` int(11) comment 'workspace id',
    `starred` tinyint(1),
    `permission` varchar(3),
     `create_date` datetime,
    `update_date` datetime
);

DROP TABLE IF EXISTS `tb_card_list`;
CREATE TABLE tb_card_list (
    `id` int(11) auto_increment comment 'card list id',
    `title` text comment 'card list title',
    `board_id` tinyint(1),
     `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tb_card`;
CREATE TABLE tb_card (
    `id` int(11) auto_increment comment 'card id',
    `title` varchar(255) comment 'card title',
    `description` text,
    `card_list_id` int(11) comment 'card list it',
    `end_date` datetime comment 'card expire date',
     `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE tb_comment (
    `id` int(11) auto_increment comment 'comment id',
    `comment` varchar(255) comment 'comment title',
    `card_id` int(11),
    `user_id` varchar(255) comment 'user id',
     `create_date` datetime,
    `update_date` datetime,
    PRIMARY KEY (`id`)
);
