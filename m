Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69DADE1E
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 10:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=madMTuDkqY/lYO+RIzVW3BN2eDFOeddommsJLy0+awc=; b=LnaxNIo/W27g8h
	0bP/Z499j/VjcUoKotc2aFwl5aszILLvNXcM0xCoI7Q515/67j+YWETnk5zg7N1IVAdDBVFtbBldc
	pB6BmhwVXC4qPRv78134Tqn/azv4kGRUsSWqNEXnhm+UrqRxG3K+v+aLUrNvLFavX4Q0/2ejpiDu2
	w2oojoZwQpo2N3j0dxFQyh6iduHIdWMYbIRkrlISYhljZgUYGMowrop5NDyRlIWp/i5upqqvROlEb
	wet6FWASVYizM+EQQv2KF4mYygyHFvbJkyHZfwPie/inb+5g1op4vinC9buWCRu38Q4cwgnq0uIkP
	Dq4iLaDuNnQYWkEZHEeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1q4-0002Fm-9C; Mon, 29 Apr 2019 08:40:40 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1q0-0002EE-A8
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 08:40:38 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07727315|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.115371-0.00976564-0.874864; FP=0|0|0|0|0|-1|-1|-1;
 HT=e01a16367; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=4; RT=4; SR=0;
 TI=SMTPD_---.ERaYIfo_1556527229; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.ERaYIfo_1556527229)
 by smtp.aliyun-inc.com(10.147.41.178);
 Mon, 29 Apr 2019 16:40:29 +0800
Date: Mon, 29 Apr 2019 16:39:40 +0800
From: Mao Han <han_mao@c-sky.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 1/3] riscv: Add perf callchain support
Message-ID: <20190429083940.GA22718@vmh-VirtualBox>
References: <195185ea63240ed396026505d96d1f6449963482.1554961908.git.han_mao@c-sky.com>
 <mhng-dd1d2b4c-122f-48d8-ac56-1c6bff93f236@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-dd1d2b4c-122f-48d8-ac56-1c6bff93f236@palmer-si-x1e>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_014036_529152_7390BB77 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, guoren@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 02:11:00PM -0700, Palmer Dabbelt wrote:
> On Thu, 11 Apr 2019 00:53:48 PDT (-0700), han_mao@c-sky.com wrote:
> >+	if (!kstack_end((void *)frame->fp) &&
> >+	    !((unsigned long)frame->fp & 0x3) &&
> >+	    ((unsigned long)frame->fp >= TASK_SIZE)) {
> >+		frame->ra = ((struct stackframe *)frame->fp - 1)->ra;
> >+		frame->fp = ((struct stackframe *)frame->fp - 1)->fp;
> 
> It looks like this depends on having a frame pointer?  In that case, shouldn't
> we add some Kconfig logic to make CONFIG_PERF_EVENTS select
> -fno-omit-frame-pointer?  Frame pointers aren't enabled by default on RISC-V
> and therefor are unlikely to exist at all.
>

Yes, frame pointer is required for kernel backtrace, -fno-omit-frame-pointer
should be added if frame pointer is not enabled by default on RISC-V.
When I testing the callchain support with buildroot chunk
git://git.busybox.net/buildroot
cbf1d861fadb491eee6e3686019d8f67d7f4ad85
both kernel and user program have fp without adding any extra option,
so I thought frame pointer was enabled by default.

ffffffe0000009ee <kernel_init_freeable>:
ffffffe0000009ee:       711d                    addi    sp,sp,-96
ffffffe0000009f0:       ec86                    sd      ra,88(sp)
ffffffe0000009f2:       e8a2                    sd      s0,80(sp)
ffffffe0000009f4:       e4a6                    sd      s1,72(sp)

void test_3(void)
{
   10498:       fe010113                addi    sp,sp,-32
   1049c:       00113c23                sd      ra,24(sp)
   104a0:       00813823                sd      s0,16(sp)
   104a4:       02010413                addi    s0,sp,32

> >+		/* make sure CONFIG_FUNCTION_GRAPH_TRACER is turned on */
> 
> Should that also be mandated by a Kconfig?
>

Yes, it is required for ftrace_graph_ret_addr support.
It's already default for ARCH_RV64I in Kconfig.
 
> >+/*
> >+ * This will be called when the target is in user mode
> >+ * This function will only be called when we use
> >+ * "PERF_SAMPLE_CALLCHAIN" in
> >+ * kernel/events/core.c:perf_prepare_sample()
> >+ *
> >+ * How to trigger perf_callchain_[user/kernel] :
> >+ * $ perf record -e cpu-clock --call-graph fp ./program
> >+ * $ perf report --call-graph
> >+ *
> >+ * On RISC-V platform, the program being sampled and the C library
> >+ * need to be compiled with * -mbacktrace, otherwise the user
> 
> What is "-mbacktrace"?  I don't remember that ever being a RISC-V GCC option,
> and my compiler doesn't undersand it.  It understands "-fbacktrace" but that
> doesn't produce a frame pointer.
>

It's a csky specific option, I forget to modify the comment.
So it should be -fno-omit-frame-pointer here.

Thanks,
Mao Han

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
