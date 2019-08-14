Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776058DEB3
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 22:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTk0x3xKVs5h7RSMONm78+neH0toP5RJYOo6ZUlVyJY=; b=D2Nc3eU61+OLzV
	Q8kBtKRTiMyR0eOFrfTZG69AxpGXXJ4yIgnQbjzy9QJ6Weiod2tUjNOOPB/d7PHGAQIHPV8q4hFQT
	Ve69Km4zXCL6bC0DWg1LTZe4ikcHrCijzgBU5Ihcv1vbjL5a8ZIrcIavobxkKdqsFlS0Lt7wgpPN3
	pyMPMIddxI4UUQZo8/87ZDFXYE2TU3GvMDY3GtlBhu4q71pIODpfJLeHEtqSLRMCaCMxgHix9FmqU
	vKSVi62QLF9EQmmDPq8D4Y/ASPHLNLa6WXsRQPqHzDNpOKy/hiwX/asFKA4RIlULd6mhas+E9KCm5
	Mvo8ZvKp4Y0T7Vn0DF1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzoq-0002U0-Q9; Wed, 14 Aug 2019 20:24:28 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzom-0002TF-D4
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 20:24:26 +0000
Received: by mail-oi1-x244.google.com with SMTP id u15so74806124oiv.0
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 13:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=FWEB5IXfxLQbRwsaJv4PASoOFY+npQTdfta6EzEzKgU=;
 b=NbeLsvzTZ/5uPyXuyWNMwPV8k3h6ZPoD4/z6yigMzzoYE8yAQIcHGOxR9EUoOOGEcf
 FI/95Zs62gZaDFClUDbDoJ0EilpnfhqO/xLT6cVp0jnSkeJrE8lv7rleNw01KG923bEQ
 2gIDx/NR0DXLNDGRVkNqgk6D7QHb6TqpPYdAtV9OmV0NftWmfIFu/XS+0oK2mE5FHlJP
 TblFAJg7x8mQOepGtHPwjojbW9LHDzE1+a/98/vp/SOYbXl6GXP2emcKZyqWRpJf+Ya+
 TG0kVtnE70Ju3jt/SOEgwnTSu/wuY+l7nOAiL2122mPyZcXMUEaKFF+2u+JiPqHFNXH9
 w0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=FWEB5IXfxLQbRwsaJv4PASoOFY+npQTdfta6EzEzKgU=;
 b=jWb7jYlFjz6D793xEKIgwTlnFmb6zFXOv+DD6UtUCPULbwVv75Yc6mLNkKpuCSKgsG
 Ek0t/fAu0tZQsBRZqhQ7IcLfrXPwqbcDWZdDPrCHvdZ5yfOBm3AnwrRlBucPZaJisbqq
 uuRZDnZYwSVKglFreNryKCUEbIm/9Xe4n/a8QQFexY+nyZNmAwmE0mxCHunEuCTYPf2s
 rHf7Fyn9r0k+TIEQrcTZnlv+4VVMCQF+Th7EzzKcnyMS7jzIkY/EDh+YB1KTi22rQOzP
 xs4esBLZibeAGidx73RIhHw+zPvQAIdPVqv6ZdOwyuUZFU6iFWFx+St/dL8dfjhndiwH
 xFeA==
X-Gm-Message-State: APjAAAWsrNtYKhp3wAvJyYWD2NFSc27LNKyeueceSZKFCTPpQar87igo
 M9AIBLMQmXZtLBrboi87/0Q5sA==
X-Google-Smtp-Source: APXvYqxKIqV46yyI7FJbGdz0Vaq4Oyn79QGiDeiZO1OsmP/cDItUzaSREbzG+k9tnFtc4NY1VBdp3A==
X-Received: by 2002:a02:810:: with SMTP id 16mr1256799jac.121.1565814263417;
 Wed, 14 Aug 2019 13:24:23 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 s4sm1377427iop.25.2019.08.14.13.24.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:24:23 -0700 (PDT)
Date: Wed, 14 Aug 2019 13:24:22 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v2 1/2] riscv: Correct the initialized flow of FP register
In-Reply-To: <1565771033-1831-2-git-send-email-vincent.chen@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908141316060.18249@viisi.sifive.com>
References: <1565771033-1831-1-git-send-email-vincent.chen@sifive.com>
 <1565771033-1831-2-git-send-email-vincent.chen@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_132424_456795_8CFC741B 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019, Vincent Chen wrote:

