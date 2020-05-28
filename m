Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6A81E57B9
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZ7IHiP/Z+5wqk/IVpAWK8RobZ149sWEYypNjSaWVHM=; b=GJd/ob+bkumYBhPg2YpFdou+RO
	jeoC700q6IBcosWakRmh6B6FbKdW/busiQGoZ0a452+jlaeVeQTTg6AX4OoPT2nFO9ujslkeTmtKp
	CTUKd9p3p8odq8VONyVjXnVAOoSv44k2xVn9Z5avA81z8506SY9cz09MtloJj0bKpRfdLD34vVW15
	tJ81A1fGo2+dljYJSYSLmblY5e8ILg/ZZOVsaT1D8FVHRth+IQXXPNdqxmwAICsVminW5pAB7v+6j
	K45JNbxM61dZwcK9IyEnFMTwcf76lDsw3l+n9kNyiQXPubTnWy0BN5IyJMIRfK3sikwL9vdKpTKKq
	PnlcJPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEQ-0003Mr-MC; Thu, 28 May 2020 06:41:34 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCEH-0003Cx-Q1
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so11115913plr.0
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fZ7IHiP/Z+5wqk/IVpAWK8RobZ149sWEYypNjSaWVHM=;
 b=ecQPNOMWFN6b2YfFKWU4oMbBXZ+R0nS95qowGUZRFJ8FR+jJ7V6ZZMjcGMycCdSp6K
 RZzhokLmqgenfcN/CVF3q4sB0jkEMC2u8zlKZ9CimbxwZEcxhq2ScZyZUDp8IN1KE9W3
 RutucfxXJfkOdN5AbC3JH+bnjMv3hUaS3FRg3Q9a8/a+lL/WarkjHby75BKsKFBZwpeC
 HNjN4MSf72hxEDQTVjgmYeq1JnuBB/yGKzyX8p1J8F96SfOD4IFAErwFD67szd5Ezhmc
 bczR/BFO+Do8oY9P5CP5m0q6mcVasEj+enLPT9jCgihkchgNIWvRNZB00MnXXdKbxI5f
 tQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fZ7IHiP/Z+5wqk/IVpAWK8RobZ149sWEYypNjSaWVHM=;
 b=dhl2MMkO84Ln8ZySk2fq7pVRt+MPHHAWIzc/h4/b4DCrNdQCXB5cB4bIEeh3wp/tlK
 n9WVwTv3uIgn0Xwqp3O3g3Q2T01ROpIqHeeWGtYFLTDhyRAbTiLhIQ0y5z1LEepecLFS
 iFUPU9SxCEyKKteC0ubafD1TxsmxeU96WFNZYiXar/XN900U/ATZnRGKjcnRFr/9px8B
 B50L7fuv32BWyFtRQrfFvS+b623S3tnmMJ+qoEs46MICGLR7d8Sx7vv8s1mcg7zW7QqC
 C0UvnKjTjctBXM07aC+HQAa40JRmup+X2YB3jfWMg1TubG0rJktIMBCB9b3d6DcUlM3X
 5suQ==
X-Gm-Message-State: AOAM533R7aQL5kXqd1HV/+64X7htuwVWe9ZvrUnVEmlfPXKRxUs5sRxm
 9y3TkbW6yhKXkydRBLWjd8ICYA==
X-Google-Smtp-Source: ABdhPJwhfcmrOPMwrpz4PykSjHmxMC3nkDqYlb8LUtRLCgjH3EzBt8/MUUH6wHiw9NbacmbWQ9k2uQ==
X-Received: by 2002:a17:902:bd0a:: with SMTP id
 p10mr2089961pls.102.1590648084303; 
 Wed, 27 May 2020 23:41:24 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:23 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 08/13] riscv: Reset vector register
Date: Thu, 28 May 2020 14:40:56 +0800
Message-Id: <d7914022dc9d2d1827d67fb4415919398b339619.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234125_904908_A16B8892 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Reset vector registers at boot-time and disable vector instructions
execution for kernel mode.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/kernel/entry.S |  2 +-
 arch/riscv/kernel/head.S  | 49 +++++++++++++++++++++++++++++++++++++--
 2 files changed, 48 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 56d071b2c0a1..4e32770c19c8 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -70,7 +70,7 @@ _save_context:
 	 * Disable the FPU to detect illegal usage of floating point in kernel
 	 * space.
 	 */
-	li t0, SR_SUM | SR_FS
+	li t0, SR_SUM | SR_FS | SR_VS
 
 	REG_L s0, TASK_TI_USER_SP(tp)
 	csrrc s1, CSR_STATUS, t0
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 98a406474e7d..1290ef680125 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -181,10 +181,10 @@ ENTRY(_start_kernel)
 .option pop
 
 	/*
-	 * Disable FPU to detect illegal usage of
+	 * Disable FPU & VECTOR to detect illegal usage of
 	 * floating point in kernel space
 	 */
-	li t0, SR_FS
+	li t0, SR_FS | SR_VS
 	csrc CSR_STATUS, t0
 
 #ifdef CONFIG_SMP
@@ -341,6 +341,51 @@ ENTRY(reset_regs)
 	csrw	fcsr, 0
 	/* note that the caller must clear SR_FS */
 #endif /* CONFIG_FPU */
+
+#ifdef CONFIG_VECTOR
+	csrr	t0, CSR_MISA
+	li	t1, (COMPAT_HWCAP_ISA_V >> 16)
+	slli	t1, t1, 16
+	and	t0, t0, t1
+	beqz	t0, .Lreset_regs_done
+
+	li	t1, SR_VS
+	csrs	CSR_STATUS, t1
+	vmv.v.i v0, 0
+	vmv.v.i v1, 0
+	vmv.v.i v2, 0
+	vmv.v.i v3, 0
+	vmv.v.i v4, 0
+	vmv.v.i v5, 0
+	vmv.v.i v6, 0
+	vmv.v.i v7, 0
+	vmv.v.i v8, 0
+	vmv.v.i v9, 0
+	vmv.v.i v10, 0
+	vmv.v.i v11, 0
+	vmv.v.i v12, 0
+	vmv.v.i v13, 0
+	vmv.v.i v14, 0
+	vmv.v.i v15, 0
+	vmv.v.i v16, 0
+	vmv.v.i v17, 0
+	vmv.v.i v18, 0
+	vmv.v.i v19, 0
+	vmv.v.i v20, 0
+	vmv.v.i v21, 0
+	vmv.v.i v22, 0
+	vmv.v.i v23, 0
+	vmv.v.i v24, 0
+	vmv.v.i v25, 0
+	vmv.v.i v26, 0
+	vmv.v.i v27, 0
+	vmv.v.i v28, 0
+	vmv.v.i v29, 0
+	vmv.v.i v30, 0
+	vmv.v.i v31, 0
+	/* note that the caller must clear SR_VS */
+#endif /* CONFIG_VECTOR */
+
 .Lreset_regs_done:
 	ret
 END(reset_regs)
-- 
2.26.2


