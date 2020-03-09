Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED8E17DAA2
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 09:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seWJfto8ScXH/WTie1kGmp0AZpPcjTPuoxrfVsKEou8=; b=CM11UNB60tSM7Z
	8RT+K8fYaN/fkt3payyNR96vo1grWjNE9ifoGIcyAZVY9nd+2JuNrz9OecMhYA3ILaJIqs1pbRxel
	NDOBfPNrQNRVPdqnbXTpTRVxOWblfEld+n0H7Tpdgyil/mcVkUuFgym4EdIxu8FFCNlhuL9MDnR1w
	M2Op30Wjttp2IAD8vNFkKsCIpolVvnmgSUrTF7+BPF0Bwm0tjXFWUzmN8bd2r+z/xA60MU+OwS4dO
	+tmhX7ULD+4I71Zxd8C7RaX7RDFiJLUKaJNNBcKqgIOse8af7G57ih2LhTvoqFI1ivOsL0HxXDmxz
	t7Z/rztHYWFN3yVaKLFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDgq-0006NY-9c; Mon, 09 Mar 2020 08:23:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDge-00069I-5S
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 08:22:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id z65so4483918pfz.8
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 01:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=seWJfto8ScXH/WTie1kGmp0AZpPcjTPuoxrfVsKEou8=;
 b=WjKcO9RUXrq2Owu6OwvIVyRHIjDygk6NNmdiZyD6x7GnB6m6Q6mEoRTwhDkr+ff9x4
 E224ttLqthCf/OCP8hsjeb4HH8gHCxdmkCv6MKP5U5L74ojmT7qf93HvaDX/f7uvoJu1
 zsXE6KEWswMvBYMTnX/otBAO1Cp5Oja5iyRG9lPJT4F09Wl3CdG7/ZeiC+sypc98OTOD
 Fc5I9vaOpNvg5xbikor6HIVDEpTmop/FCoiGSZs/Wa3Jdc5vGlBoXB0KPZXFhcstXA+e
 Nwt3BYhSeD88SsRSeY+Y1BSbuLYSBi3WlADGsEszCpTBDc55DgVSzxIdHX55r/TfRo3e
 Bbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=seWJfto8ScXH/WTie1kGmp0AZpPcjTPuoxrfVsKEou8=;
 b=Layx9HcT4qZUJ/1BBojaNjM68/w8hBgY0cmWN83ELGKOqOkEb/UV4URwZ9/Op1USx1
 hU7QFITDJw+WujCPmEYrHc2XLfG+m6f1dJNsYkL9VRRW22pNFPVbrKYz7j+xojMQ3Y2R
 oEVKX0ldltY0LhWfO7MZ78H5HxFIhblQB0xkMaauCcITrkr3IOJMWee8kV640xS3ABNo
 v0OU0Q0vF2iGkEq2RFjPhA+1jxERkpLjjOzKrPynbNl4ORYECIcDFSa8BQ0/essheJ+C
 HKHpuKU8Vt0AK1wqF0/J/VwQoc+a+t5ncS5mWPxZknNn3pBfgnGF1IMXN4qquj9uy1qB
 gmiQ==
X-Gm-Message-State: ANhLgQ2r4kXmhznn3OEgeNmqwA+bpMZ61xLG6wEMQUJUkLkupeAg+Eqb
 njx1lsfqHth4g0JX2c2dKz2Tig==
X-Google-Smtp-Source: ADFU+vsq0Ys1CvDxMRroE1tgaeaGQecNVeiwcD4kOHnsjkN23QBzakquwvKHGpIui1zLcaokU0myWA==
X-Received: by 2002:a63:f447:: with SMTP id p7mr15266733pgk.326.1583742175247; 
 Mon, 09 Mar 2020 01:22:55 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v5sm18364779pfn.64.2020.03.09.01.22.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 01:22:54 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 9/9] riscv: patch code by fixmap mapping
Date: Mon,  9 Mar 2020 16:22:29 +0800
Message-Id: <4e0f705ad808e9e0ec2db346c548dd2c5522e109.1583741997.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583741997.git.zong.li@sifive.com>
References: <cover.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_012256_318805_15A75C72 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On strict kernel memory permission, the ftrace have to change the
permission of text for dynamic patching the intructions. Use
riscv_patch_text_nosync() to patch code instead of probe_kernel_write.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/ftrace.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index c40fdcdeb950..ce69b34ff55d 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -8,6 +8,7 @@
 #include <linux/ftrace.h>
 #include <linux/uaccess.h>
 #include <asm/cacheflush.h>
+#include <asm/patch.h>
 
 #ifdef CONFIG_DYNAMIC_FTRACE
 static int ftrace_check_current_call(unsigned long hook_pos,
@@ -46,20 +47,14 @@ static int __ftrace_modify_call(unsigned long hook_pos, unsigned long target,
 {
 	unsigned int call[2];
 	unsigned int nops[2] = {NOP4, NOP4};
-	int ret = 0;
 
 	make_call(hook_pos, target, call);
 
-	/* replace the auipc-jalr pair at once */
-	ret = probe_kernel_write((void *)hook_pos, enable ? call : nops,
-				 MCOUNT_INSN_SIZE);
-	/* return must be -EPERM on write error */
-	if (ret)
+	/* Replace the auipc-jalr pair at once. Return -EPERM on write error. */
+	if (riscv_patch_text_nosync
+	    ((void *)hook_pos, enable ? call : nops, MCOUNT_INSN_SIZE))
 		return -EPERM;
 
-	smp_mb();
-	flush_icache_range((void *)hook_pos, (void *)hook_pos + MCOUNT_INSN_SIZE);
-
 	return 0;
 }
 
-- 
2.25.1


