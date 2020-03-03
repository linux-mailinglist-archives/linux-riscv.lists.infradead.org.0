Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083CC17717F
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8dGI+yQaABcAe7jQ079Fj2BiuvdqP5YNeqrUXQauCKY=; b=a99EsCNBacXikN4PpzEsF7SSD+
	ZIe64v2mC4yifr/3FElu8v2j3EdLZEzCm1pFsZlYBYRVVXetJiEGAbpQP0xSciV2utvnDa8jgcpj8
	bSTNIFgsqyr560Gv05/I7dXD8TkIjDuXR5re7JM57k0Qb+7ZbYroBBWbSpDPDgA97VW7v175ezKXp
	tHyMndldxiFHlKL4jcKrEolem0ur+MfjD6ukN+uWSgzaDFs1gqWGS/WOSrfr5rvviUsioazGfUdye
	jCF3CfLqVlGWNQGYS64W4V6vggNBbyhe6guD8HGZA26+nh+s20K/NJoJypATV+rnbpr0EHLXL2UaF
	qF10BmOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Cz-0000Ke-NC; Tue, 03 Mar 2020 08:47:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Cv-0000K4-If
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:47:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id s1so1107691pfh.10
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8dGI+yQaABcAe7jQ079Fj2BiuvdqP5YNeqrUXQauCKY=;
 b=CjY/rmTT6vtITP7ljO8ZE06FmB+OEPbJZk1r4t4XuUba+UhE573lDxcMJcNcwnicG9
 LC6MWaNpMsB38rq5cTDRzWfuC1I2S34DYcGZkmSgrsGqGWpz+B8aG9iwWPwJ0LGVvZQV
 V4HLfzAM2FcnQbmo5hsHfjbOI3GnPKgbPga1DAN6B8aX3Kdrweo7Z0kI54aWOfn+T6U/
 8TCxislE3jso9WY5guDdoxfxdDFuJ4JGed2y2M7AkOGUaTuvnsO2ZU19ZeR0c+AQ876A
 nntrj1fx1q+60LXU/xA0iZCDxS0yagSa4iSCBoYpIAqtuBYPQxrpRSbIClHtoYDhVwWm
 Elrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8dGI+yQaABcAe7jQ079Fj2BiuvdqP5YNeqrUXQauCKY=;
 b=rx4i2O6JcTttwTnsxRzZUu33dw/8oY+RhqYoVjJFYHU+VIP2owZ6JJMjgHQSmAUr8P
 zNRh5X5750HgpBL46aMIf4e00g7Fnp2CWhKFRKhyC4MJfQlud5JER3hYJz160ITB/HS9
 YH8pd7Igaz8Qet0Ks3y97ofL5/Hinolh2viIA06LyUs4Ys34ZRVfJnMqQX3Ouqm9bOg8
 xY2FimkHpSWhpXN9461LJPN5HZOxmHfPYpJlqo/5z0m+zTqx4S7euNZtyuzA0dLFeuDn
 ZRHmQHtqkff5HAhfmNBIUzrIgh1PmjcLTt014baLoy6ZEpAR8/zwPGOngRaFdgrsZnt2
 JtZg==
X-Gm-Message-State: ANhLgQ1E51JYWqAQui8eyHcGRhOTAZ5QX15pRDZhl9+S1F1UXx8LXYHe
 bncazSaN+2h3Mj0+swu0vK3lXg==
X-Google-Smtp-Source: ADFU+vvDnfWqfBLbvyUXx60sfBXGZQeHFUOY/AuoVmQ1cBu1n4KTkMWZ6fYj2ColqmwemY9LtJbR1Q==
X-Received: by 2002:a63:9d04:: with SMTP id i4mr3104154pgd.294.1583225236797; 
 Tue, 03 Mar 2020 00:47:16 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id t142sm15334637pgb.31.2020.03.03.00.47.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:47:16 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, jason.wessel@windriver.com,
 daniel.thompson@linaro.org, dianders@chromium.org
Subject: [PATCH 2/5] riscv: Add KGDB support
Date: Tue,  3 Mar 2020 16:47:11 +0800
Message-Id: <1583225231-26187-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004717_625493_FBA1CA48 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The skeleton of RISC-V KGDB port.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Kconfig              |   1 +
 arch/riscv/include/asm/Kbuild   |   1 -
 arch/riscv/include/asm/kdebug.h |  12 +++
 arch/riscv/include/asm/kgdb.h   |  71 ++++++++++++++
 arch/riscv/kernel/Makefile      |   1 +
 arch/riscv/kernel/kgdb.c        | 199 ++++++++++++++++++++++++++++++++++++++++
 arch/riscv/kernel/traps.c       |   5 +
 7 files changed, 289 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/kernel/kgdb.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 73f029eae0cc..108794f4aa45 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -66,6 +66,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select HAVE_ARCH_KGDB
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index ec0ca8c6ab64..625e46cbdec8 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -15,7 +15,6 @@ generic-y += hardirq.h
 generic-y += hw_irq.h
 generic-y += irq_regs.h
 generic-y += irq_work.h
