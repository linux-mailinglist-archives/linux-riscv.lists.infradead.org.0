Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A0817DAA0
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKBW8Eyy8NVtYJgHutHlswaK8NeRD9IAyJm/+12aBBY=; b=qfmaP3LSWPIpkm
	N77tJuM2Y6NkvNweGheqCeBCk8PqKWPpIleUI7Ax7MiwgHGwZn3PrOf86z1TUjia+sbqw04WoEn5X
	uYJrj1zoDqpW7oyLFDMOhyXJMI2KO/YXJRX0QQlfwhsqBM1X0Qr0ZaL/11FYOUDNfR0Xk2g1K0qxm
	FBBIAYhmaZit0kvoIJRmyug5TakNDAB+zdonirF+RGfBNijqKixaoj3zlUfs09sVk8/NIJXWbq1mO
	4dqwJcanswr0KdP0Pn39snVuJt5NMOSJEmm7LS83TZ4Y4LpRbmKGYQ615AnBItf/LZyZgnnAEgObB
	VDR3jF+au45a+H491oag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDgk-0006Fw-H1; Mon, 09 Mar 2020 08:23:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDga-00063M-HV
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:22:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id g21so4491179pfb.5
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DKBW8Eyy8NVtYJgHutHlswaK8NeRD9IAyJm/+12aBBY=;
 b=PLP0zU9h4LODazLocgYTaUlefV0n5miYUkqXeQnR2x+qSMUaUylcFG1Z08ma8BbMpw
 YWNRqxfL2bdhm2EMPL4ti3jf5tyiN7zqHYcUro5PFxsmj+dB/779BE+Vj/tq7Vg1qZ9w
 ZyTk50s8LgxDr0SXz4Z+rUJswzfZMGLKf2oAn/fuRddJNqIU6YbM2KvTnrGsbz4HQ2Q/
 Tt/N35eOUez5OYJDHr1blVvIB1Qatw/SgsHStUqULYs1oyJtl+5YOnTrRMU2auogtEZS
 PZnFCwBnaGIlIbj6rswYaLXFRTp/aKCMeTw5MLJauUquwJ22T6n+F3q7GGaQVx01i/92
 zSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DKBW8Eyy8NVtYJgHutHlswaK8NeRD9IAyJm/+12aBBY=;
 b=bv2v3oq27ogzb5xUiM5Cz2KXeKG+kC/nKbzEQhf2t8vYIj7fUBqLHS87uaKZaudyy1
 6/h4W/ea3dZBYctv8yZMUWBVQXPykKB8J3gxGOUxPdHeTweiePpqRO1Ivayyt2YPWeKv
 BV32by+NGoNi/i4GG8MLKnp1r0cyEBSwbZc/Mvxka9IOBERjZNnFH5ehFu3Zd6VDOgym
 O9M6UHEfqSkv//7pzpjX1aU9A2Jw6CmBCH0drnSRhCs76rTmMIi0j291mfHcmTema0pG
 Bx/rxxeI9n3metXhurN/tyRfEy6Qmy6MNp2hwHyDvGmgW+9/q53LEMXZlXz8gTnSrcuZ
 0GAQ==
X-Gm-Message-State: ANhLgQ3NRonr2irtNhm5Fln4XoZmdrURQT0zUiWhUn3ksJHo3i0by/wC
 67i0A1o0s1UrGnLTYrbYko40vA==
X-Google-Smtp-Source: ADFU+vtA5aTtQ+0ugZHTUipprmgbLl0y+udRb/LyBPppXvEMK9X7hatVSm8bayWX4VgWOrvI1xzZog==
X-Received: by 2002:a63:e053:: with SMTP id n19mr15845329pgj.64.1583742171399; 
 Mon, 09 Mar 2020 01:22:51 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v5sm18364779pfn.64.2020.03.09.01.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 01:22:51 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/9] riscv: add macro to get instruction length
Date: Mon,  9 Mar 2020 16:22:27 +0800
Message-Id: <59d5cd2e5325893f3cff9420e7e94d5c0f503da1.1583741997.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583741997.git.zong.li@sifive.com>
References: <cover.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012252_615099_4BCE10E3 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Extract the calculation of instruction length for common use.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/bug.h | 8 ++++++++
 arch/riscv/kernel/traps.c    | 3 ++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/bug.h b/arch/riscv/include/asm/bug.h
index 75604fec1b1b..d6f1ec08d97b 100644
--- a/arch/riscv/include/asm/bug.h
+++ b/arch/riscv/include/asm/bug.h
@@ -19,6 +19,14 @@
 #define __BUG_INSN_32	_UL(0x00100073) /* ebreak */
 #define __BUG_INSN_16	_UL(0x9002) /* c.ebreak */
 
+#define GET_INSN_LENGTH(insn)						\
+({									\
+	unsigned long __len;						\
+	__len = ((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ?	\
+		4UL : 2UL;						\
+	__len;								\
+})
+
 typedef u32 bug_insn_t;
 
 #ifdef CONFIG_GENERIC_BUG_RELATIVE_POINTERS
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index ffb3d94bf0cc..a4d136355f78 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -118,7 +118,8 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 
 	if (probe_kernel_address((bug_insn_t *)pc, insn))
 		return 0;
-	return (((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ? 4UL : 2UL);
+
+	return GET_INSN_LENGTH(insn);
 }
 
 asmlinkage __visible void do_trap_break(struct pt_regs *regs)
-- 
2.25.1


