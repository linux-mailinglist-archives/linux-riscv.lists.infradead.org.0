Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4E91A1CE5
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOQsL1UwAyeSD7aVc86VJnzoqXGbBrzuC9r/s6opFAQ=; b=hguDn0jTLi72lT
	Ss52iNDE4aQkhhRBJSjyJm4VcKiKsVfWuEdrFAjokSBYbPZwuywUN8ie5WPwL5NUMSayZXYXKd0bq
	wduvya4k9jGQ6XqeQyvLk4G8lRWaEWf8bsJ1wvwLjejKb31geIGBy3RUBp6Rg8yNs4Yith0elhudC
	s3eV1pwsG+Hq1c3YfOog2ZtLW16a2KD74HhZJkuqMsS/NHz601YnzSHZi1IrLhiW7rmGr4Kr8dlg9
	5+eH98h69gKerREnVlMKSVLBRoGfcepH2YAdH3qB6MwST5OY5IaTaWv7uN85lK66BeQfiVIxtXA++
	/E3Tf4KS0VP1Ejj+NxfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aF-0007P5-HZ; Wed, 08 Apr 2020 07:57:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aB-0007Nj-U5
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id s4so2961502pgk.10
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tOQsL1UwAyeSD7aVc86VJnzoqXGbBrzuC9r/s6opFAQ=;
 b=Kn66xOjs81SGng0oCT/+Z7hx0FVYo/eEbSiAPSkG9YVazysZSGW4dQ90RJVw3fhxTU
 LjJTuf3qNq70mPiPOSxgd3h57DEvXCZ4aaKn8N0CWCciCzKED0k7HF0Tu2fNtAMQ4T0k
 4c6XsSZEpyV80iSmIYTvIqO9MXT32jyPMkSRuqmIC1LEYBF6OB3BZ+ajDJ4YboAcW1DI
 7NKm61fnwUrEFJkjyStI7+n8KexOl+3V3WwgZQYS/GQpoeqSunEHf249g+eF8J4tP0PX
 cJCST86Qnj/SwsTN+DWIWo6oRiD/mhGFKz4rr2flD9ipTpcUO41ef2MS2ymx9Vevq3uT
 D9Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tOQsL1UwAyeSD7aVc86VJnzoqXGbBrzuC9r/s6opFAQ=;
 b=i6QKaKRFJjfEGR+hmEOjrpJ1cmbATZviin2c8ClbZF3kZFNqGyDxprGxaJV0/0MuNk
 wviR1Xn4MtGJca+4BwGdWN5nocDLbFYuRV7yvHhuSrw8MbkBTrTu0QNvUUO/WUj+HQF6
 5BjOtZ1mZFaxxo4wua5dD9yKtId2wZDmS1doOet+xvDEv0dW3qNFxlGmiwK6gA862Y/i
 z1QQE+yOzk3Ush4vEcc1yYOXxsB/JjEL0hnqYK7HC/yno7k7aGyE+sUjWwrTpZ+21pBm
 dPV4m4yFh841LNMtPdFx0O/mZtCQkOH8wzkZmegs8dhKifiRY4TatIVVeLbyC8Zd3ekZ
 IQeg==
X-Gm-Message-State: AGi0PuYH1DESi1VK64ha9y8dkltaUF/QcMJoprq/FbBS3Sx+djuq/IHm
 Hrs+YEWYXhcBGDZrnM6u9z1/Uw==
X-Google-Smtp-Source: APiQypKDfW2TB8LOB4CYBluerKzQ+zb+Jp1k53ujx1q7dkVM3x7cUFvX9tSZRYulxwzoPAbZJn1KxQ==
X-Received: by 2002:a05:6a00:2cf:: with SMTP id
 b15mr6388378pft.174.1586332631240; 
 Wed, 08 Apr 2020 00:57:11 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:10 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/9] riscv: add macro to get instruction length
Date: Wed,  8 Apr 2020 15:56:56 +0800
Message-Id: <621303b9cdea215af57329b401b15750c1f683ab.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005711_963358_ACA5F44E 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


