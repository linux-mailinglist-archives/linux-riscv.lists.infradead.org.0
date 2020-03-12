Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20471182817
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOM3aEmjEqWWOAVUA5kLxhBWRDkm4mIPbH4c62vvABo=; b=Wc0G/rUIHJwxVF
	DCJBpgmJ9MjhMfqKUaliQnUHzNxwscfjNOTz1ADLdBrtAAAvHvdcRwPvmRzQNi9Wqf/EgvdrdiiU/
	hEMRc1NpoEovBq6n10Ry5ugxRH9kQfw1TRPJxd374/sDN7JZCEmWimRIZj9eOXs9cJhKYuWo38MXj
	V5WtrzsDrCDRrGggla3eWk2Hthpe1bGghsZlaFMQU3qe1sUKQWFhnv5FdSwkUosI+Xs1co53dTvMw
	EDW64R7I31EhNUitrfdaNDKIoUkbQso6+Az88ebz8bRJOtMYCfy1ny+MDU+LlTYO62Dv2FWRvdKIm
	RodywXTYGb2kRwrceG4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG7y-0000IA-N5; Thu, 12 Mar 2020 05:11:26 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7n-0008W8-9k
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989875; x=1615525875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ntv2epMPlTVdoKFDBWuow5pGs7sY9f+O3nNQNhnjiU8=;
 b=dRg5jia9WkclyEo8ncYfrhkEchSJ0mHjtG+NcSm39AuVdBE1XR2fTbhO
 EKsj8Mmdxcu5u36pYtzYa+T4tCQ7F8hBALwPcoc/xNQrSLh20wcJWxZKp
 zbZMRIdsv0yCqO2KqbUSYa8pv385+5T4jw0JMKMKT0EhT5eN89CHn4aV2
 FPBOabdcM1MjYWCrsfF+jvf6vDE1egHPK1PEE9EfSJKI/PLSaqksXuZfj
 q/oKPl9Vx+Bd/NEC70jcqrptofG6Bwi5CbExZbmV+RcEFSVivrOSvLSAb
 fp7+GPBYNgdP7yi9wcGbUiZcwRg7Z74fxzCoxYtyokCPXMkfRQX9DG814 w==;
IronPort-SDR: RMUaM4aDRsucDutv2TgAt8j2kL+Zibl1hqa0Wlx3P6a/aFzWH9PeZh8SIKKPh774PxC8HV+nf+
 idECHCDBaVLqVAtWWXtwZYUU/1F47MzGQgwRDXeyCGWbh8yJM/4naPMrzo2d51Lk+9biUSNcxX
 wmhgVF6kyjn45IRTSfeCPzsurI6/D7xHHZn4uc1aW1uvP0Rk1F/R0aMFWVoB1Pog5b2LHGx0nD
 Ox4o6uYWKid1EDvREef4xM0nQrZSCBcm1TV/Cj/x5sRHS/3XCYujVyCvs1FMtphHmCP4wNrzuf
 CsU=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718976"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:14 +0800
IronPort-SDR: wQG1YaNbfDULzR2hUrinHDRzUCCmd6uNToGBxhilPsiOdqQ/tG6Js1qpFpLmVZcss8M7rpST7S
 dPFpWmaaNGYTLeeWMFXdraK+aPl7etss65Vn7AqmcDogxU7UJv4tnvoWFlHRHMrR8hCcg8xXH/
 h0Wi5RxaXoXI6G55blj19EAGTrbb+RKpiVpRHM2u8cjgCfhptmTrCVA5eUbpge2kMlkz2tY5Nv
 YSp+16n4gGUL0zQtcgGqHEajwmm4kAbJOB9bKlwCeLdGe8R7w85ItYCxmZIzw7fg6P9oJjw2xX
 tCd4yOWYPYX7v16CwINYKZHM
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:14 -0700
IronPort-SDR: sxpagqbWYTiplEkPEB6elhgzOIeLvItow6Kl4HiX50zRJQmwmXkEdxR5SpbzH5Z2Y3VOGhBGbM
 pCY8bKTh/54ZtV9r/cQIOl6FwqXtgzwbj1xEuvcp0bfHCdxT1mRNhKL+LM/bdVwSd5UEZ2ugAi
 FleHrHAEIx2YGl59+EAs3pDGU1X/C8D0jeE7OoE7pgv5Kwy4xG6NJQCENFFrbxHuNZ0WxW0P3b
 BulAcBtzzcJ6+AvSVIddUCE9Z2SKVotVKrB+3r8HY4OIQKVjcTaNGBgLazL0cilWmIIOpZ4w2M
 FT8=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:13 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 5/9] riscv: Select required drivers for Kendryte SOC
Date: Thu, 12 Mar 2020 14:11:03 +0900
Message-Id: <20200312051107.1454880-6-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312051107.1454880-1-damien.lemoal@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221115_386158_BD3B6C91 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch selects drivers required for the Kendryte K210 SOC.
Since K210 SoC based boards do not provide a device tree, this patch
also enables the BUILTIN_DTB option.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig.socs | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 69071578e181..a843100124ae 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -37,6 +37,10 @@ config SOC_VIRT
 config SOC_KENDRYTE
 	bool "Kendryte K210 SoC"
 	depends on !MMU
+	select BUILTIN_DTB
+	select SERIAL_SIFIVE if TTY
+	select SERIAL_SIFIVE_CONSOLE if TTY
+	select SIFIVE_PLIC
 	help
 	  This enables support for Kendryte K210 SoC platform hardware.
 
-- 
2.24.1


