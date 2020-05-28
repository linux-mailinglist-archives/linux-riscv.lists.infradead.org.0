Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9EA1E57BF
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f85Vn4OuGxjQe/WprhGo5P1pwBgJ5q0VeEPd5gC4HYw=; b=UFWUuwxbjrUgrQ3i2B9mzkOURo
	CX8qm+vWTqfxYuH7sJxU34pT31PQDAkHDcxQSod0WCHgYQliqsNjcfjoD8mg+2NRr0l4UhYcnAAkA
	S7vjekukmJiJOLsMqf7DOoCSC0oD312KDiovmVl4MWfr2visSeg5SriALyoaVG1ESs83vuT49yFb7
	T3RMCwbAUcaqvk+NQofKY24Aziu98Kjb13LczhODjSaNPN7X7uFTiay1ClhWx88Gar0pD5Zm9sDuq
	+/t29ZB16j/h/5HaZ/qLAtSgcnO9Ym/GMJBXQiib16MNRo1TCdFRg0qdjhPh8Isee1gutMy2whA7y
	fkQMbSCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEk-0003mm-UW; Thu, 28 May 2020 06:41:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCEZ-0003bK-Ps
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id d10so12956275pgn.4
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=f85Vn4OuGxjQe/WprhGo5P1pwBgJ5q0VeEPd5gC4HYw=;
 b=DYoeHxtCDLNaK4vTg4LXeFpK3991FjhrOeogIln0htFW3mpJQaBBYg/q+xdoOYA/mP
 VyhoHpQFurqflmvyQCW3h4gityj/4jHYiazZ2HRNAVwdv/UMMi8CbX6Bx9g8Mbkb+GQY
 sWPsc1+c3tKrZg9ECu/AJUrtKqLC+XUxViXjJYAc9cLIAcW2JbsrHyCEhy9DqxVrShAx
 Xbmqb1YnOBK3BB5czzY+vFNIGoKtL4kXeTlKXLu0S3DNMHDtO7frMkzVsKL+Fw05219h
 6T0On7F7k3exzrn3IebkZSn07IaMRkB9nm3V0m8CAjYal9SZ80azSuOl+mphtfhFHWmd
 tmgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f85Vn4OuGxjQe/WprhGo5P1pwBgJ5q0VeEPd5gC4HYw=;
 b=JxGP9zoofqIWv4DFZ2kX4qqCkzTNi1Ckl8Ik+DnNR57Owfw6BNf7XtkL+6oeb7E/qa
 8YihVXH5AfK5uBh2JrDyx4dpdZgICNh1luydpCGVm4CJx9LlBOcYmCJeNx7eLriemyJW
 aRM0KV2NFDEqnUuGV/zpQXRVH5U0GhH2xkysnHNthALvjIOdcveiYqKr/s7qctTsyx3c
 xHved7LcU0Eqa5n6Xhg8SihNJ+6hRZxw8DciwFyG/OrxprWU4aJ4oXespoJbDZoNQ3IJ
 5Mp34FInFEM00284J5lnuDH4p63oKhQexlbk/lhLhiRmU17WvYy1ZiprRyI+7rI/oXNc
 +2KA==
X-Gm-Message-State: AOAM530uxHcHODFSJwPvwbyuDXt1FmdLv7kLKDcVdMdmPZnkh258mEeI
 jZiFawq4TqGVEOZweS8gBKZ36w==
X-Google-Smtp-Source: ABdhPJxQPZx777oP2rBNBMAJiyFESrXot58Un4tHH9HRlIJWfi3ybVpNmtNib+GCxA4CLbv8nsa/mQ==
X-Received: by 2002:a63:4906:: with SMTP id w6mr1507671pga.79.1590648096154;
 Wed, 27 May 2020 23:41:36 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:35 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 12/13] riscv: Add sigcontext save/restore for vector
Date: Thu, 28 May 2020 14:41:00 +0800
Message-Id: <8b544fbcee934ad31235049f49a14c8e7601692b.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234144_091709_C09CF4E0 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

This patch adds sigcontext save/restore for vector. The vector registers
will be saved in datap pointer. The datap pointer will be allocaed
dynamically when the task needs in kernel space. The datap pointer will
be set right after the __riscv_v_state data structure to save all the
vector registers in the signal handler stack.

[greentime.hu@sifive.com: add support for dynamic vlen]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/uapi/asm/sigcontext.h |  2 +
 arch/riscv/kernel/signal.c               | 92 +++++++++++++++++++++++-
 2 files changed, 91 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/uapi/asm/sigcontext.h b/arch/riscv/include/uapi/asm/sigcontext.h
index 84f2dfcfdbce..4217f3f1c8ba 100644
--- a/arch/riscv/include/uapi/asm/sigcontext.h
+++ b/arch/riscv/include/uapi/asm/sigcontext.h
@@ -8,6 +8,7 @@
 
 #include <asm/ptrace.h>
 
