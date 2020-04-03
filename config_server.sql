
/*config-service用到的数据库脚本*/

CREATE DATABASE IF NOT EXISTS config default charset utf8 COLLATE utf8_general_ci;

CREATE TABLE config_server  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `akey` varchar(32) NULL DEFAULT NULL COMMENT 'akey',
  `avalue`  varchar(32) NULL DEFAULT NULL COMMENT 'avalue',
  `application` varchar(32) NULL DEFAULT NULL COMMENT 'application',
  `aprofile` varchar(32) NULL DEFAULT NULL COMMENT '属性',
  `label` VARCHAR(32) NULL DEFAULT NULL COMMENT '接收人Id',
  `valid` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `createBy` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `createByType` int(11) NULL DEFAULT NULL COMMENT '创建人类型',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `updateBy` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `updateByType` int(11) NULL DEFAULT NULL COMMENT '修改人类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='配置表';


INSERT INTO `config`.`config_server`(`akey`, `avalue`, `application`, `aprofile`, `label`, `valid`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`) VALUES ('item_url', 'www.master.com', 'oder-service', 'master', 'master', 1, now(), NULL, NULL, now(), NULL, NULL);

INSERT INTO `config`.`config_server`(`akey`, `avalue`, `application`, `aprofile`, `label`, `valid`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`) VALUES ('item_url', 'www.test.com', 'oder-service', 'test', 'test', 1, now(), NULL, NULL, now(), NULL, NULL);

INSERT INTO `config`.`config_server`(`akey`, `avalue`, `application`, `aprofile`, `label`, `valid`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`) VALUES ('item_url', 'www.dev.com', 'product-service', 'dev', 'dev', 1, now(), NULL, NULL, now(), NULL, NULL);



-- SELECT akey , avalue FROM config.config_server where APPLICATION='product-service' and APROFILE='dev' and LABEL='dev';
