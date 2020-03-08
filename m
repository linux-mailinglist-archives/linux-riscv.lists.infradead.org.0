Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887DD17D31E
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 10:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28Q2EwggePJKeUzxJXf5yW5CGr19hSOhg0zGEI8zzoY=; b=sXf3Thqb4Vbqg0
	F9ZR+dBBpkenUYfG5ferIG8+Qk6kLn3+OcIpOa4PqV32KKVQLsyWsBU3ZWIfrGEs/Qs5KDIVWot6a
	EH1Qm0w9NbN05TWtBIWZGiiSfkzaCpLdlYfhva37ffqmLTJ/68aeU0aHQbiXBDQFV0evV3VCNcRp8
	CYpjnPAmLXnW70M8I5FVVO1IyFE1r5TE2Dthkm9T+zZAJcO6QFkVnDjym22JjtHWCmjbIAi7T+Plp
	Wrj4WvBrmROybrNrAz66TGt61DNyEoXCL+k5bkEO6Ne5pev5DY09Xk17tqpYtRF/0iWVjSwuF0w0b
	Mx8rSS6ghghjzGah7gBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAsdB-00033l-Lt; Sun, 08 Mar 2020 09:53:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAsd3-0002ts-1g
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 09:53:50 +0000
Received: from localhost.localdomain (unknown [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98AFD2084E;
 Sun,  8 Mar 2020 09:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583661228;
 bh=vOPL8owgSgHX9PhVmLyiyNWhrKKGWBWr9Xmd6jc428Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ILwKeyhsd6982qjaUQJRvl39FmYnrOLOuWH1SlhJ59HzVUtZHnuy6I0NtkIEOY4lf
 iVTai79VidqtS7UMB2Zyi7M4n9NYwRYygwzj+eQOFfqCdD4I+himIPosKG8D2XwBiz
 hd8KYJJxgSShjgWRn+8BwX2MjB3PNCgz0xugvjfY=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, Anup.Patel@wdc.com,
 greentime.hu@sifive.com
Subject: [RFC PATCH V3 11/11] riscv: Add sigcontext save/restore
Date: Sun,  8 Mar 2020 17:49:54 +0800
Message-Id: <20200308094954.13258-12-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
References: <20200308094954.13258-1-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_015349_116175_A65B253F 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 linux-riscv@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

This patch add sigcontext save/restore and it's very similar to
fpu.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/uapi/asm/sigcontext.h |  1 +
 arch/riscv/kernel/signal.c               | 40 ++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/sigcontext.h b/arch/riscv/include/uapi/asm/sigcontext.h
index 84f2dfcfdbce..f74b3c814423 100644
--- a/arch/riscv/include/uapi/asm/sigcontext.h
+++ b/arch/riscv/include/uapi/asm/sigcontext.h
@@ -17,6 +17,7 @@
 struct sigcontext {
 	struct user_regs_struct sc_regs;
 	union __riscv_fp_state sc_fpregs;
+	struct __riscv_v_state sc_vregs;
 };
 
 #endif /* _UAPI_ASM_RISCV_SIGCONTEXT_H */
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index 17ba190e84a5..4295c00e8934 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -83,6 +83,40 @@ static long save_fp_state(struct pt_regs *regs,
 #define restore_fp_state(task, regs) (0)
 #endif
 
+#ifdef CONFIG_VECTOR
+static long restore_v_state(struct pt_regs *regs,
+			    struct __riscv_v_state *sc_vregs)
+{
+	long err;
+	struct __riscv_v_state __user *state = sc_vregs;
+
+	err = __copy_from_user(&current->thread.vstate, state, sizeof(*state));
+	if (unlikely(err))
+		return err;
+
+	vstate_restore(current, regs);
+
+	return err;
+}
+
+static long save_v_state(struct pt_regs *regs,
+			 struct __riscv_v_state *sc_vregs)
+{
+	long err;
+	struct __riscv_v_state __user *state = sc_vregs;
+
+	vstate_save(current, regs);
+	err = __copy_to_user(state, &current->thread.vstate, sizeof(*state));
+	if (unlikely(err))
+		return err;
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
@@ -92,6 +126,9 @@ static long restore_sigcontext(struct pt_regs *regs,
 	/* Restore the floating-point state. */
 	if (has_fpu)
 		err |= restore_fp_state(regs, &sc->sc_fpregs);
+	/* Restore the vector state. */
+	if (has_vector)
+		err |= restore_v_state(regs, &sc->sc_vregs);
 	return err;
 }
 
@@ -145,6 +182,9 @@ static long setup_sigcontext(struct rt_sigframe __user *frame,
 	/* Save the floating-point state. */
 	if (has_fpu)
 		err |= save_fp_state(regs, &sc->sc_fpregs);
+	/* Save the vector state. */
+	if (has_vector)
+		err |= save_v_state(regs, &sc->sc_vregs);
 	return err;
 }
 
-- 
2.17.0


