Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB991107C93
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 03:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlDq9OrQLbwTmknOffLglOwiRgwzp7QfjYTQmFzv6Ps=; b=iIN4u7Xk3XEfGt
	5PZ5LjueHbHEHQkEoL/yam1S2HDsXg+HeQUOHLJMdFVI11MMTs5rgvq5gvRLtV0qvSqPayfpygXbo
	AjA5NmAgOUW0yQvhjF+eoyrKmxWIMD/fp7qII5VyfrvpUxISzDmWpXvUQM7+rhUaoHTv/kKQmCk+H
	0ZElMFMYAjBWTLrELJNdLxQ0OUMu6Wd0UkDJOj61UVOj9q+tCuQChJZPXO1/8Mpgl9jKE4mw/K9FH
	j9tvJXxnvL8l6yVxFtlDNCg/vWdIqVCPbTtvBlbRxLRvAzUC6s3KgaChvySe7bp3zSF6x06Xv899Y
	sufWXLY7Y/bjYjWFSxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYLc5-00035u-Ah; Sat, 23 Nov 2019 02:57:33 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYLc2-00035Y-8A
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 02:57:31 +0000
Received: by mail-il1-x142.google.com with SMTP id i6so9037300ilr.11
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 18:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=yH4Y/VZBJNypI69fryRWHnM3YvLC5pprHhmD6xuLHHY=;
 b=jsczJLCKJeiUOE0FeT5APJ0lVv+av3CejiFSaMmNxx+LsgmHoO3KGk4ReoBi5gyl1f
 NQXxiuZVmj4UqhFzKKS8zkE4oDEQ4bKuw/qjCAstpPS1Y60GYq7O8yQRsxherm5aS3Gm
 8Co9yLzOIXPfHsmC9e5D8WiXqxIwLMhTsyRRagWS+lujAlCV9WBed8XLTgtGaqcsmoZW
 yIg63k1GCH+D3BdqUhhNWKbY0fmYFTAKfm9TTDzCDKeN5yPXHIQOhqQWo3Vn03zWcYff
 4gokQnx5rHFCIt0ldEW3XxWB/UsVDV1T/lYI0ts/r8SiwP8ElnolFikRqtJUQkGTyCFq
 NuHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=yH4Y/VZBJNypI69fryRWHnM3YvLC5pprHhmD6xuLHHY=;
 b=RgEcF7pD/IxvQDrW/mR9PjUJTyzZe6oib02shsQPGMsdbGofWxbgLPEQC92PrRErMZ
 I8HkOjPVFnUaU998g5tEKIiLK2ySdTdSi6hjzBx1XDlg0XXdHfW65rPG0DdfZdjrIquX
 pRErPp+g+um0dAmIwXNKM19VcbKEWzSdPRpeyp3bhpR7guwFqOwMpeEH3iJ6QYu00+mP
 dLk5zu+eBt8rY0bop7yEzeypdbi601c0HxtaAR5GFySUcY8dch2x+0cEWMMXk5TkPFeh
 vTmqDrqXQg/wjLaiTgzU5yLhp0cq+KxUlqsO48HvQFAaDPLEsrybzK3/8UOlCSAaK7oV
 XNHg==
X-Gm-Message-State: APjAAAUqc8+CN8FRPDVLv7sDdJEdffWaV7z2MP8oS5EkKpPYHk+YmyQt
 2bUEOAMCOU+gy+OQ1EeKZ7IJDQ==
X-Google-Smtp-Source: APXvYqyUPZmbBKkTYRnzFl7gku7LXrzHzXLv8sJNM2GLB9CL9PL9p/dGxPHeK++UIo0GACZBjpuKVQ==
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr3671456ilq.282.1574477849400; 
 Fri, 22 Nov 2019 18:57:29 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id d23sm2823667iom.55.2019.11.22.18.57.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 18:57:28 -0800 (PST)
Date: Fri, 22 Nov 2019 18:57:27 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2] RISC-V: Add address map dumper
In-Reply-To: <1574056694-28927-1-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1911221855090.14532@viisi.sifive.com>
References: <1574056694-28927-1-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_185730_292945_E489BA89 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "wangkefeng.wang@huawei.com" <wangkefeng.wang@huawei.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Yash,

On Mon, 18 Nov 2019, Yash Shah wrote:

> Add support for dumping the kernel address space layout to the console.
> User can enable CONFIG_DEBUG_VM to dump the virtual memory region into
> dmesg buffer during boot-up.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Thanks, I've queued up the following patch.  I added the PCI I/O region,
and also dropped some of the .init/.text/etc. prints since they duplicate 
the output from mem_init_print_info().


- Paul

From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 18 Nov 2019 05:58:34 +0000
Subject: [PATCH] RISC-V: Add address map dumper

Add support for dumping the kernel address space layout to the console.
User can enable CONFIG_DEBUG_VM to dump the virtual memory region into
dmesg buffer during boot-up.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
[paul.walmsley@sifive.com: dropped .init/.text/.data/.bss prints;
 added PCI legacy I/O region display]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/mm/init.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 573463d1c799..c2c0e244555f 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -45,6 +45,37 @@ void setup_zero_page(void)
 	memset((void *)empty_zero_page, 0, PAGE_SIZE);
 }
 
+#ifdef CONFIG_DEBUG_VM
+static inline void print_mlk(char *name, unsigned long b, unsigned long t)
+{
+	pr_notice("%12s : 0x%08lx - 0x%08lx   (%4ld kB)\n", name, b, t,
+		  (((t) - (b)) >> 10));
+}
+
+static inline void print_mlm(char *name, unsigned long b, unsigned long t)
+{
+	pr_notice("%12s : 0x%08lx - 0x%08lx   (%4ld MB)\n", name, b, t,
+		  (((t) - (b)) >> 20));
+}
+
+static void print_vm_layout(void)
+{
+	pr_notice("Virtual kernel memory layout:\n");
+	print_mlk("fixmap", (unsigned long)FIXADDR_START,
+		  (unsigned long)FIXADDR_TOP);
+	print_mlm("pci io", (unsigned long)PCI_IO_START,
+		  (unsigned long)PCI_IO_END);
+	print_mlm("vmemmap", (unsigned long)VMEMMAP_START,
+		  (unsigned long)VMEMMAP_END);
+	print_mlm("vmalloc", (unsigned long)VMALLOC_START,
+		  (unsigned long)VMALLOC_END);
+	print_mlm("lowmem", (unsigned long)PAGE_OFFSET,
+		  (unsigned long)high_memory);
+}
+#else
+static void print_vm_layout(void) { }
+#endif /* CONFIG_DEBUG_VM */
+
 void __init mem_init(void)
 {
 #ifdef CONFIG_FLATMEM
@@ -55,6 +86,7 @@ void __init mem_init(void)
 	memblock_free_all();
 
 	mem_init_print_info(NULL);
+	print_vm_layout();
 }
 
 #ifdef CONFIG_BLK_DEV_INITRD
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
