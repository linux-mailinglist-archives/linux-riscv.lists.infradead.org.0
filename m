Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830F81A6472
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 11:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hBXPyqHmnbrXAt4uTc0hrYvxYSidcy4O+CyeTWx5cXU=; b=WTyeI1Cfs2o2aO
	Jm2kvvbmBrYyEvU+467uFB8XO2vaShDwvv4pNpfmzf2AwvQa2dl7oTpjDSQoRVzceLQKBVwe6BnlF
	IDHolAGi6jcYO7LzfSOFfSNLI+el/2CNepsIl/eYL3Tii1PqsqWjVywWS8/Lj+nuj6oQscncVlby1
	nG9QV8ZB7jDg3U2tzkidDYPgTgF2bh7HINBY9wuctJDAZj/a/on+vRDSxPc3GIDe7/uQy8w0ppbNU
	npVjvird4433DPiWTcQJNiWsIkyhE41zmMN+VvFgw/q9ZG9yFCDAuG4oEO94nsKI5sy2I4rjAyz9u
	8KoCDwD76RI1C+McG2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNv1X-00074V-NU; Mon, 13 Apr 2020 09:04:59 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNv1U-00073i-2f
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 09:04:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586768696; x=1618304696;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4nYglAy2CTqs0xiWiTdOemHekU97J5pVKV4Q6STMD3w=;
 b=I+tRNKGwEUPXJHtIFY0lQwVrrQRaHUNcV+B7a4iyr8ZZXW92Iyl7IttW
 nALtTthYzm8BFprpnomEDrspCvN13H8ZkG3HfojB7zUPFowpqX8aGx3Rq
 amukRlhgwQet0ISpNhu2oUOwYJVpBHIwWwkVZyBpaA+B3uDN48ZODFW6/
 KKzyIEBnCVxnc10UGrrcTv9X0zovqh/+y+2+NApSyPCBH9IUQKO2Om5zk
 RbsF0gFVWvecTOxdylctXqjBt2xnLJAEj0JFMTSrSG+mBploLXYpGUgxB
 RDVEfCE10gC6zKsGCiBqmqa/OGY97xl2GD6tnAwdTeDorNiiukNEaIT/x w==;
IronPort-SDR: 9Y2BDfEP1Tww3t7l8VOg0FVpikU8P4ESHp8Kfk+atzr6Xp8cV5NabZJGLzZGnuYxfIMSKzPOdX
 Aqyql29dSLcNxkY9wvlfvCnzgcNFxsZq71sdtS8VxU6mZlgRxo6SHLKV7Ii1lrDCQN+skHmWsa
 +7A5EqKzAmdK7G0kuBdGPajo+E7iHnJdqsSuXrUxE4FGmng+x6kfT6Xp+ZnVgGTsQQxmsGe1rv
 g+uCMBEw0zJ6XOEi0Ns6EumSTo01xhAg37+L3jvcPlqejpJfNY23zwtMmR8oxzdBrS1WY6zUcN
 WQI=
X-IronPort-AV: E=Sophos;i="5.72,378,1580745600"; d="scan'208";a="135518968"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 13 Apr 2020 17:04:52 +0800
IronPort-SDR: FawYRuG5oxTPtnxwE36Ii+aqmV2yE6tb6vbmoupFQTreNZASMcSuZ/H18UIr110GkJv7f/AqMz
 fHRX0vFpDiKiyAxEk9GQEQdGUgRFygZ16pLnvpf5/+3B3kii2zSmkcDYCDmZwxM8o635/7z5Cn
 48Ky8BOaVCz9q4HlPtEMA5idwg2vHoDJcsMtwZsbZlqNZE0+jiITL1NXgf4J7w8Ymh4NtnUYT6
 5P/RGCk7+hoQplDE00Oe1gbaNfGQkwAvRILzqYJp26Jjm6QI8YGlXy8oEV7nECfkPlrGueRop9
 QorHudrRjg74tTkb9z13N8AC
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 01:55:24 -0700
IronPort-SDR: QeyD43NBhRGFmEShiuiZZWPtEm2aULHwzCws7qGXaIWGv4FGaAcuoGAcaHJB7zMuFnX902FubZ
 6a4PQGIx7S3qbfJhDQIfY4ABvxMC0PpmP3s/EeL3gxiu8WS0D3ITVj4YJGpayuBHE3lqPL+opc
 jbi5muo70Xj7BPS7HprdZd36PWwzDoIK1rGUga0ZUZE7ubpRKdYn0nBXGa+9yqveMRs2/97Iis
 7bWhnkjEnFcJlH8QdqmUhbpCROJvRQbuwYWPHNXiT/0eeUaTere/yMbLgvaf+BHG/iLtLQaofz
 haE=
WDCIronportException: Internal
Received: from cnf005296.ad.shared (HELO localhost.hgst.com) ([10.84.70.41])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Apr 2020 02:04:51 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH] riscv: select ARCH_HAS_STRICT_KERNEL_RWX only if MMU
Date: Mon, 13 Apr 2020 18:04:49 +0900
Message-Id: <20200413090449.36777-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_020456_155401_044B7A9C 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

ARCH_HAS_STRICT_KERNEL_RWX is not useful for NO-MMU systems.
Furthermore, has this option leads to very large boot image files on
64bits architectures, do not enable this option to allow supporting
no-mmu platforms such as the Kendryte K210 SoC based boards.

Fixes: 00cb41d5ad31 ("riscv: add alignment for text, rodata and data sections")
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a197258595ef..47691a9e3fd0 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -60,7 +60,7 @@ config RISCV
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_HAS_SET_DIRECT_MAP
 	select ARCH_HAS_SET_MEMORY
-	select ARCH_HAS_STRICT_KERNEL_RWX
+	select ARCH_HAS_STRICT_KERNEL_RWX if MMU
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
-- 
2.25.2


