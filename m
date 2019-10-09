Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B61ED1B5A
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 00:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96FGIKqhqmZfoWaAxYQd1nVrJp+nfWfyfplWg+eVqKs=; b=OJPG3ACIOWzYdR
	jbkwcephZBcMII8w+Zk1uWkSXIOLifdtN0SQrTc4f4CWAvv/03xND9ym8yEvDXDhTU34oxU//7ztR
	WhAM5YLMCGGg1QelwBD9ByrS3tSIVw3rSn9YKIn/8b9Mm/7I5o1xattW6yyWFvIAKpKcl4trGIDxj
	eFcP8PSFcwEX1/2L//DmZKtx6ZNGtN9FIDK8ynpt88N8/VXrxYDUdoqxlnzwXYuEMR/rY1ZT3Whon
	R5U/7RWhOzqOnEIJ1yzATDyIYklMnTqEwdQaZOI0xVW2L042001YssvKWPkpuJG5HiTk41waGSfNl
	HLjLeTDV0ekf99fl1tww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIK1o-0001x5-5D; Wed, 09 Oct 2019 22:01:52 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIK1j-0001uV-JA
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 22:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570658513; x=1602194513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lbd+AIGQrRoThAxs3oEN+bBjg5z+KPSZ65JKtN5StOg=;
 b=QSAXnDA8aBAf8GNWKzy37bRFrHJijPWw5RLG4KEu+i2DpnLlVJ4Bs3Wx
 itlblyDfhkse6Lmu6XRH3KMFi5/PT9qTfqxqply6Boa3HP4mNC/g32eJ2
 8eIV4XPyr4LTvAPNpvebEqf/S9FGiYhH4ennG2nZuF+5J0bk0odwdSrBw
 OIPTKJRP2eOWMIA3PCkpTcZdFFx16XdCfmfInRvMEkolwRcNFzd8u5oiY
 hqSxi6zhBWgLOdAPm32/1AOminsJpkayvLmIVGPLEnr0YbyrKuMqMdRNc
 ed+Us9ctUAvV8BBY3kWUGfRmLiYJ+u8LPHhIzBPykG6d0VZkax6fRqN9P g==;
IronPort-SDR: MhDI547QWbMZvdRLESWsZawc7Kx3Yj0BaM4YDD2/bZYEdUM8Oz/2kEAKxDCwsPrP39+5mKQ3BQ
 FDuygk5NAbX+GCukQCTFF+U8oaCpsXH4tiwTExolgqd6ervwsEQ6XWqJWvu5Gjyj2ecCdwStj6
 ZWcgjhdwfh5lZW6VZw+n1Gso/dQ/p5EDvrVCYIf1veWmYwOn08BIfAzYH57XTNS5EOOb8W8VSz
 devsqtSUm6Ba7AYdH5k8/LH7LwnB/UjCZkOei65MOFGMdXtrJXFcqKw3jSWck5qOZ9Ua3xouP6
 CQY=
X-IronPort-AV: E=Sophos;i="5.67,277,1566835200"; d="scan'208";a="221171274"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 10 Oct 2019 06:02:09 +0800
IronPort-SDR: RQ9j+45bB/sDQDP0f+I4pnzmIfyBmxFlokGWIpLvQyYKnCCffNw7m0znloz81LoAnEx2OGlLcH
 rQScDN5H54w8eu8AAxKUU0/Uc4uXVTLtFqsFB5liyyC/o+CZk5X305G9rJ0zJGB9mgFs0P61mE
 hZkuTzMGGQngiHLcsjTQBSRdL19CRNfNq2CY45fzcniggkJDlAonIfuXhvpZmovHzde2xKDR4/
 PxfgVMMUAKnzCpjVs3d0lRkWkhF5cIGpTOdf13SqQUDlxDkhqGjAWKaVDYLaR5rbjE7uRZ3YoN
 OvSmFDMPRal7zd/aHC2Q1/Sa
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 14:57:28 -0700
IronPort-SDR: OSfHRalZnckQ+CMwFJuI9c2cHFJ5980REgWsO9HlLdWYOA9e/Xnja3lHpA/bBzYMh3y+14r+vX
 jFPL34GtuhDEtYwD4Z1KDUgRqboAKwulDmx7HlJm48/04ZQ7rVb3/T84nTshQt9MrX/KCCgZXQ
 q//5RaXrtYFF9k3Zm4rRjtw3axETY+J2XeAph1wjymWL9mQjmWEJi8crXOVQz6s1S0cNMqZWA2
 ePWMktMmAyTO2iv41PIvKd5EL3O7Mhu3dqC2bWcQkMg3bsRWn2D7H2c8Ui/iq1IzhJ9n8acYgs
 xh4=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 09 Oct 2019 15:01:29 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2  1/2] RISC-V: Remove unsupported isa string info print
Date: Wed,  9 Oct 2019 15:00:57 -0700
Message-Id: <20191009220058.24964-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191009220058.24964-1-atish.patra@wdc.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_150147_667853_EC4F723E 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Richard Fontana <rfontana@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Johan Hovold <johan@kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

/proc/cpuinfo should just print all the isa string as an information
instead of determining what is supported or not. ELF hwcap can be
used by the userspace to figure out that.

Simplify the isa string printing by removing the unsupported isa string
print and all related code.

The relevant discussion can be found at
http://lists.infradead.org/pipermail/linux-riscv/2019-September/006702.html

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/kernel/cpu.c | 45 +++--------------------------------------
 1 file changed, 3 insertions(+), 42 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 7da3c6a93abd..40a3c442ac5f 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -46,51 +46,12 @@ int riscv_of_processor_hartid(struct device_node *node)
 
 #ifdef CONFIG_PROC_FS
 
-static void print_isa(struct seq_file *f, const char *orig_isa)
+static void print_isa(struct seq_file *f, const char *isa)
 {
-	static const char *ext = "mafdcsu";
-	const char *isa = orig_isa;
-	const char *e;
-
-	/*
-	 * Linux doesn't support rv32e or rv128i, and we only support booting
-	 * kernels on harts with the same ISA that the kernel is compiled for.
-	 */
-#if defined(CONFIG_32BIT)
-	if (strncmp(isa, "rv32i", 5) != 0)
-		return;
-#elif defined(CONFIG_64BIT)
-	if (strncmp(isa, "rv64i", 5) != 0)
-		return;
-#endif
-
-	/* Print the base ISA, as we already know it's legal. */
+	/* Print the entire ISA as it is */
 	seq_puts(f, "isa\t\t: ");
-	seq_write(f, isa, 5);
-	isa += 5;
-
-	/*
-	 * Check the rest of the ISA string for valid extensions, printing those
-	 * we find.  RISC-V ISA strings define an order, so we only print the
-	 * extension bits when they're in order. Hide the supervisor (S)
-	 * extension from userspace as it's not accessible from there.
-	 */
-	for (e = ext; *e != '\0'; ++e) {
-		if (isa[0] == e[0]) {
-			if (isa[0] != 's')
-				seq_write(f, isa, 1);
-
-			isa++;
-		}
-	}
+	seq_write(f, isa, strlen(isa));
 	seq_puts(f, "\n");
-
-	/*
-	 * If we were given an unsupported ISA in the device tree then print
-	 * a bit of info describing what went wrong.
-	 */
-	if (isa[0] != '\0')
-		pr_info("unsupported ISA \"%s\" in device tree\n", orig_isa);
 }
 
 static void print_mmu(struct seq_file *f, const char *mmu_type)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