+#define RVV_MAGIC	0x53465457
 /*
  * Signal context structure
  *
@@ -17,6 +18,7 @@
 struct sigcontext {
 	struct user_regs_struct sc_regs;
 	union __riscv_fp_state sc_fpregs;
+	struct __riscv_v_state sc_vregs;
 };
 
 #endif /* _UAPI_ASM_RISCV_SIGCONTEXT_H */
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index 17ba190e84a5..9ada6f74bb95 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -83,6 +83,80 @@ static long save_fp_state(struct pt_regs *regs,
 #define restore_fp_state(task, regs) (0)
 #endif
 
+#ifdef CONFIG_VECTOR
+static long restore_v_state(struct pt_regs *regs, struct sigcontext *sc)
+{
+	long err;
+	struct __riscv_v_state __user *state = &sc->sc_vregs;
+	void *datap;
+	__u32 magic;
+
+	/* Get magic number and check it. */
+	err = __get_user(magic, &state->magic);
+	if (unlikely(err))
+		return err;
+
+	if (magic != RVV_MAGIC)
+		return -EINVAL;
+
+	/* Copy everything of __riscv_v_state except datap. */
+	err = __copy_from_user(&current->thread.vstate, state,
+			       RISCV_V_STATE_DATAP);
+	if (unlikely(err))
+		return err;
+
+	/* Copy the pointer datap itself. */
+	err = __get_user(datap, &state->datap);
+	if (unlikely(err))
+		return err;
+
+
+	/* Copy the whole vector content from user space datap. */
+	err = __copy_from_user(current->thread.vstate.datap, datap,
+			       current->thread.vstate.size);
+	if (unlikely(err))
+		return err;
+
+	vstate_restore(current, regs);
+
+	return err;
+}
+
+static long save_v_state(struct pt_regs *regs, struct sigcontext *sc)
+{
+	long err;
+	struct __riscv_v_state __user *state = &sc->sc_vregs;
+	/* Set the datap right after the sigcntext structure. */
+	void *datap = sc + 1;
+
+	vstate_save(current, regs);
+	/* Copy everything of vstate but datap. */
+	err = __copy_to_user(state, &current->thread.vstate,
+			     RISCV_V_STATE_DATAP);
+	if (unlikely(err))
+		return err;
+
+	/* Copy the magic number. */
+	err = __put_user(RVV_MAGIC, &state->magic);
+	if (unlikely(err))
+		return err;
+
+	/* Copy the pointer datap itself. */
+	err = __put_user(datap, &state->datap);
+	if (unlikely(err))
+		return err;
+
+	/* Copy the whole vector content to user space datap. */
+	err = __copy_to_user(datap, current->thread.vstate.datap,
+			     current->thread.vstate.size);
+
+	return err;
+}
+#else
+#define save_v_state(task, regs) (0)
+#define restore_v_state(task, regs) (0)
+#endif
+
 static long restore_sigcontext(struct pt_regs *regs,
 	struct sigcontext __user *sc)
 {
@@ -92,6 +166,9 @@ static long restore_sigcontext(struct pt_regs *regs,
 	/* Restore the floating-point state. */
 	if (has_fpu)
 		err |= restore_fp_state(regs, &sc->sc_fpregs);
+	/* Restore the vector state. */
+	if (has_vector)
+		err |= restore_v_state(regs, sc);
 	return err;
 }
 
@@ -101,13 +178,16 @@ SYSCALL_DEFINE0(rt_sigreturn)
 	struct rt_sigframe __user *frame;
 	struct task_struct *task;
 	sigset_t set;
+	size_t frame_size = sizeof(*frame);
 
 	/* Always make any pending restarted system calls return -EINTR */
 	current->restart_block.fn = do_no_restart_syscall;
 
 	frame = (struct rt_sigframe __user *)regs->sp;
 
-	if (!access_ok(frame, sizeof(*frame)))
+	if (has_vector)
+		frame_size += current->thread.vstate.size;
+	if (!access_ok(frame, frame_size))
 		goto badframe;
 
 	if (__copy_from_user(&set, &frame->uc.uc_sigmask, sizeof(set)))
@@ -145,6 +225,9 @@ static long setup_sigcontext(struct rt_sigframe __user *frame,
 	/* Save the floating-point state. */
 	if (has_fpu)
 		err |= save_fp_state(regs, &sc->sc_fpregs);
+	/* Save the vector state. */
+	if (has_vector)
+		err |= save_v_state(regs, sc);
 	return err;
 }
 
@@ -176,9 +259,12 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 {
 	struct rt_sigframe __user *frame;
 	long err = 0;
+	size_t frame_size = sizeof(*frame);
 
-	frame = get_sigframe(ksig, regs, sizeof(*frame));
-	if (!access_ok(frame, sizeof(*frame)))
+	if (has_vector)
+		frame_size += current->thread.vstate.size;
+	frame = get_sigframe(ksig, regs, frame_size);
+	if (!access_ok(frame, frame_size))
 		return -EFAULT;
 
 	err |= copy_siginfo_to_user(&frame->info, &ksig->info);
-- 
2.26.2


