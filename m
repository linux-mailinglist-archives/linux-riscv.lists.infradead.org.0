Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9F1860E8
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 01:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F69v8XTdHZ30B4/dHJdRfAieRn3JWVwNbulDFMvhBJ8=; b=deL/PSi/KS8ri3
	s/t+2paqpfAtY3WCpJn91SQBMivkUHw5HSgfgU5JqHJw0IYsRYDRmmOoI9DyQpy6Jn82+3xpvAKI2
	Ad3vq9623GJKrHubO70sg2peJ/hYij6THU7cPNzyewJsj62WPIkEbSofkLLRY4wzZFLTl0D50pE5X
	SCIeJMqR8UUqj5w/n3Qz0uWf1sSmavEc8ppYW3WrxzkNHZ80etWXHYLOnz2ERV7WI+wkJd/11L29l
	azdLMb9ePanLqHrwPT1yogO8A0ttMgcYAK3lYPqhCDi7ssv5M1hgSds76juV2L5DTq2iK+wFjnkPm
	tUweQbdHxmWBCuk0FC8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDdvb-0005Rc-6G; Mon, 16 Mar 2020 00:48:23 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDdv9-0004tA-Jn
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 00:47:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584319676; x=1615855676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q5JGE8apGK/+Swg/3+OMCUqtdJVbM3GkTEzcVZ/wkd8=;
 b=hEZLSHCR8lz5dr0bRB/eD/lPMapD6RgFVjSi6ClDDE4lLxYstimoul7a
 utptiAWIiBkOzr9oZkPJVqfLgLDjRCc9G7YvBIthj9BzOvxYGwSyFxRhp
 MqerE2VoNk+YfjQ6206Ng9FimSjQfLeKQrqUx5ZsiFS22KhyY8aBCSzGG
 SNhlB/u95vzQL8QNWHNrNV9UlllfUiOBSHJuXIXgJqojc61pFc9XLVQux
 4ynDfUH3h4VuE0ErutvCn7EH+YsJxoNcqFVjH/nq/koezXznw18uVrlTz
 bqhaaDOCdz4VC+Wm7CQK/KFxLGhQusFVRpAM0IIJcP6o8pSneWeDfT6xs w==;
IronPort-SDR: euU/bpXuJ4S4f7/KuSpcwI/fIa1aK3vJxsj2FFxUVcORJcrQX+37hTPvvayaSn64iLMKbq0LGx
 D65kPdPIpURgG4gO5yyID/rt2++35RXJ6kEABQypyQ+1yTor4yKF0wwpsuTLKwLMnGfu6qkMex
 Iob0SzFGKiOfFZjPDcHWvsgRICcFfCHdptGi8/3ibbKimONBDL4ptCM9yHM9hENs73bR72XKpK
 hAjkxf0re17SXA2s3Z8K9hQ4ejSUCO9mXa2HJIChTUJXiDsqexmPAiy1lRLRr5UFpMKhSWifzw
 eGo=
X-IronPort-AV: E=Sophos;i="5.70,558,1574092800"; d="scan'208";a="133011931"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Mar 2020 08:47:54 +0800
IronPort-SDR: MSpl1w8eQS2weJqYScHQDRMFB+/xsxDLxmUS7Dn9rh3xdnb+oenqbvA8PcMUZ+y096QhUkrLyM
 8i6Dr1M4ZQ9D1ZAVU4kZOXYBtWuTO4G4GX0xu3n9dYrLHg3XPjO4dL34smIh3csKFN4njfIp01
 YNWul4hVjCdjpNy6/2XV4SdFrBNnZT0g1F2GBlMM7bC7j0cQk1f6pCgciXQ1+BX4aEBEXR0mY2
 XewinXzllD4r3GoSv/QcBrZ5Y9Cfurt6GT2bqJQVeVqlwVuGHo6KS93U7VQGqibJPQl5tfFa38
 CEnQ6Rxd6KZ4vJPiynBNUIQ3
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2020 17:39:24 -0700
IronPort-SDR: PS4gG+T+uSbpGfGZAxpjWSz/PeIjHQ5LgoXg59bCu89KaB9aHH9Xw4Sjj4Vlit40bKMzy14S1e
 greCBG88VMmahuDklZ7tc39Y9+k3/cKhRW/tfLlQDmhOft+Tp+QleQ6+WPV3RjGYki9QgsGLvO
 4nuyCdLjizjzov9ubL1IkTudoCt56A/8/m0pYKARxzEK66tTR0QwdL9bD8xd1QF6rIhbtwPzVc
 8nsjfoq+rMBMtMZubfoQWrdbZacr32zIRYJI4kAnFLGKFx+e4ByUUBsb9wgwKesvQe+K9bmrid
 Z1I=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Mar 2020 17:47:53 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v4 9/9] riscv: Do not initialize PMP on Kendryte SoC
Date: Mon, 16 Mar 2020 09:47:44 +0900
Message-Id: <20200316004744.209292-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200316004744.209292-1-damien.lemoal@wdc.com>
References: <20200316004744.209292-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_174755_684140_7D4628D1 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Atish Patra <atish.patra@wdc.com>
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


