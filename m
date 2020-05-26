Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED841E1BBE
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZ7IHiP/Z+5wqk/IVpAWK8RobZ149sWEYypNjSaWVHM=; b=pTu8H1u7BuriYMbge7YuLDg6mS
	Vs8xGcifyPn+lVbW0zyaZBWstqyLTP0U3lAaLEAQi4difk/S8uLarJcJZN7rmkWfb64DlegXsx8bk
	fgaex0oAG2bwFxg6D33RGQ4SqP3YGepw8SFoV0RbJhD7jcem4+tPJqtBNi92X3JNCfuVlQSLJ3pZJ
	SPRO2kjkIBHrq4gEl/z/rWrJbnYq2BM8Swja5bos9plV7EhfL63f5g+ENFS+S2a7+IxjuR3EyZstw
	qmvuHwUvtQwHKkQInVw4Y8CWnplMq/mdfixyTglpyGd7KO+AeaTh5AqtaEX4xnit9czKKFE3GZQPG
	jPury4BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTcW-0007uF-3w; Tue, 26 May 2020 07:03:28 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTcB-0007Xq-OJ
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:03:11 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ci21so807956pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fZ7IHiP/Z+5wqk/IVpAWK8RobZ149sWEYypNjSaWVHM=;
 b=nVQ1QJpS/aGTk0VchSb7wE/ai2hrbk48juRmxjQ984NV+mQnS3sJ6llsgYFEqa2Zad
 0RxjxfPXH9Oj4hW3khHPJYqo6utNQt8pj/DjTdFrezbdD5GR7S8ubJaCsGEr0AOa2TRH
 VGsNI1fFvfCnJMMpWTHIfKuGfl8NkV/FmjN8QZyEDCK6EUV3UwO13TAYTzKunoaNVsGh
 sHK3tnmrRHZytqL3oTtLK+cUCPEkEIfWZE+hDwZhZHCx0825xwNdGfm244W9vhoQG5Yt
 d9CNwEP8AmCnv93LtQUd6MmZU4PDvwcGlr+sYn9qmzCf5z6SEcnGT321cOB5OM4SfG1O
 4/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fZ7IHiP/Z+5wqk/IVpAWK8RobZ149sWEYypNjSaWVHM=;
 b=F6yE4S6lHazS5tE+XeHJXQwO+gQNhbQ2CzIbSxEO+LRt/gYtzEi6gu2fGab/oEO1fP
 kEf93uUt1VLWO3+/b03GM9XL0C1A8Mdsk7eMkK3umEyKrZp2ng40CbiOGI25NJlFEYDv
 40YITCcn1kTqcUEA0inQq1SkpAl5Ryiq/rBP/9bdcFZaIO1m3twD4a2vZbQ2cJrHEtH/
 OVR/7PWao4RTQ1zhFkbmoPBU8H7dklmFpA/sAZsUMKV6i4ZpSkplpu/E/CGQMX585Oqm
 /QN33njhyKoZvYiteUz5y0ZKcfrpSANGYOLn35jtwKP5XROn/cJPQcsNmQxkKvBvusr4
 EQ+g==
X-Gm-Message-State: AOAM533XHqi1WDeISzVAQr79xLProiO23HI1cc5fjSAuvi2kLLzflYV0
 HfSQZTdS9cMuLtyYvlxTn/cjbA==
X-Google-Smtp-Source: ABdhPJzMBT/HJSEdmH9HxTb2icg7SFzSF8ztRp2aI8PhCuNhNPDKgK1RJhnCJnQyUZXCBRvFyJOG8g==
X-Received: by 2002:a17:90b:4390:: with SMTP id
 in16mr25078324pjb.78.1590476586393; 
 Tue, 26 May 2020 00:03:06 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:03:05 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 08/13] riscv: Reset vector register
Date: Tue, 26 May 2020 15:02:37 +0800
Message-Id: <2424daf7c5b704b5c4ea2c317304d7fd0cf7ef2a.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000307_800613_DAA92653 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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


