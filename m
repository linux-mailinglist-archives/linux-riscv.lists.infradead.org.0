Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C721E57BC
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d8KymXTIzfL2DSySO92h+GogegkiWUPCyUDxjM568ZM=; b=lWzVG/0bs2S3GcqDGbIKnthphV
	Wnsm8FNjnygNFEzfId3Vrx2oFfWI9EUBANT8WfpL9uDP0mB/gK6I2qh/87zDr4ehSJ0ppnGC4Wdwz
	OFWNOlATUVjKEhbRn68WkmmHd9gF8IdQ/U+wBzhFs8CC56rLaOVcNSNm4jO86IfReXBATc5d2JRn3
	XEdvDED/5nbGVIYJzsIfJOFrOyLPq859dKgKohdBDXx3RPMwfJ0Nx6tmeuHTXx2KyISHy8Qqy4BjD
	mm7TyUJ5qDg8y/HCe9SIa9PB0SliDHOhzsl/GtiJP3BlOe2EuFY9Vmd9nXz4uuhkUHP+p05Mwm0YQ
	AcQ9dNqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEX-0003Tx-0j; Thu, 28 May 2020 06:41:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCEJ-0003FF-A6
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:28 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z15so1812905pjb.0
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=d8KymXTIzfL2DSySO92h+GogegkiWUPCyUDxjM568ZM=;
 b=l0IXQ9IT4LdA3rLadoIdH9UelbiHhQV84fFynRfNHzaMjFEcrpSF2VyoPXOhGh1XuL
 7Iqy5V7K9+IAZLgesWIE8fNfyZS1EAerGxaUpwZ2ulgYEk3IUt2DgcePMttQnojk0MRi
 HZs369OGr2etAt2cMVXDftcW7uEmtg9q8m+Alc7vMk+pZRsK++JuOrnU1oIOIbOKrZwU
 xShKBiXHDvQzaFEyH1lHIkDx8NffqWZxNbKyOUdX8zT8ug17t26YaKz1ry8gTN8FJu3O
 uc/LRB/9F/HbvAirL9qOajUhLP6KGl9HK6/jpQRDnq7GNh9P+38ai4G+edTRRzdel9Ew
 CVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d8KymXTIzfL2DSySO92h+GogegkiWUPCyUDxjM568ZM=;
 b=BCt0I+YdDeK+TcrF92vQaMI5JN7U591rNwwZfuYLXtGtJYeC1UsZt8WUbkzwDLdHKt
 X05e/I/pTzb3i+6TyqUj7YSX3l0GIChGG7ioDhZ3R4D7MGF8ZDLaBFvfPqmQ8GLdHIjO
 yu0BX/bg7cz4G1GY5IgrKIcaw5I09dLgCQALdBzWyQDZtsQtTmoXD0CW0WW+wr7gqskY
 OwnZ0IDhEF6pa4tGLMvwgGmDZdwhEV9ihzOYguN9OHETNfANiryI+KnrIaWmHat+EmH9
 1hXG99fcP/WVUhdU0hEYMwhaP3dJEiqKN0jviNQXhUJ9QG1I4HgQ0JLTWAOlmt6W7U2G
 LRvw==
X-Gm-Message-State: AOAM533dHRz+Dw9VRRFDP9vT9Oo8Sf3eyleHhsz1Vr3y0o9tDvaIBDEv
 R68mp6pQXu5ZAemMwDcsSVk7TouvVTx9Uw==
X-Google-Smtp-Source: ABdhPJwgtTfk52tXURdZI/TCSJ5EOlNZ9ysXJLsJmuH/davCMw5nigpJWr/X8sVEp0/IhknMp2jcbA==
X-Received: by 2002:a17:902:cb03:: with SMTP id
 c3mr2126242ply.307.1590648086332; 
 Wed, 27 May 2020 23:41:26 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:25 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 09/13] riscv: Add vector struct and assembler
 definitions
Date: Thu, 28 May 2020 14:40:57 +0800
Message-Id: <d6b4a7c8f8e6ae95994888c0aabdbfd46360ab63.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234127_361940_85441305 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

Add vector state context struct in struct thread and asm-offsets.c
definitions.

The vector registers will be saved in datap pointer of __riscv_v_state. It
will be dynamically allocated in kernel space. It will be put right after
the __riscv_v_state data structure in user space.

[greentime.hu@sifive.com: add support for dynamic vlen, add vcsr and remove
vxsat, vxrm because these data can be get in vcsr, add new macros for
_riscv_v_state elements offset and remove unused ones]
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
2.26.2


