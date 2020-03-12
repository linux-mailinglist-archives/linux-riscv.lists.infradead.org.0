Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF28D18281E
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DEulT0TIjpIawIknI5EgFVnadCCpLBAzLndl5Lj9Ts=; b=JFxa6sUm968XmE
	0vifY/rMxLI+ZdqFhSDexJotHffOjg74Z0pOLgHzmNl9iZC32xJQuoVZCGa0SOzlKQzTifez0tQPi
	ynPK3yHxwcR/xhbF41674wi+6JF1GYJVF1tRSlzJAHs6LwvCvGAz4/XdEDOx7L0dy5tTryLf7zGIv
	+ZGuVLU3vxlQdA4KkbRnexUcCxhsuGS0yq7xbYUI0P+ImDwHxz1Ls+NAs+fyqnDARmaxrSnvo7aSC
	TrPjkZxuKCMCZv+l/WLWf4ZDNRiTDQ7apwBd/ishoPEkas42utUqcVueOdamt465kQnfXas3m3BJJ
	8zovC2eONR0snbxxjn3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG8C-0000br-CP; Thu, 12 Mar 2020 05:11:40 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7p-0008Vc-RC
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989878; x=1615525878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CRphVM9azTZ6wdO6A/8eBNh9+TUuoUAsSA+06Emv/Xc=;
 b=OFHl4N2K8QQjFacLF15fv2KEK1jelZQx4TBvbdAUasWt5CTBfTyuCTZA
 8WLFBUJ94bUmwOvVoIke2NynzrMrXmaEtsoDOpXlpMcVnpK13hotLFTN3
 dl0lJgvNnDENzzvS85Am5HzIrrv/AE3+As4HSITn8F6vnIdcgEzsJLXeF
 0HRUYJ9F+ofM6EgyK2xMIiDhSUW5ploll4koH75zOxY7JzUHdrizaUd0y
 Hy9Ggnlu/rfr2RmWJqLe6qAl4iahWE2EF41xNedBCf0KkXPtpAfDdXn+g
 0c7vGAyaqAYJuHCAOKwz+sMxGEou9SsTLhLgsdmmfDcldZKdnVyFBA5Ec w==;
IronPort-SDR: 79mZT3tKCZpaFDkVSI+yBacTKg2xP2h0Bj9y4zZyu5/2+anqf2+KkACElNs6R73nLcXGsGcvEj
 C9PkBf0PVvdz8MzRuW6Yrv8hgM7bASi+A8VRDLnCX2Fm39+HGxy/OKUgOybS4kroi0FuZY69qv
 pljVItv98XiUyj16Q9I77dLTiLdbz0sS1VEWHZ/PKz6yK1J7LzZ60QmShokov4hqiJvjKTVfPc
 969zSVERdfyXyb4+N4RoCyhA+EsJGm3CR/XnqoA00UKxSjySoQBdsIdFZsBd5PeRNlcuD1bqD3
 VyQ=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718982"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:18 +0800
IronPort-SDR: O5MCcdSRkyhJYfrFmToiHIEnJ+1jEiRdjvcnSJHgDDW29BM8zuASzEMYrdsONL2Mg8mbLlZ6/i
 TBaowYMRkOe8ehYawFJREXuyRvdh+7u65zWIsCRotVZdu2ReF3oERmakOd2M5wgzxm6xv4QCus
 FruaCBZgaupmkKMtnZ0aDKMYkfW3mEJgNmOum+j5HbUB26cnxagWltpxHPHKSpl0UPat3/Ffj3
 yP/VgbcVbV3nZ9Y44YgX2f+g7hLFS3d/v622KWBLCpIYTau7UzRqCvKqBTNHGYb2jn6gxKzx+H
 VvBFqwo/d3yVdxNpkbUpOH6v
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:17 -0700
IronPort-SDR: b5prUu4iQVAPJawP9pGSAmosleGK76UkwtwfRdISHKSbNNR6T0Der8ZlJRAi9nIzS41mFGF8YB
 8hiDAbe0AlDoWhEga9H8upTMw623y+3o/lDnUux6Z3U54yjA+IIdoIh55moxaxaxpL6uBH1Xhm
 QcE515Uy2kH3+7lABIafEei20e39nk20KHK5vAHPs48CjlOel4QgTfUd8SP2m3uT2Tt+klfjxu
 j0OQdFWD/lihYSxn5CyyuacTBLdMPyS0EQGWNzeu0hkIJqEx64a/mm3jtOOik6MU4TqfxA3IRp
 /lM=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:16 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
Date: Thu, 12 Mar 2020 14:11:07 +0900
Message-Id: <20200312051107.1454880-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312051107.1454880-1-damien.lemoal@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221117_933795_E2F7CAF5 
X-CRM114-Status: GOOD (  11.83  )
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

Commit c68a9032299e ("riscv: set pmp configuration if kernel is running
in M-mode") added PMP initialization to M-Mode. While this patch is
valid for any SoC following the ratified riscv specifications, the
Kendryte K210 SoC is based on earlier unstable specifications and does
not seem to support PMP initialization (the SoC crashes if CSR_PMPADDR0
or CSR_PMPCFG0 are accessed).

Since all physical memory access works fine on this SoC without any
explicit PMP initialization, avoid the SoC crash by not touching the
PMP CSRs.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/kernel/head.S | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 52ed11b4fda6..1a5defdc33d2 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -58,11 +58,17 @@ _start_kernel:
 	/* Reset all registers except ra, a0, a1 */
 	call reset_regs
 
-	/* Setup a PMP to permit access to all of memory. */
+	/*
+	 * For M-mode, setup PMP to permit access to all of memory.
+	 * This should however not be done for the  Kendryte K210 SoC as this
+	 * causes a crash (this SoC follows older unstable specification).
+	 */
+#ifndef CONFIG_SOC_KENDRYTE
 	li a0, -1
 	csrw CSR_PMPADDR0, a0
 	li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
 	csrw CSR_PMPCFG0, a0
+#endif
 
 	/*
 	 * The hartid in a0 is expected later on, and we have no firmware
-- 
2.24.1


