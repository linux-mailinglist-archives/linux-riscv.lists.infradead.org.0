Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CAE1F746F
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bt52k9Bvf6mwoBH8BO99Cl1SZAUWj8JPjBOKu49Dflg=; b=MlQ2P0hEG1uEql2YWiVLw0ZhkO
	Et0Wogs3nXXhY2PsTmW4j5ie9Mqel1Y9msQV1RmCxwnO3r0LYuh0uaNAr6hi1JHi2AOC0CfxjqlSo
	/LJyIOh1XY8bMezagQTH164qI9cq9JTtQfw+cMB0MI4wMqZor97GahZqTwE4yOSUpoeoR+qbM3bQI
	WDtrdy2ZJ0rvdw4PNUg7sKJPiD/pKpndXFUUPTJjVCV3mfPVctg6t6VSx+n/niUR4Ro2FCqJs6YrX
	KKnDHmx4Vnuz0e6dbGWmdts9T1DsT0vAuGYadcJE/w5y3hrjpFSOQK0Wfz0ovUZOcTxT6v39UMkp4
	VPWdImtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdpu-0005aC-VB; Fri, 12 Jun 2020 07:10:47 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdpd-0005HS-9x
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:30 +0000
Received: by mail-pf1-x429.google.com with SMTP id h185so3885124pfg.2
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Bt52k9Bvf6mwoBH8BO99Cl1SZAUWj8JPjBOKu49Dflg=;
 b=Fc/RmOfgUenC1huViLl/zLKhIYopdecJLV5VD2dJhaN267VO6VkoMGplqRcZ7bos2+
 Wb+yl4Cd5cB8HwFCeCFWz42VYHvuzOcw8O3LW7JJ5vvZndUYNM/B8JOs2x9JBEheZQmR
 R94SW60bIr/7HaO6oNg1yMXH1Htlxkwt36l/C3KR+1kfnJhgMbydFY96Vp7NIHRXxxLm
 fzs/HMyxeNFHl1wdrdNPMaL06WQMM+GHIcSK/JL7Y+VYwaHPqiNQOxxcP5OGSEpa59rA
 uT3nUgYAtPpwmiipEPCZk0Aqjs6puRTNijHtj+C13r6ciR7iu4xkPSz4R1ta6nyv2RuS
 Fjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bt52k9Bvf6mwoBH8BO99Cl1SZAUWj8JPjBOKu49Dflg=;
 b=XO8dP8mRCl4iZbI6JCs82yC2vTulSmpjcQbYEBCAcB6GTxnuXG0iBt45sk9jjiXzTu
 duTD5uOq4D1ruxk/Rv13u6VEnNerwL9ZP6ITMh6raYpeG4bsE5402DHVyS25iHo/pV3C
 4L6Bj7bsM5OPDtWSVxlk6VjS1ovJE7NGya7pdFZ2CMzjEPzW+9MrmGVZsDwAGhsJg764
 UpNdtpI1/RVU/DThvq60Csx5LS9FskDIE9quEKyAv1kCOJzHCTkwKVBXzcrOiVPCyU3q
 0TmHj14hDgkMp8BC+7+bNtgJR0pFRAt/MPkRiCRd9ZWHN0IIQ+vvdz+8eQR5R+6Rjyvr
 bKRg==
X-Gm-Message-State: AOAM5307JMcxxsxNpoZwQhBIDDut04DOrrvsOYW2YfoZQQnygf/CM+ZP
 Ip30pbYUnWYzhAHVfmpx0Mla0Q==
X-Google-Smtp-Source: ABdhPJzcGkM7/3ILCBONGZKG4PpCtorJ3xtsrdL+K4vr+cBUu+pfS0s625IeEIqoX+ldCpeFmfNF/A==
X-Received: by 2002:a63:7f5d:: with SMTP id p29mr9628085pgn.337.1591945828140; 
 Fri, 12 Jun 2020 00:10:28 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:27 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] riscv: Reset vector register
Date: Fri, 12 Jun 2020 15:09:57 +0800
Message-Id: <63ca68cb344d18fdae0036e1b66770f1f9a90fbc.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001029_375687_170E2F74 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
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

From: Guo Ren <guoren@linux.alibaba.com>

Reset vector registers at boot-time and disable vector instructions
execution for kernel mode.

[greentime.hu@sifive.com: add comments]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/kernel/entry.S |  6 ++---
 arch/riscv/kernel/head.S  | 49 +++++++++++++++++++++++++++++++++++++--
 2 files changed, 50 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 56d071b2c0a1..2184153836ca 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -67,10 +67,10 @@ _save_context:
 	 * Disable user-mode memory access as it should only be set in the
 	 * actual user copy routines.
 	 *
-	 * Disable the FPU to detect illegal usage of floating point in kernel
-	 * space.
+	 * Disable the FPU/Vector to detect illegal usage of floating point
+	 * or vector in kernel space.
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
2.27.0


