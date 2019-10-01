Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EC1C2B50
	for <lists+linux-riscv@lfdr.de>; Tue,  1 Oct 2019 02:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s35d91ZdcdkTPu4B75HI5R7Cwl69FgurLEq2nhvk5VE=; b=A7zDgO0oo9nvug
	oIOnNvVCCs5/x1pHWEt1HVArJvZplEnM6QyMViKVbxmJubBlp0r+WFqmfWQg9zWa4GC0xcXHPiIyc
	F6o/o+CV53hwg3P1AYBodqh4XGJGYprHOPKY4GLYE/itEWAsI5orHa18ukIbxAgw3bu4AO2mpRrpa
	EaSQp/hBSVBRz6n2qRFkDghr1NgH4NYjJjnlKqqEXBm8AcIWemu4nLPtkuWz4p9mjHGAZrCsSJv0L
	7ErJnN1LBpLPqJOqPU2+ah3fnWySgWjg/Ur/Gx5t7FQw5nDmToUifnOURQ5MdQn3Wu9ShwBGicFQJ
	XOc/wwKAyFe+bmrvFj3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF5xH-0006JS-Q9; Tue, 01 Oct 2019 00:23:51 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF5xD-0006Hm-Md
 for linux-riscv@lists.infradead.org; Tue, 01 Oct 2019 00:23:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569889427; x=1601425427;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j/bjglqWF/oGbWlxsWj+tvbJ6Bessty1AA1xECR1Vog=;
 b=DBG9148VauShiw/Ha+unqmWYD34XVqNCQqcGKgJrLvCniyD09QCxuSqG
 sqpN3dVX3uTwMaf8Ma3aJ1kuUi7dZn7+dVGkbAfG7OpIEzkVqCBFzkCLA
 efl/yfUed7T6y1L3m/snnL44ZA1o94GoIG1HoLoupZ2iknVrZ/H+FhEsp
 CaGmjvAbqNYG/GwWcCtSQ0w6BpyUM6ZEAfWnT0fdqOf5E3QlxXSae5ktw
 JDiB/aa11EdFTxfD5RLWyiwKBwSEyePGXzaB2ig645UA4N4y7+B6Ih+R4
 zujsQF59np5xQuRP+JM9DYVVkw/VIebnG4ieargfd9kMUKVhvYSxVjnB1 Q==;
IronPort-SDR: k5QHEDSmENPPPD7596iQVhJeRS0BptY/sWNQcgKuD1s0nyWfAsmDPM5Vzmk199vqSdn9CyRn/Q
 hXudsxp0toilamXn0VbFUvrjy7sMvNv+os11av9giBntyu6L/tU5ONNFh+kah3jWFQXCW3qBxq
 NPs7Oem3Z2PYHZ9NWUdD4RstGv6w6a6PSt4yFTXLEJtvztvn7cvheZyjPHVwbHU6W9sDG50+MP
 WjVVAvAplDK25nmaloz5VOhH6bMugKIgD7SZy5wxR/jMi+ii+U7p+6QZxYvagLk+6EjXgnjfRI
 Bs4=
X-IronPort-AV: E=Sophos;i="5.64,569,1559491200"; d="scan'208";a="121061940"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 01 Oct 2019 08:23:44 +0800
IronPort-SDR: PCmkcFsIb5VHcLowatW8vyQoR72mtzZ2xwrM7NtigHj+X1yHTdjfB6lW7nlAbfayoarvfK5TLJ
 hXCHiNG5rQncE8Ko89E7j/xBno/eOcc+L7LL2ubhRJ34SY8teAo+5qqLgNFCpwNQ8Kha/Nx5n8
 ydbDeHvrAa5wd5i7ROUDlR7e8dG1sS/UWEkj2YJ0/EWlczs5AQxsAXs5IUXPWvBPJf91EzmT9f
 8l3VEYdIWRJCZrfKJacx4xKjbDtIpHDPN06e+osAWpJCxKfdxlTSodOUqqyXt7wTMVbIj1WAQs
 qe19PzGmWpLyYInuS6+USK+G
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 17:19:58 -0700
IronPort-SDR: Enpz6ImGLYlKOaKEwe6Rbmc3lpN5MHdhtg9jzP56tbwwu7o/wCSsI6NznTgoDyXW5JR6DdBbtK
 R6bq130Vc/KfWJvdEGEd98JWn0oidKKoIMOVn5RpLcv9ZqpRTROCFyw6/d81DrnzuP4Dcb9jXB
 IQX8Hhbpk1BM92zQhRP1D9hKEgNxm23tY90YbREGxWOlyORjvfGAdkxrPuqqSXME/PofiaZeK1
 UrcBJkdK+yG9Eb1k1PLq1QGQw8M8SeNs/r9r/dkXETQyYfrcxed4V6oeE2OzbAH9ntc+jHEcV+
 9/4=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Sep 2019 17:23:45 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v6 PATCH] RISC-V: Remove unsupported isa string info print
Date: Mon, 30 Sep 2019 17:23:18 -0700
Message-Id: <20191001002318.7515-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_172347_794717_CB1FCAB3 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Johan Hovold <johan@kernel.org>,
 hch@infradead.org, Atish Patra <atish.patra@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
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
---
 arch/riscv/kernel/cpu.c | 35 ++++-------------------------------
 1 file changed, 4 insertions(+), 31 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 7da3c6a93abd..9486c426af86 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -48,49 +48,22 @@ int riscv_of_processor_hartid(struct device_node *node)
 
 static void print_isa(struct seq_file *f, const char *orig_isa)
 {
-	static const char *ext = "mafdcsu";
-	const char *isa = orig_isa;
-	const char *e;
-
 	/*
 	 * Linux doesn't support rv32e or rv128i, and we only support booting
 	 * kernels on harts with the same ISA that the kernel is compiled for.
 	 */
 #if defined(CONFIG_32BIT)
-	if (strncmp(isa, "rv32i", 5) != 0)
+	if (strncmp(orig_isa, "rv32i", 5) != 0)
 		return;
 #elif defined(CONFIG_64BIT)
-	if (strncmp(isa, "rv64i", 5) != 0)
+	if (strncmp(orig_isa, "rv64i", 5) != 0)
 		return;
 #endif
 
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
+	seq_write(f, orig_isa, strlen(orig_isa));
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