-generic-y += kdebug.h
 generic-y += kmap_types.h
 generic-y += kvm_para.h
 generic-y += local.h
diff --git a/arch/riscv/include/asm/kdebug.h b/arch/riscv/include/asm/kdebug.h
new file mode 100644
index 000000000000..85ac00411f6e
--- /dev/null
+++ b/arch/riscv/include/asm/kdebug.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _ASM_ARC_KDEBUG_H
+#define _ASM_ARC_KDEBUG_H
+
+enum die_val {
+	DIE_UNUSED,
+	DIE_TRAP,
+	DIE_OOPS
+};
+
+#endif
diff --git a/arch/riscv/include/asm/kgdb.h b/arch/riscv/include/asm/kgdb.h
new file mode 100644
index 000000000000..e3b455932506
--- /dev/null
+++ b/arch/riscv/include/asm/kgdb.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_KGDB_H_
+#define __ASM_KGDB_H_
+
+#ifdef __KERNEL__
+
+#define GDB_SIZEOF_REG sizeof(unsigned long)
+
+#define DBG_MAX_REG_NUM (33)
+#define NUMREGBYTES ((DBG_MAX_REG_NUM) * GDB_SIZEOF_REG)
+#define CACHE_FLUSH_IS_SAFE     1
+#define BUFMAX                  2048
+#ifdef CONFIG_RISCV_ISA_C
+#define BREAK_INSTR_SIZE	2
+#else
+#define BREAK_INSTR_SIZE	4
+#endif
+#define CACHE_FLUSH_IS_SAFE 1
+
+#ifndef	__ASSEMBLY__
+
+extern int kgdb_has_hit_break(unsigned long addr);
+extern unsigned long kgdb_compiled_break;
+
+static inline void arch_kgdb_breakpoint(void)
+{
+	asm(".global kgdb_compiled_break\n"
+	    ".option norvc\n"
+	    "kgdb_compiled_break: ebreak\n"
+	    ".option rvc\n");
+}
+
+#endif /* !__ASSEMBLY__ */
+
+#define PT_REG_ZERO "zero"
+#define PT_REG_RA "ra"
+#define PT_REG_SP "sp"
+#define PT_REG_GP "gp"
+#define PT_REG_TP "tp"
+#define PT_REG_T0 "t0"
+#define PT_REG_T1 "t1"
+#define PT_REG_T2 "t2"
+#define PT_REG_FP "fp"
+#define PT_REG_S1 "s1"
+#define PT_REG_A0 "a0"
+#define PT_REG_A1 "a1"
+#define PT_REG_A2 "a2"
+#define PT_REG_A3 "a3"
+#define PT_REG_A4 "a4"
+#define PT_REG_A5 "a5"
+#define PT_REG_A6 "a6"
+#define PT_REG_A7 "a7"
+#define PT_REG_S2 "s2"
+#define PT_REG_S3 "s3"
+#define PT_REG_S4 "s4"
+#define PT_REG_S5 "s5"
+#define PT_REG_S6 "s6"
+#define PT_REG_S7 "s7"
+#define PT_REG_S8 "s8"
+#define PT_REG_S9 "s9"
+#define PT_REG_S10 "s10"
+#define PT_REG_S11 "s11"
+#define PT_REG_T3 "t3"
+#define PT_REG_T4 "t4"
+#define PT_REG_T5 "t5"
+#define PT_REG_T6 "t6"
+#define PT_REG_SEPC "pc"
+
+#endif
+#endif
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f40205cb9a22..8956543f7d6b 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -42,5 +42,6 @@ obj-$(CONFIG_PERF_EVENTS)	+= perf_event.o
 obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
 obj-$(CONFIG_RISCV_SBI)		+= sbi.o
+obj-$(CONFIG_KGDB)		+= kgdb.o
 
 clean:
diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
new file mode 100644
index 000000000000..0a3fe5d672f1
--- /dev/null
+++ b/arch/riscv/kernel/kgdb.c
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/ptrace.h>
+#include <linux/kdebug.h>
+#include <linux/bug.h>
+#include <linux/kgdb.h>
+#include <linux/irqflags.h>
+#include <linux/string.h>
+#include <asm/cacheflush.h>
+
+enum {
+	NOT_KGDB_BREAK = 0,
+	KGDB_SW_BREAK,
+	KGDB_COMPILED_BREAK,
+};
+
+struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
+	{PT_REG_ZERO, GDB_SIZEOF_REG, -1},
+	{PT_REG_RA, GDB_SIZEOF_REG, offsetof(struct pt_regs, ra)},
+	{PT_REG_SP, GDB_SIZEOF_REG, offsetof(struct pt_regs, sp)},
+	{PT_REG_GP, GDB_SIZEOF_REG, offsetof(struct pt_regs, gp)},
+	{PT_REG_TP, GDB_SIZEOF_REG, offsetof(struct pt_regs, tp)},
+	{PT_REG_T0, GDB_SIZEOF_REG, offsetof(struct pt_regs, t0)},
+	{PT_REG_T1, GDB_SIZEOF_REG, offsetof(struct pt_regs, t1)},
+	{PT_REG_T2, GDB_SIZEOF_REG, offsetof(struct pt_regs, t2)},
+	{PT_REG_FP, GDB_SIZEOF_REG, offsetof(struct pt_regs, s0)},
+	{PT_REG_S1, GDB_SIZEOF_REG, offsetof(struct pt_regs, a1)},
+	{PT_REG_A0, GDB_SIZEOF_REG, offsetof(struct pt_regs, a0)},
+	{PT_REG_A1, GDB_SIZEOF_REG, offsetof(struct pt_regs, a1)},
+	{PT_REG_A2, GDB_SIZEOF_REG, offsetof(struct pt_regs, a2)},
+	{PT_REG_A3, GDB_SIZEOF_REG, offsetof(struct pt_regs, a3)},
+	{PT_REG_A4, GDB_SIZEOF_REG, offsetof(struct pt_regs, a4)},
+	{PT_REG_A5, GDB_SIZEOF_REG, offsetof(struct pt_regs, a5)},
+	{PT_REG_A6, GDB_SIZEOF_REG, offsetof(struct pt_regs, a6)},
+	{PT_REG_A7, GDB_SIZEOF_REG, offsetof(struct pt_regs, a7)},
+	{PT_REG_S2, GDB_SIZEOF_REG, offsetof(struct pt_regs, s2)},
+	{PT_REG_S3, GDB_SIZEOF_REG, offsetof(struct pt_regs, s3)},
+	{PT_REG_S4, GDB_SIZEOF_REG, offsetof(struct pt_regs, s4)},
+	{PT_REG_S5, GDB_SIZEOF_REG, offsetof(struct pt_regs, s5)},
+	{PT_REG_S6, GDB_SIZEOF_REG, offsetof(struct pt_regs, s6)},
+	{PT_REG_S7, GDB_SIZEOF_REG, offsetof(struct pt_regs, s7)},
+	{PT_REG_S8, GDB_SIZEOF_REG, offsetof(struct pt_regs, s8)},
+	{PT_REG_S9, GDB_SIZEOF_REG, offsetof(struct pt_regs, s9)},
+	{PT_REG_S10, GDB_SIZEOF_REG, offsetof(struct pt_regs, s10)},
+	{PT_REG_S11, GDB_SIZEOF_REG, offsetof(struct pt_regs, s11)},
+	{PT_REG_T3, GDB_SIZEOF_REG, offsetof(struct pt_regs, t3)},
+	{PT_REG_T4, GDB_SIZEOF_REG, offsetof(struct pt_regs, t4)},
+	{PT_REG_T5, GDB_SIZEOF_REG, offsetof(struct pt_regs, t5)},
+	{PT_REG_T6, GDB_SIZEOF_REG, offsetof(struct pt_regs, t6)},
+	{PT_REG_SEPC, GDB_SIZEOF_REG, offsetof(struct pt_regs, epc)},
+};
+
+char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
+{
+	if (regno >= DBG_MAX_REG_NUM || regno < 0)
+		return NULL;
+
+	if (dbg_reg_def[regno].offset != -1)
+		memcpy(mem, (void *)regs + dbg_reg_def[regno].offset,
+		       dbg_reg_def[regno].size);
+	else
+		memset(mem, 0, dbg_reg_def[regno].size);
+	return dbg_reg_def[regno].name;
+}
+
+int dbg_set_reg(int regno, void *mem, struct pt_regs *regs)
+{
+	if (regno >= DBG_MAX_REG_NUM || regno < 0)
+		return -EINVAL;
+
+	if (dbg_reg_def[regno].offset != -1)
+		memcpy((void *)regs + dbg_reg_def[regno].offset, mem,
+		       dbg_reg_def[regno].size);
+	return 0;
+}
+
+void
+sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *task)
+{
+	/* Initialize to zero */
+	memset((char *)gdb_regs, 0, NUMREGBYTES);
+
+	gdb_regs[2] = task->thread.sp;
+	gdb_regs[8] = task->thread.s[0];
+	gdb_regs[9] = task->thread.s[1];
+	gdb_regs[18] = task->thread.s[2];
+	gdb_regs[19] = task->thread.s[3];
+	gdb_regs[20] = task->thread.s[4];
+	gdb_regs[21] = task->thread.s[5];
+	gdb_regs[22] = task->thread.s[6];
+	gdb_regs[23] = task->thread.s[7];
+	gdb_regs[24] = task->thread.s[8];
+	gdb_regs[25] = task->thread.s[10];
+	gdb_regs[26] = task->thread.s[11];
+	gdb_regs[32] = task->thread.ra;
+}
+
+void kgdb_arch_set_pc(struct pt_regs *regs, unsigned long pc)
+{
+	regs->epc = pc;
+}
+
+static inline void kgdb_arch_update_addr(struct pt_regs *regs,
+					 char *remcom_in_buffer)
+{
+	unsigned long addr;
+	char *ptr;
+
+	ptr = &remcom_in_buffer[1];
+	if (kgdb_hex2long(&ptr, &addr))
+		regs->epc = addr;
+}
+
+int kgdb_arch_handle_exception(int vector, int signo, int err_code,
+			       char *remcom_in_buffer, char *remcom_out_buffer,
+			       struct pt_regs *regs)
+{
+	int err = 0;
+
+	switch (remcom_in_buffer[0]) {
+	case 'c':
+	case 'D':
+	case 'k':
+		if (remcom_in_buffer[0] == 'c')
+			kgdb_arch_update_addr(regs, remcom_in_buffer);
+		atomic_set(&kgdb_cpu_doing_single_step, -1);
+		kgdb_single_step = 0;
+		break;
+	default:
+		err = -1;
+	}
+
+	return err;
+}
+
+int kgdb_riscv_kgdbbreak(unsigned long addr)
+{
+	if (atomic_read(&kgdb_setting_breakpoint))
+		if (addr == (unsigned long)&kgdb_compiled_break)
+			return KGDB_COMPILED_BREAK;
+
+	return kgdb_has_hit_break(addr);
+}
+
+static int kgdb_riscv_notify(struct notifier_block *self, unsigned long cmd,
+			     void *ptr)
+{
+	struct die_args *args = (struct die_args *)ptr;
+	struct pt_regs *regs = args->regs;
+	unsigned long flags;
+	int type;
+
+	if (user_mode(regs))
+		return NOTIFY_DONE;
+
+	type = kgdb_riscv_kgdbbreak(regs->epc);
+	if (type == NOT_KGDB_BREAK && cmd == DIE_TRAP)
+		return NOTIFY_DONE;
+
+	local_irq_save(flags);
+	if (kgdb_handle_exception(1, args->signr, cmd, regs))
+		return NOTIFY_DONE;
+
+	if (type == KGDB_COMPILED_BREAK)
+		regs->epc += 4;
+
+	local_irq_restore(flags);
+
+	return NOTIFY_STOP;
+}
+
+static struct notifier_block kgdb_notifier = {
+	.notifier_call = kgdb_riscv_notify,
+};
+
+int kgdb_arch_init(void)
+{
+	register_die_notifier(&kgdb_notifier);
+
+	return 0;
+}
+
+void kgdb_arch_exit(void)
+{
+	unregister_die_notifier(&kgdb_notifier);
+}
+
+/*
+ * Global data
+ */
+#ifdef CONFIG_RISCV_ISA_C
+const struct kgdb_arch arch_kgdb_ops = {
+	.gdb_bpt_instr = {0x02, 0x90},	/* c.ebreak */
+};
+#else
+const struct kgdb_arch arch_kgdb_ops = {
+	.gdb_bpt_instr = {0x73, 0x00, 0x10, 0x00},	/* ebreak */
+};
+#endif
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index f4cad5163bf2..7e017c2131cf 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -125,6 +125,11 @@ asmlinkage __visible void do_trap_break(struct pt_regs *regs)
 {
 	if (user_mode(regs))
 		force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->epc);
+#ifdef CONFIG_KGDB
+	else if (notify_die(DIE_TRAP, "EBREAK", regs, 0, regs->cause, SIGTRAP)
+								== NOTIFY_STOP)
+		return;
+#endif
 	else if (report_bug(regs->epc, regs) == BUG_TRAP_TYPE_WARN)
 		regs->epc += get_break_insn_length(regs->epc);
 	else
-- 
2.7.4


