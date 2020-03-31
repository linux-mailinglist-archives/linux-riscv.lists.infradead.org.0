Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ABC199252
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 11:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6+GA6TPn1/jyf3of6CTm6UByCblZrDhZ24yjKpPpfxA=; b=dIIgpmDvoCg8ozlL6aAl/ru4q
	ufIu9ua8FIyy3tbjKFcrT0immJ9/DXglZYiLsV1nI9gJ992cCzx3U7stQFujiusvl6s1zhNqVV2aq
	x5A2TaCPgJuhFPL999aEuYikLkbtU/B90Qko+fynDspyJTLUoaItiROrVBYknv19ZHCT64yrjaeQX
	5FCRM59BOXnBYXJaNPgIKCxF/OY4gszI9K+oybZ/r4bFdoNUFbWsQ5AZdVHT40x0X1UfOJHxhVkb5
	qU9AtemjbFLGD78A/FlCSXYd50E9WapWxlyeEgf2AHU5vHcwoBq2Wi6YgLaX46kOYfq2wTpQYLFmg
	IozB6QXxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDHZ-0003nY-V5; Tue, 31 Mar 2020 09:34:05 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDHV-0003mK-B9
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 09:34:03 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id 02V9WLWb065506;
 Tue, 31 Mar 2020 17:32:21 +0800 (GMT-8)
 (envelope-from tesheng@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 31 Mar 2020
 17:33:15 +0800
From: Eric Lin <tesheng@andestech.com>
To: <linux-riscv@lists.infradead.org>
Subject: [PATCH 3/3] riscv/mm: Add pkmap in print_vm_layout()
Date: Tue, 31 Mar 2020 17:32:41 +0800
Message-ID: <20200331093241.3728-4-tesheng@andestech.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200331093241.3728-1-tesheng@andestech.com>
References: <20200331093241.3728-1-tesheng@andestech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com 02V9WLWb065506
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_023401_643334_26B5A4F7 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: aou@eecs.berkeley.edu, gary@garyguo.net, alex@ghiti.fr,
 david.abdurachmanov@gmail.com, steven.price@arm.com,
 Alan Kao <alankao@andestech.com>, Anup.Patel@wdc.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, atish.patra@wdc.com,
 yash.shah@sifive.com, Eric Lin <tesheng@andestech.com>, palmer@dabbelt.com,
 green.hu@gmail.com, zong.li@sifive.com, paul.walmsley@sifive.com,
 akpm@linux-foundation.org, bp@suse.de, logang@deltatee.com, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When enabling CONFIG_HIGHMEM, lowmem will before pkmap
region and the memory layout will be like as below:

Virtual kernel memory layout:
      lowmem : 0xc0000000 - 0xf5400000   ( 852 MB)
       pkmap : 0xf5600000 - 0xf5800000   (   2 MB)
      fixmap : 0xf5800000 - 0xf5c00000   (4096 kB)
      pci io : 0xf5c00000 - 0xf6c00000   (  16 MB)
     vmemmap : 0xf6c00000 - 0xf7bfffff   (  15 MB)
     vmalloc : 0xf7c00000 - 0xffc00000   ( 128 MB)

Signed-off-by: Eric Lin <tesheng@andestech.com>
Cc: Alan Kao <alankao@andestech.com>
---
 arch/riscv/mm/init.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 59afb479176a..b32d558e3f99 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -80,6 +80,12 @@ static inline void print_mlm(char *name, unsigned long b, unsigned long t)
 static void print_vm_layout(void)
 {
 	pr_notice("Virtual kernel memory layout:\n");
+#ifdef CONFIG_HIGHMEM
+	print_mlm("lowmem", (unsigned long)PAGE_OFFSET,
+		  (unsigned long)high_memory);
+	print_mlm("pkmap", (unsigned long)PKMAP_BASE,
+		  (unsigned long)FIXADDR_START);
+#endif
 	print_mlk("fixmap", (unsigned long)FIXADDR_START,
 		  (unsigned long)FIXADDR_TOP);
 	print_mlm("pci io", (unsigned long)PCI_IO_START,
@@ -88,8 +94,10 @@ static void print_vm_layout(void)
 		  (unsigned long)VMEMMAP_END);
 	print_mlm("vmalloc", (unsigned long)VMALLOC_START,
 		  (unsigned long)VMALLOC_END);
+#ifndef CONFIG_HIGHMEM
 	print_mlm("lowmem", (unsigned long)PAGE_OFFSET,
 		  (unsigned long)high_memory);
+#endif
 }
 #else
 static void print_vm_layout(void) { }
-- 
2.17.0