>   The following two reasons cause FP registers are sometimes not
> initialized before starting the user program.
> 1. Currently, the FP context is initialized in flush_thread() function
>    and we expect these initial values to be restored to FP register when
>    doing FP context switch. However, the FP context switch only occurs in
>    switch_to function. Hence, if this process does not be scheduled out
>    and scheduled in before entering the user space, the FP registers
>    have no chance to initialize.
> 2. In flush_thread(), the state of reg->sstatus.FS inherits from the
>    parent. Hence, the state of reg->sstatus.FS may be dirty. If this
>    process is scheduled out during flush_thread() and initializing the
>    FP register, the fstate_save() in switch_to will corrupt the FP context
>    which has been initialized until flush_thread().
> 
>   To solve the 1st case, the initialization of the FP register will be
> completed in start_thread(). It makes sure all FP registers are initialized
> before starting the user program. For the 2nd case, the state of
> reg->sstatus.FS in start_thread will be set to SR_FS_OFF to prevent this
> process from corrupting FP context in doing context save. The FP state is
> set to SR_FS_INITIAL in start_trhead().
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks Vincent.  I fixed a 'checkpatch.pl --strict' issue, added a 
"Fixes:" line and cc'ed stable, and queued the following for v5.3-rc.


- Paul


From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 14 Aug 2019 16:23:52 +0800
Subject: [PATCH] riscv: Correct the initialized flow of FP register

  The following two reasons cause FP registers are sometimes not
initialized before starting the user program.
1. Currently, the FP context is initialized in flush_thread() function
   and we expect these initial values to be restored to FP register when
   doing FP context switch. However, the FP context switch only occurs in
   switch_to function. Hence, if this process does not be scheduled out
   and scheduled in before entering the user space, the FP registers
   have no chance to initialize.
2. In flush_thread(), the state of reg->sstatus.FS inherits from the
   parent. Hence, the state of reg->sstatus.FS may be dirty. If this
   process is scheduled out during flush_thread() and initializing the
   FP register, the fstate_save() in switch_to will corrupt the FP context
   which has been initialized until flush_thread().

  To solve the 1st case, the initialization of the FP register will be
completed in start_thread(). It makes sure all FP registers are initialized
before starting the user program. For the 2nd case, the state of
reg->sstatus.FS in start_thread will be set to SR_FS_OFF to prevent this
process from corrupting FP context in doing context save. The FP state is
set to SR_FS_INITIAL in start_trhead().

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Fixes: 7db91e57a0acd ("RISC-V: Task implementation")
Cc: stable@vger.kernel.org
[paul.walmsley@sifive.com: fixed brace alignment issue reported by
 checkpatch]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/switch_to.h |  6 ++++++
 arch/riscv/kernel/process.c        | 11 +++++++++--
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 853b65ef656d..949d9cd91dec 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -19,6 +19,12 @@ static inline void __fstate_clean(struct pt_regs *regs)
 	regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
 }
 
+static inline void fstate_off(struct task_struct *task,
+			      struct pt_regs *regs)
+{
+	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_OFF;
+}
+
 static inline void fstate_save(struct task_struct *task,
 			       struct pt_regs *regs)
 {
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index f23794bd1e90..fb3a082362eb 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -64,8 +64,14 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
 	unsigned long sp)
 {
 	regs->sstatus = SR_SPIE;
-	if (has_fpu)
+	if (has_fpu) {
 		regs->sstatus |= SR_FS_INITIAL;
+		/*
+		 * Restore the initial value to the FP register
+		 * before starting the user program.
+		 */
+		fstate_restore(current, regs);
+	}
 	regs->sepc = pc;
 	regs->sp = sp;
 	set_fs(USER_DS);
@@ -75,10 +81,11 @@ void flush_thread(void)
 {
 #ifdef CONFIG_FPU
 	/*
-	 * Reset FPU context
+	 * Reset FPU state and context
 	 *	frm: round to nearest, ties to even (IEEE default)
 	 *	fflags: accrued exceptions cleared
 	 */
+	fstate_off(current, task_pt_regs(current));
 	memset(&current->thread.fstate, 0, sizeof(current->thread.fstate));
 #endif
 }
-- 
2.23.0.rc1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
