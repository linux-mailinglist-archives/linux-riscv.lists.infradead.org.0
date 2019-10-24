Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E593DE2A39
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 08:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2nrqdR4ygTqc7Mo4I5pbv4CVRqrZSkwEPvN0L1swog=; b=XYW2UukzOgPBc4
	YTP05gVbzgXwYtHr2GuMfR3Nfh5S8GkNFCXyejQEgsKlYo6BZvBjEqAakyRJolVI75zBOTN566TjS
	0SP8ozvlU6N6tO3kWcyO/G58cQB6S1KbunJcYKI6lgM/9jmR/ee9P3kL4wgGsOEtsBEsaKaz5RHFH
	pkGMRk+RmsxbueoVKG6sdkOqSHs1N3E3zAj+n0YYe/ZTEO6aAeDZocs1U3mqc++7ZmUckX28bKXZA
	k6sPAXEc6CK0h6SaGs0twI23G+7jEbTsoTY2AQ95KIOSaEd/RLAYsYxpOMsaOKoRPnfNjkzT/2pCE
	4rJpYwRp/2XhhXo/nh2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNWBf-0004ol-JH; Thu, 24 Oct 2019 06:01:31 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWBb-0004nZ-5e
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 06:01:29 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436418|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.199964-0.0374202-0.762616; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03289; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=3; RT=3; SR=0;
 TI=SMTPD_---.FpdA-Fy_1571896877; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.FpdA-Fy_1571896877)
 by smtp.aliyun-inc.com(10.147.42.16); Thu, 24 Oct 2019 14:01:17 +0800
Date: Thu, 24 Oct 2019 14:01:17 +0800
From: Mao Han <han_mao@c-sky.com>
To: Nick Kossifidis <mick@ics.forth.gr>
Subject: Re: Perf-related compilation issues
Message-ID: <20191024060116.GA786@vmh-VirtualBox>
References: <1bba622b-1f59-d21b-f396-d9c1a021dc3a@ics.forth.gr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bba622b-1f59-d21b-f396-d9c1a021dc3a@ics.forth.gr>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_230127_416769_6BC19798 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 06:15:43PM +0300, Nick Kossifidis wrote:
> Hello all,
> 
> a) Compiling the current fixes branch with a minimal config I get the
> following error:
> 
> riscv64-unknown-linux-gnu-ld: arch/riscv/kernel/perf_callchain.o: in
> function `.L0 ':
> perf_callchain.c:(.text+0x16a): undefined reference to `walk_stackframe'
> make: *** [Makefile:1074: vmlinux] Error 1
> 
> 
> I've removed the static delcaration of walk_stackframe on stackframe.c
> and marked walk_stackframe as extern on perf_callchain.c to fix the
> above issue.
>

Beside the compile problem caused by:
[PATCH v3 5/8] riscv: mark some code and data as file-static
similar issue may happen when CONFIG_FRAME_POINTER is not defined.
I didn't see the CONFIG_FRAME_POINTER in stacktrace.c, and the 
conditional for !CONFIG_FRAME_POINTER looks quite strange, keep
adding the sp and read pc from that?

        ksp = (unsigned long *)sp;
        while (!kstack_end(ksp)) {
                if (__kernel_text_address(pc) && unlikely(fn(pc, arg)))
                        break;
                pc = (*ksp++) - 0x4;
        }

A conditional for perf_callchain_kernel might be properly to fix that.
--- a/arch/riscv/kernel/perf_callchain.c
+++ b/arch/riscv/kernel/perf_callchain.c
+#ifdef CONFIG_FRAME_POINTER
 void notrace walk_stackframe(struct task_struct *task,
        struct pt_regs *regs, bool (*fn)(unsigned long, void *), void *arg);
 void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
@@ -92,3 +93,4 @@ void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
 
        walk_stackframe(NULL, regs, fill_callchain, entry);
 }
+#endif


> 
> b) Then If I compile the kernel without CONFIG_RISCV_BASE_PMU I get
> 
> 
> ./arch/riscv/include/asm/perf_event.h:26:2: error: #error "Please
> provide a valid RISCV_MAX_COUNTERS for the PMU."
>  #error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."
> 
> 
> I noticed that the only place where CONFIG_RISCV_BASE_PMU is checked is
> on perf_event.h and only for this parameter that's not defined anywhere
> else. So for now if one tries to compile the kernel without PMU the
> kernel won't compile + I don't see how unsetting this saves code size as
> the config description says.
> 

The content inside perf_event.h mostly relate to HW PMU. Other
architectures normally put them inside perf_event.c or pmu.h, they are
not compiled when CONFIG_PERF_EVENTS is selected and HW PMU is not
selected, user can use software event under this configuration.
Base pmu shouldn't be registed when it is defined in dts.
I think it can be fixed by put the content inside perf_event.h
into a riscv_pmu.h, only compile perf_event.c when CONFIG_RISCV_BASE_PMU
is selected or add conditional inside it:

--- a/arch/riscv/kernel/perf_event.c
+++ b/arch/riscv/kernel/perf_event.c
@@ -474,12 +474,13 @@ int __init init_hw_perf_events(void)
        if (node) {
                of_id = of_match_node(riscv_pmu_of_ids, node);
 
-               if (of_id)
+               if (of_id) {
                        riscv_pmu = of_id->data;
+                       perf_pmu_register(riscv_pmu->pmu, "cpu", PERF_TYPE_RAW);
+               }
                of_node_put(node);
        }
 
-       perf_pmu_register(riscv_pmu->pmu, "cpu", PERF_TYPE_RAW);
        return 0;
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -38,7 +38,7 @@ obj-$(CONFIG_MODULE_SECTIONS) += module-sections.o
 obj-$(CONFIG_FUNCTION_TRACER)  += mcount.o ftrace.o
 obj-$(CONFIG_DYNAMIC_FTRACE)   += mcount-dyn.o
 
-obj-$(CONFIG_PERF_EVENTS)      += perf_event.o
+obj-$(CONFIG_RISCV_BASE_PMU)   += perf_event.o
 obj-$(CONFIG_PERF_EVENTS)      += perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)   += perf_regs.o

Thanks,
Mao Han

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
