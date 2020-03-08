Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9422217D314
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 10:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMKxALUwyOMVndfQXG15RHAEjsV2Gcmbl8qMptjH1MI=; b=sDCPyskto4s4Pk
	j3r8UnWpZjANJZi3zTN4z2UpBkB26aCsUiViRfIH5iaiuHnxa4lKRnrLms94+EU9yuWXoZdh6KFZA
	FGC+0YHbjLMUY+NBSS+zCvPbG028orycyLTT7V+TFQ+T+I4dfUXbyvSEsuL/uWZlJGlQWLVPP21fx
	3gcT+vigfcjl0h6oQEnezCRBk9eo2Iuth1/jIo/VcRlW8m/Qe0mc8dBae3m9NsDM2/Nv8ib79yw6q
	DRFjSVpuAnIhkNtx4shDfYdk4VvMJYQnVQ1Bzcs5kpKzZsxYU4aSHrb6icGU32A+Bva6EFl3iBfPT
	9TZBU7a0I3QiYtFB4KCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAsd4-0002sT-17; Sun, 08 Mar 2020 09:53:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAscu-0002hT-GW
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 09:53:42 +0000
Received: from localhost.localdomain (unknown [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6A772084E;
 Sun,  8 Mar 2020 09:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583661220;
 bh=LB0h4IFc1qwE1iv1u6+ZDIwXQ329UaCIfCGOBL0zwiI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=x7Ujd3tlPo/9hRYlvGHCkKNKRv6tSptS0EMGGMEs1puPS1NP7TH4tB5RySBbTHQDs
 nSFpIx75cjhodH62cDfwD5YObQzBdoDqVLGM6KA8pwPLpZrpYxS4gExBMc+ov4IlXH
 I+OHAjMmdpcOKY/1fRnS07AEhp/o1tWI3fdLE/io=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, Anup.Patel@wdc.com,
 greentime.hu@sifive.com
Subject: [RFC PATCH V3 08/11] riscv: Add vector struct and assembler
 definitions
Date: Sun,  8 Mar 2020 17:49:51 +0800
Message-Id: <20200308094954.13258-9-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
References: <20200308094954.13258-1-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_015340_608624_7DA60B33 
X-CRM114-Status: UNSURE (   9.52  )
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

Add vector state context struct in struct thread and asm-offsets.c
definitions.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/asm/processor.h   |   1 +
 arch/riscv/include/uapi/asm/ptrace.h |   9 ++
 arch/riscv/kernel/asm-offsets.c      | 187 +++++++++++++++++++++++++++
 3 files changed, 197 insertions(+)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 3ddb798264f1..217273375cfb 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -32,6 +32,7 @@ struct thread_struct {
 	unsigned long sp;	/* Kernel mode stack */
 	unsigned long s[12];	/* s[0]: frame pointer */
 	struct __riscv_d_ext_state fstate;
+	struct __riscv_v_state vstate;
 };
 
 #define INIT_THREAD {					\
diff --git a/arch/riscv/include/uapi/asm/ptrace.h b/arch/riscv/include/uapi/asm/ptrace.h
index 882547f6bd5c..d913e8949b87 100644
--- a/arch/riscv/include/uapi/asm/ptrace.h
+++ b/arch/riscv/include/uapi/asm/ptrace.h
@@ -71,6 +71,15 @@ struct __riscv_q_ext_state {
 	__u32 reserved[3];
 };
 
+struct __riscv_v_state {
+	__uint128_t v[32];
+	unsigned long vstart;
+	unsigned long vxsat;
+	unsigned long vxrm;
+	unsigned long vl;
+	unsigned long vtype;
+};
+
 union __riscv_fp_state {
 	struct __riscv_f_ext_state f;
 	struct __riscv_d_ext_state d;
diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index 07cb9c10de4e..ab6eae41c2ad 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -70,6 +70,44 @@ void asm_offsets(void)
 	OFFSET(TASK_THREAD_F31, task_struct, thread.fstate.f[31]);
 	OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
 
+	OFFSET(TASK_THREAD_V0,  task_struct, thread.vstate.v[0]);
+	OFFSET(TASK_THREAD_V1,  task_struct, thread.vstate.v[1]);
+	OFFSET(TASK_THREAD_V2,  task_struct, thread.vstate.v[2]);
+	OFFSET(TASK_THREAD_V3,  task_struct, thread.vstate.v[3]);
+	OFFSET(TASK_THREAD_V4,  task_struct, thread.vstate.v[4]);
+	OFFSET(TASK_THREAD_V5,  task_struct, thread.vstate.v[5]);
+	OFFSET(TASK_THREAD_V6,  task_struct, thread.vstate.v[6]);
+	OFFSET(TASK_THREAD_V7,  task_struct, thread.vstate.v[7]);
+	OFFSET(TASK_THREAD_V8,  task_struct, thread.vstate.v[8]);
+	OFFSET(TASK_THREAD_V9,  task_struct, thread.vstate.v[9]);
+	OFFSET(TASK_THREAD_V10, task_struct, thread.vstate.v[10]);
+	OFFSET(TASK_THREAD_V11, task_struct, thread.vstate.v[11]);
+	OFFSET(TASK_THREAD_V12, task_struct, thread.vstate.v[12]);
+	OFFSET(TASK_THREAD_V13, task_struct, thread.vstate.v[13]);
+	OFFSET(TASK_THREAD_V14, task_struct, thread.vstate.v[14]);
+	OFFSET(TASK_THREAD_V15, task_struct, thread.vstate.v[15]);
+	OFFSET(TASK_THREAD_V16, task_struct, thread.vstate.v[16]);
+	OFFSET(TASK_THREAD_V17, task_struct, thread.vstate.v[17]);
+	OFFSET(TASK_THREAD_V18, task_struct, thread.vstate.v[18]);
+	OFFSET(TASK_THREAD_V19, task_struct, thread.vstate.v[19]);
+	OFFSET(TASK_THREAD_V20, task_struct, thread.vstate.v[20]);
+	OFFSET(TASK_THREAD_V21, task_struct, thread.vstate.v[21]);
+	OFFSET(TASK_THREAD_V22, task_struct, thread.vstate.v[22]);
+	OFFSET(TASK_THREAD_V23, task_struct, thread.vstate.v[23]);
+	OFFSET(TASK_THREAD_V24, task_struct, thread.vstate.v[24]);
+	OFFSET(TASK_THREAD_V25, task_struct, thread.vstate.v[25]);
+	OFFSET(TASK_THREAD_V26, task_struct, thread.vstate.v[26]);
+	OFFSET(TASK_THREAD_V27, task_struct, thread.vstate.v[27]);
+	OFFSET(TASK_THREAD_V28, task_struct, thread.vstate.v[28]);
+	OFFSET(TASK_THREAD_V29, task_struct, thread.vstate.v[29]);
+	OFFSET(TASK_THREAD_V30, task_struct, thread.vstate.v[30]);
+	OFFSET(TASK_THREAD_V31, task_struct, thread.vstate.v[31]);
+	OFFSET(TASK_THREAD_VSTART, task_struct, thread.vstate.vstart);
+	OFFSET(TASK_THREAD_VXSAT, task_struct, thread.vstate.vxsat);
+	OFFSET(TASK_THREAD_VXRM, task_struct, thread.vstate.vxrm);
+	OFFSET(TASK_THREAD_VL, task_struct, thread.vstate.vl);
+	OFFSET(TASK_THREAD_VTYPE, task_struct, thread.vstate.vtype);
+
 	DEFINE(PT_SIZE, sizeof(struct pt_regs));
 	OFFSET(PT_EPC, pt_regs, epc);
 	OFFSET(PT_RA, pt_regs, ra);
@@ -304,6 +342,155 @@ void asm_offsets(void)
 		- offsetof(struct task_struct, thread.fstate.f[0])
 	);
 
+	DEFINE(TASK_THREAD_V0_V0,
+		  offsetof(struct task_struct, thread.vstate.v[0])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V1_V0,
+		  offsetof(struct task_struct, thread.vstate.v[1])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V2_V0,
+		  offsetof(struct task_struct, thread.vstate.v[2])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V3_V0,
+		  offsetof(struct task_struct, thread.vstate.v[3])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V4_V0,
+		  offsetof(struct task_struct, thread.vstate.v[4])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V5_V0,
+		  offsetof(struct task_struct, thread.vstate.v[5])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V6_V0,
+		  offsetof(struct task_struct, thread.vstate.v[6])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V7_V0,
+		  offsetof(struct task_struct, thread.vstate.v[7])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V8_V0,
+		  offsetof(struct task_struct, thread.vstate.v[8])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V9_V0,
+		  offsetof(struct task_struct, thread.vstate.v[9])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V10_V0,
+		  offsetof(struct task_struct, thread.vstate.v[10])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V11_V0,
+		  offsetof(struct task_struct, thread.vstate.v[11])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V12_V0,
+		  offsetof(struct task_struct, thread.vstate.v[12])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V13_V0,
+		  offsetof(struct task_struct, thread.vstate.v[13])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V14_V0,
+		  offsetof(struct task_struct, thread.vstate.v[14])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V15_V0,
+		  offsetof(struct task_struct, thread.vstate.v[15])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V16_V0,
+		  offsetof(struct task_struct, thread.vstate.v[16])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V17_V0,
+		  offsetof(struct task_struct, thread.vstate.v[17])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V18_V0,
+		  offsetof(struct task_struct, thread.vstate.v[18])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V19_V0,
+		  offsetof(struct task_struct, thread.vstate.v[19])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V20_V0,
+		  offsetof(struct task_struct, thread.vstate.v[20])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V21_V0,
+		  offsetof(struct task_struct, thread.vstate.v[21])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V22_V0,
+		  offsetof(struct task_struct, thread.vstate.v[22])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V23_V0,
+		  offsetof(struct task_struct, thread.vstate.v[23])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V24_V0,
+		  offsetof(struct task_struct, thread.vstate.v[24])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V25_V0,
+		  offsetof(struct task_struct, thread.vstate.v[25])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V26_V0,
+		  offsetof(struct task_struct, thread.vstate.v[26])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V27_V0,
+		  offsetof(struct task_struct, thread.vstate.v[27])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V28_V0,
+		  offsetof(struct task_struct, thread.vstate.v[28])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V29_V0,
+		  offsetof(struct task_struct, thread.vstate.v[29])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V30_V0,
+		  offsetof(struct task_struct, thread.vstate.v[30])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_V31_V0,
+		  offsetof(struct task_struct, thread.vstate.v[31])
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_VSTART_V0,
+		  offsetof(struct task_struct, thread.vstate.vstart)
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_VXSAT_V0,
+		  offsetof(struct task_struct, thread.vstate.vxsat)
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_VXRM_V0,
+		  offsetof(struct task_struct, thread.vstate.vxrm)
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_VL_V0,
+		  offsetof(struct task_struct, thread.vstate.vl)
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+	DEFINE(TASK_THREAD_VTYPE_V0,
+		  offsetof(struct task_struct, thread.vstate.vtype)
+		- offsetof(struct task_struct, thread.vstate.v[0])
+	);
+
 	/*
 	 * We allocate a pt_regs on the stack when entering the kernel.  This
 	 * ensures the alignment is sane.
-- 
2.17.0


