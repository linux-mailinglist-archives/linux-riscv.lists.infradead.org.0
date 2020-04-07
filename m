Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C271A0F85
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOQsL1UwAyeSD7aVc86VJnzoqXGbBrzuC9r/s6opFAQ=; b=jbcg3qDQZnNLoU
	mPiTc7evJ+w43wvBUJqAzHJ7qS3b9ES9eS+v6BWwaw3f6nTuy/Xuvjuypql+uzmB9v+KkuDiMrBGn
	cfjhlyq5zIi5HnjzGxSdMByr9WdgVcj0aCvFTmk14iZwvNgJPJJxFti2SWy7xzj6QEej/d1vczwsA
	k080Hcr7tQuJ1kojGxV5f6opiY6kbkR/i+5LSyXrT3GejKIW9SUi6XxpXDhXk1WM4Fca4wSXP6eJ4
	njKjO4Ih/pgBfN3t8xd7sGEdUJ/eoDl7HY06rgoK9a8jDUmzBrzfRtwazmMaUZSB24ice5U9hulQ9
	G2AvzFxakRR/jCy3rvrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVJ-00069y-BW; Tue, 07 Apr 2020 14:47:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVF-000683-Bg
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id u65so908058pfb.4
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tOQsL1UwAyeSD7aVc86VJnzoqXGbBrzuC9r/s6opFAQ=;
 b=jNjrdO2jGlUgSUD9yX89DPR2/2/A55WbbxmEk3D0BPwG9P1qqJkWGiOZ6K9PUE6NI4
 ggW+RiFHKkMdsNH4G7JFuLFLB5oFS2LD3ruTt4WslQzsgp4tDE7Cfb8tUftvsBRs3alZ
 cRRTKvMno8t3cQ4xm6nyN5D0ZzW605zJkEX/DPb47MrtJhxxIEYXO48Fi6A2BOsIJkuu
 W4CCEZS9aswddXKsB5i3wPQ+2evp1ZGk6FxrS1iQhRL//uz2e11ktzh4CsfIymvLlXCB
 2IISADHqCpS4TEXjaRGAoEN64Ct+cjeGOUPvrfx5zDlrSRDrt7GYwCwHG4f3SsBRy6sD
 gefw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tOQsL1UwAyeSD7aVc86VJnzoqXGbBrzuC9r/s6opFAQ=;
 b=hMj59sDtqR5T+9dHA+ka1re2zLul8jRN7UNVFmL+hfvA31O5RzqqVb2LHUXWb6+MCO
 XteEdV3JXqD9e8wcbKpveIjlubvBH2o1bCcvKRM9UoCG7NUc+6vHPtPv8eEiVtXNQYAE
 TMqabDHEExBehJ/eyLpn6BSItMG4pObduo2JhrHDLyhGj2MRlDATytYd6Pe3kNUeaqlK
 xYAVXw3gns3AcqL+gCLELQouyNOFyqQ/SkJRbvy5SpAgHKPFO4FHnAa3ufzsDDogzr9X
 5CI0Q25+EhelFg5mRX4RGHkwbEQP32lt9uanVpyyLAj/Y4SO6kD/FjAfEMdvCozHemzt
 6MDA==
X-Gm-Message-State: AGi0PuaUHZy6dMQNN/qKTF1W/oP4wX4h3Aa1oCGTyOKoLXTOQZHohxPf
 Ve832fxs23epIv021lrpOinme+S00Vk=
X-Google-Smtp-Source: APiQypJSbH9Ho0ehuvytIuygjbLMQeR8OPPI6bu3qmrH4iy9fTjQrkoOscBf4NTGkjiU3CFXYbADLA==
X-Received: by 2002:a63:a052:: with SMTP id u18mr2473808pgn.210.1586270820635; 
 Tue, 07 Apr 2020 07:47:00 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.46.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:00 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/9] riscv: add macro to get instruction length
Date: Tue,  7 Apr 2020 22:46:46 +0800
Message-Id: <621303b9cdea215af57329b401b15750c1f683ab.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074701_394927_961B8E5E 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
2.26.0


