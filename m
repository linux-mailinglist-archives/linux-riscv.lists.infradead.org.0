Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638571F7470
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hj2dPYxf9ChP39UbQUHFbp9CrwoiANKLX5kN73nw2wo=; b=jT4tT7DyrX/sdksCq5RgB8Efuc
	ER81+cTphj9RP27zM5gMg4+/+4PwXU87affDPg3BSbuEuq7NcDzsF6d6+RnMUTMmiycAj8ytNPrN0
	MyEWHfcvCKHTcqiRNLyGPce48IvopBgJzg32gzkghYTDsYPGdRuy4oWZ6sQy7hFSZIfiPLq4qFGr3
	zWbvIKmGMm/E87j2aRF8d7ZD4t/vL0PmWT//JCtXB7xFKTHgyuLDdpMZaQ+vfQKXjdwuFa3BAh6ic
	Ixmb7ukxbKuiQPskufxMfwrEjWj0MOWrfrRk8a7y0FYKxWChLgzdl1JE8ySl/N14Uqv7UNCEPJIx6
	ExKVoRaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpx-0005ez-RT; Fri, 12 Jun 2020 07:10:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpf-0005Jj-8f
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id h185so3885157pfg.2
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=hj2dPYxf9ChP39UbQUHFbp9CrwoiANKLX5kN73nw2wo=;
 b=j34D/ROQjnhONX4zQlk9GKNvkSsVJAjFQ5qEvF4lY3wxw8UUtWollpSadUBzL2YJhg
 R03cWdRvP2V8n2uD0EJgysBgnDW1YP4h4QuIy5QhUmezjvvVIE/9OBfz757j6vaf7WzZ
 5A2T5z0iTYn1t3Bdlb5aEQ3yIUf8S7jVMP2jOuyRC6HmbWJIGiItS98O1eqwUVX3KjfT
 4hbPlGd5HumJ+uYiiI6t1m1uvmlnYxtX7KEfyk840xrff2G0I73+qQTxJ0r1FAbLFISu
 Tz09DL1YGzTf14uBNYzY5760j/Xw5mwwO4y8o40BgXE9/zzKV/jKXrM3pSCmlBGnFi3J
 UTeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hj2dPYxf9ChP39UbQUHFbp9CrwoiANKLX5kN73nw2wo=;
 b=PpWkFePyMAx4Jv9j/Dq3mXUBpLvL98b3jdtHba1l6b0igcBvz3yuFZ4MK9NBWkFo/F
 jgw3QqJSEDpym0V6WODME1ROUA3OcZzNZ4FJiZexvIjP9PgcEgUP1Z13gZUpxdvsmX6Y
 1uf/vnVVJbvtOanKRSBbQ9oMZ3ectiJQhcwTlIoOObuuo2niv70Ik3874Bx2+7cFUg2Q
 131boum71WgtJxCeTJqmmdBrC9o8ROuGBSghqyQKZJQrbZvvrT5ln87+oqloQdUdfYSP
 3ATLahs4z4stxkJoCA+RSzAE+8umkBUhaU0OktYZcDV8nL0e/yGOhaPPU0WHKGnNKSpQ
 EL3A==
X-Gm-Message-State: AOAM5338fiY5YP81sLEm1czY29cfWeLzYdv39RWbaiJG6ArWnAD7bcXc
 nlpkjcK5E97W6MziA6zRNsPI7g==
X-Google-Smtp-Source: ABdhPJzSQsT2X/6m8pvPFSpq5aCtQwFbocucHDtZ7VPPrFY8MzbWGMx0sQXNb2xDQ+3qFy+gaPtJNw==
X-Received: by 2002:a63:7c51:: with SMTP id l17mr9664899pgn.303.1591945830320; 
 Fri, 12 Jun 2020 00:10:30 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:29 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 09/13] riscv: Add vector struct and assembler definitions
Date: Fri, 12 Jun 2020 15:09:58 +0800
Message-Id: <ccfa1f8a945100d93f88a0a8c369917931855d0f.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001031_356135_4822E4F5 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add vector state context struct in struct thread and asm-offsets.c
definitions.

The vector registers will be saved in datap pointer of __riscv_v_state. It
will be dynamically allocated in kernel space. It will be put right after
the __riscv_v_state data structure in user space.

[guoren@linux.alibaba.com: first version vector porting]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/asm/processor.h   |  1 +
 arch/riscv/include/uapi/asm/ptrace.h | 13 +++++++++++++
 arch/riscv/kernel/asm-offsets.c      |  8 ++++++++
 3 files changed, 22 insertions(+)

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
index 882547f6bd5c..661b0466b850 100644
--- a/arch/riscv/include/uapi/asm/ptrace.h
+++ b/arch/riscv/include/uapi/asm/ptrace.h
@@ -77,6 +77,19 @@ union __riscv_fp_state {
 	struct __riscv_q_ext_state q;
 };
 
+struct __riscv_v_state {
+	__u32 magic;
+	__u32 size;
+	unsigned long vstart;
+	unsigned long vl;
+	unsigned long vtype;
+	unsigned long vcsr;
+	void *datap;
+#if __riscv_xlen == 32
+	__u32 __padding;
+#endif
+} __attribute__((aligned(16)));
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* _UAPI_ASM_RISCV_PTRACE_H */
diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index 07cb9c10de4e..6627fde230b2 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -70,6 +70,14 @@ void asm_offsets(void)
 	OFFSET(TASK_THREAD_F31, task_struct, thread.fstate.f[31]);
 	OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
 
+	OFFSET(RISCV_V_STATE_MAGIC, __riscv_v_state, magic);
+	OFFSET(RISCV_V_STATE_SIZE, __riscv_v_state, size);
+	OFFSET(RISCV_V_STATE_VSTART, __riscv_v_state, vstart);
+	OFFSET(RISCV_V_STATE_VL, __riscv_v_state, vl);
+	OFFSET(RISCV_V_STATE_VTYPE, __riscv_v_state, vtype);
+	OFFSET(RISCV_V_STATE_VCSR, __riscv_v_state, vcsr);
+	OFFSET(RISCV_V_STATE_DATAP, __riscv_v_state, datap);
+
 	DEFINE(PT_SIZE, sizeof(struct pt_regs));
 	OFFSET(PT_EPC, pt_regs, epc);
 	OFFSET(PT_RA, pt_regs, ra);
-- 
2.27.0


