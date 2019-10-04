Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9CBCB2F1
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 03:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPH8nQDi5iAu/HzgSAe75N91RmaVzbiUX6B1pNke1/s=; b=i4QfJCgeMyvIuG
	NVgQM7K3WrhjxbS6vfvX3xTmv62Cn52XGaDKEcyR5+TGiNxRfRg81Rbb6OwZiH3y54C6plVr9JPkO
	FGNeK3psKlPuVin5WlVwM8DGGXlb2ax9iM/b+85F+K8ic8YioSXkqxwkTTRJ5lQKC5dfxBfYiH+Av
	+KjvZncrhk/j71BpnFxtr1JSoqQ2+J8H1+ljRV9BjShCKyGpcgTz9OkcReakBTVe9uPDmgjPWjrN3
	vODh3buV8z12JBpoQjIfpWdsBdEX86hUG1kGjqNtP4KSlqW+8t0+FgYrcbast7475fHcbL5lNSBkj
	xDM2PwDoSP/xEDgds1gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCGS-00022R-DK; Fri, 04 Oct 2019 01:20:12 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCGN-00010U-Mn
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 01:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570152007; x=1601688007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lvQhkdg9mYtc/RKe847gIG8//uYicCwg807haVRxHDE=;
 b=myusSMDEBoNzDLlnpjTqnX4OEvACgpzjeaA50vcQP9N/OoThK9j+GM5s
 Yv6zfRyUlOEtVUKNDY5eNPXHHJvIDjn8oQdjJbqPEUt87+nwGfDSkKgFC
 IPeZoQj6ElgK6JXph4Tj/DbW/RxQZYBvn0ws4bgQT5dDyCddtiWfgm9uK
 nrpt19Wb29of4Zs+pT/AJLOhKSugcyMafUQKzRFoypP1L14IYJxFEoB6F
 Jsk+2kqF6N7SfDSeyBKxjAram0TMKzXd+5MQ1AJ0YuPNkL7HzMDQ7OhdQ
 TDMp+FJieU2UC8lQexaiUSQ8e/NpcUh6svTND2gI/Jt3hJHctgBV00mCH g==;
IronPort-SDR: N0KON3w4IBIK4uzBgRixBWUwN3DNOo/WMXDFyAtbnV6Q+vDOAyho5ocFsXBCIGrXx8NzMV1edm
 YpIaRweqwnIzjQjb/FXgR/vEg4kT84RKnqsEG0jmngzJ/vv+nGUQSNV4RrGOv1+p0v8tP520CD
 fi9S4nNZa/HyitVYvy9YwvVisYncofUd+qi6N4mEj6j0HUUigg4nVJYtwx0lIi0C3rGDgfdSqg
 OzPIThY6nJ4pRYNmA6xlMW0vIm4LrD+qp0h9hmZbeNYxJwlsVr3nmWunpIJOkHb069vqsIuvS0
 yg0=
X-IronPort-AV: E=Sophos;i="5.67,254,1566835200"; d="scan'208";a="121336703"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 04 Oct 2019 09:20:02 +0800
IronPort-SDR: PNyy1Q/xFf+hwy/2GkdxilIJfJcdITk47z5aM5zgd3zcpLNps0tCm7bsxlvBwLj+W7mMxgiqDv
 5OB7zsGG+79sBBt0y1lwot1E8Z8MkdqbxlunYP39MOV0zea7xww9X8e4q6rJuqW6tDkdzvxQ6F
 kHCio16+hZ7ggXqjm1eNl/wJ2RR/dImvhSXh99Vx7GqVsUMKG0J/bsvpYpWat42kPzHucgI0lU
 yjd2UOUHZ+z+lXTBsiqEGeTKVtR0jbV0v05sWkVkkPkrzY//jeebqBG3flfXYFbLqu3VKut2BI
 zh8HAKnIALXj+ofj5M5IaVPE
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 18:16:11 -0700
IronPort-SDR: qKeZmEpKTEzSQldkunuCDSObARUFEHemYXMJy0fLs8vX3FTw8wVQI9evPWDF+kEbIkPFPamW/U
 //+xq2haZX6adORa+igaX42fIvmmBOu79Mj3i2nAZrAYMvkuE3VFBoRbAHwV58FzvEXmWf+JIt
 fb94+Pq0OFFedR10EnzbhjzwcPtGu61jyeQdMJ6AK5qOXaqcEjPLZyAJSWjC1RyXkXIjMLJsbx
 mBy84UX7KzP0GpO5Cb4SNIlZRpRN7w7Q46xegvYi9NaPV736UHyL8f4dJnQaq6NYVo5fTvHcKA
 G+I=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 03 Oct 2019 18:20:02 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH  1/2] RISC-V: Remove unsupported isa string info print
Date: Thu,  3 Oct 2019 18:19:59 -0700
Message-Id: <20191004012000.2661-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004012000.2661-1-atish.patra@wdc.com>
References: <20191004012000.2661-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_182007_813322_90E0AB50 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Johan Hovold <johan@kernel.org>,
 Alexandre Ghiti <aghiti@upmem.com>, Atish Patra <atish.patra@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Anup Patel <anup@brainfault.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org
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
