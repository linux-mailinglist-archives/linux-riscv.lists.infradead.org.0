Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE31D1E1BBF
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d8KymXTIzfL2DSySO92h+GogegkiWUPCyUDxjM568ZM=; b=SE+IvtsaUYp08Ewbvaa9Hk5qwB
	2NxtNx+93AytWfI2pNvA/1BqzALyTpGjdv9zzHHGo1goG1M5acuYPzytX9+mbZ3DSwego9Mp8XS40
	cBFCvpP9elX/m2mqoDPLoAiqNFtn464CXHmLR9MOG6jRdHxhf6qXbV/D/+vpJb/NR+NJwgYQVGQel
	cJ1PlzYG3BC3wGv32Pn6dA+xly27PtAoEINKzNuJ3zcRZ3zav0jmBz6Ih8Vct7URph3JtiRrqLD/R
	jya+uSyo8gShyYJ3URuRCkpO3MGeXBXIcQkcIthXGrVqxeAlWRTRtXFze7U7+N/2xGETIWUkdWC1D
	93+atVCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTcZ-0007yh-Jd; Tue, 26 May 2020 07:03:31 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTcD-0007a8-2a
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:03:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nu7so812730pjb.0
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=d8KymXTIzfL2DSySO92h+GogegkiWUPCyUDxjM568ZM=;
 b=cxFv3bw23gIV9vLNTY/nx1wiGqjTbYw5ZKltp1+uU4praWpkIJFiquaCjv7zUhITZH
 hLtzReZc5ey1Tu5w8Lg4xYJHQm8ekSZEigmTQV7t6mh9vp01QEFb8h1FfZB1nxpWdYYa
 +YCdq6HTr8Wo4ztifajntKUGTit1pHDa1Y3lh2c7B4Z89CBXehqxXUKtMs2qDDCMkQ0J
 +UJlf55Zn5cpB4mbtlFqt83D4kofK9VdXjmO/4HHABFE6wst6yb/gFXg4sz2Ur19QCOG
 /TVJonzBguoGdK3XGWA3TVqRkXbk+3GuNHu6hkW55blmoyuunVXUB3AsDc4dv5EYhC0P
 7u5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d8KymXTIzfL2DSySO92h+GogegkiWUPCyUDxjM568ZM=;
 b=qUExnn5JOFxkGT9h2dyhahAdsjQ9sn/5K85Hl5hTCE1L53CTrzrTZDCzM5tw44vAxr
 tEANl9zwVa92qtFcXgnpFgf9+3AY6aTTBwa/WK8G7uswig3gczaKNsR9Yl9VeDu+GAkg
 hgP6ZffIVyv7CogyP9vSHOyJ6hfATlcz8+FfOt/lMV1BM3XiiRDO9ZavJAxeRPQdRxuV
 MxmCl17sILMwBrjcKyviLD82uhmZ9daf+LFjFdmuUqNYMVtOtH11JojSFQmHL20XoRxf
 2VWgTTMdrskF/z9UIZRwQLo1KsBCe4rNsRCToFh4yBzsiIQqXXB61n/6T7rktctiJVN5
 e+uQ==
X-Gm-Message-State: AOAM532N5UVeSuJ8x1/9cmFeIn/zaF2tliOO5doGaN3isDwCtOSYZZ2P
 RZtSpEwfTtfB3chYFRyPIzqOVA==
X-Google-Smtp-Source: ABdhPJxpSvle0lTpxOGzUm0bS79NHDX1pYJ3AliqMsFV9gAzrL0dNzHrIyynOanHjduYV7E5n6rQUA==
X-Received: by 2002:a17:90b:3010:: with SMTP id
 hg16mr24750860pjb.157.1590476588424; 
 Tue, 26 May 2020 00:03:08 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.03.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:03:08 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 09/13] riscv: Add vector struct and assembler
 definitions
Date: Tue, 26 May 2020 15:02:38 +0800
Message-Id: <1f20f778318bf18e47eace08e54983fed23ba019.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000309_153473_DA885318 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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


