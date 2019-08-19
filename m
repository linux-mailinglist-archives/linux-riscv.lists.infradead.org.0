Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CD3921B8
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 12:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjlQbLUCLuH7cAU9GzavHCOq9UR5ZEmc9L6h2MEaUUs=; b=HYKX0tE7nl8qEl
	0Z1LiUAKR+bI2yayABZdUFU0PDajaiJtepq9I42D0MA1xulTdcSqA2dfhRx/quLwK2OzykqrRbSOw
	O6Dm44NoxHcXmKDL/GnMlMY6RGgTuPra2ufkGV0b019tsjxv6DfLLfyqPWZO/YuzCtij7wrdUgutS
	j+QRCpXbAvplKJ7+AjqxrJ5V1K5evoIsYq1IA8Q7fJ+C/oIa3zfL7mVCiPf1hMUhabiJMeNPvSM24
	6qldaHBdT0srRTRzr1doHIkN+PTTzwg5QQ+UVMvv7Avz9iAARDz62M8tqhyytbo6KJupR1986Da5B
	5XiFvr5gtWwL/wthoVnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfKv-0000iv-PH; Mon, 19 Aug 2019 10:56:29 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfKr-0000iE-Dp
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 10:56:28 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07440019|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.340673-0.0196074-0.63972; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03303; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=3; RT=3; SR=0;
 TI=SMTPD_---.FEaxY0q_1566212179; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.FEaxY0q_1566212179)
 by smtp.aliyun-inc.com(10.147.44.129);
 Mon, 19 Aug 2019 18:56:19 +0800
Date: Mon, 19 Aug 2019 18:56:19 +0800
From: Mao Han <han_mao@c-sky.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH V3 0/3] riscv: Add perf callchain support
Message-ID: <20190819105618.GA6377@vmh-VirtualBox>
References: <cover.1558081981.git.han_mao@c-sky.com>
 <alpine.DEB.2.21.9999.1908161008450.18249@viisi.sifive.com>
 <20190819081758.GA15999@vmh-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819081758.GA15999@vmh-VirtualBox>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_035625_624363_FC2DD448 
X-CRM114-Status: GOOD (  19.87  )
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

On Mon, Aug 19, 2019 at 04:18:01PM +0800, Mao Han wrote:
> Hi Paul,
> On Fri, Aug 16, 2019 at 10:14:01AM -0700, Paul Walmsley wrote:
> > Hello Mao Han,
> > 
> > On Fri, 17 May 2019, Mao Han wrote:
> > 
> > > This patch set add perf callchain(FP/DWARF) support for RISC-V.
> > > It comes from the csky version callchain support with some
> > > slight modifications. The patchset base on Linux 5.1.
> > > 
> > > CC: Palmer Dabbelt <palmer@sifive.com>
> > > CC: linux-riscv <linux-riscv@lists.infradead.org>
> > > CC: Christoph Hellwig <hch@lst.de>
> > > CC: Guo Ren <guoren@kernel.org>
> > 
> > I tried these patches on v5.3-rc4, both on the HiFive Unleashed board 
> > with a Debian-based rootfs and QEMU rv64 with a Fedora-based rootfs.  For 
> > QEMU, I used defconfig, and for the HiFive Unleashed, I added a few more 
> > Kconfig directives; and on both, I enabled CONFIG_PERF_EVENTS.  I built 
> > the perf tools from the kernel tree.
> > 
> > Upon running "/root/bin/perf record -e cpu-clock --call-graph fp 
> > /bin/ls", I see the backtraces below.  The first is on the HiFive 
> > Unleashed, the second is on QEMU.  
> > 
> > Could you take a look and tell me if you see similar issues?  And if not, 
> > could you please walk me through your process for testing these patches on 
> > rv64, so I can reproduce it here?
> >
> 
> I'v tried the command line above and got similar issues with probability.
> unwind_frame_kernel can not stop unwind when fp is a quite large
> value(like 0x70aac93ff0eff584) which can pass the simple stack check.
>         if (kstack_end((void *)frame->fp))
>                 return -EPERM;
>         if (frame->fp & 0x3 || frame->fp < TASK_SIZE)
>                 return -EPERM;
> handle_exception from arch/riscv/kernel/entry.S will use s0(fp) as temp
> register. The context for this frame is unpredictable. We may add more
> strict check in unwind_frame_kernel or keep s0 always 0 in handle_exception
> to fix this issue.
> 

perf record -e cpu-clock --call-graph fp /bin/ls seems can work stably
with this change applied.
diff --git a/arch/riscv/kernel/perf_callchain.c b/arch/riscv/kernel/perf_callchain.c
index 8b57903..dd27c67 100644
--- a/arch/riscv/kernel/perf_callchain.c
+++ b/arch/riscv/kernel/perf_callchain.c
@@ -16,6 +16,8 @@ static int unwind_frame_kernel(struct stackframe *frame)
                return -EPERM;
        if (frame->fp & 0x3 || frame->fp < TASK_SIZE)
                return -EPERM;
+        if (frame->fp < CONFIG_PAGE_OFFSET)
+                return -EPERM;
 
        *frame = *((struct stackframe *)frame->fp - 1);
        if (__kernel_text_address(frame->ra)) {


PS: I got some compile error while compiling glibc 2.30 with linux
v5.3-rc4 header. vfork.S include linux/sched.h(./include/uapi/linux/sched.h)
which has a struct clone_args inside, added by
7f192e3cd316ba58c88dfa26796cf77789dd9872.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
