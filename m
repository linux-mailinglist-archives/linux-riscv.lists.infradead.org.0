Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27A1E6F5B
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 00:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l45d2ebIgVTYBdcwadzZn1AiPQm55aaNY7J4mpFY86s=; b=MmFw3MZQUN/DJh
	KvPgFvcHnb70iH7SCIrEc/8Lfzsx8IU2eFzngdLjon2pZEiuh56XHQAjNYU0b7yPQOV4NPGFcHhdS
	9xGXgGZPhnVcmfP3uJV1Pi6A65Ovi4iMEYnPMRwstNrdsRa2HlNnZwTl7NzuSG+H60hTQzMx3q21+
	VVsQSP3ACWM/I4vRZTmpMqiutAU35ZuRQ/unZdcj0PuGyPR+A/77XyZE58docOMXJEfbqYR3YNbMJ
	qvyFnQaovLLfw3+DjBgF0bIXrcv4SXBkn0Dcbail4qr7+3uqTAUf87hSnmosNydP4g29Gnu/cUC7T
	jL23aoWy3hteXM1cF8QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRFy-0001Rm-PP; Thu, 28 May 2020 22:44:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRFv-0001Qo-5J
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 22:44:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id u5so310614pgn.5
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 15:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=l45d2ebIgVTYBdcwadzZn1AiPQm55aaNY7J4mpFY86s=;
 b=gzq7o17BUls8m2QY2K9AJK73zJe60aWiWfGiLBL/NiD7RUd+s6lCnOfHl7LoNFT1j8
 qUfkNJRnB4CVStoGo7C3cdIym/GnWivmbC9QxLGwQnffvtyrbxvnJGPRw7RWIsuC7vUG
 FLFzERKd/C0fKkrxYUq6SV8Tg4nf6ol0XslnBxchnkDaurX2rs9c3LDvq8sgF0RgXViB
 ehS3OoqYMb91sZHeE2cWUKybggSjQDPEf7unUbr4TKmzePcNEut6vMJ2/xpXZPXea2ww
 gqQixF/rQUwmBXjbvbOCl6doypj/KE5VWH0xcSnS+tnL/w2h0J6I5ff1MQ5MQlVEus29
 xaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=l45d2ebIgVTYBdcwadzZn1AiPQm55aaNY7J4mpFY86s=;
 b=sOfzGBLdVL7EN5M3cac+z/kmkybOJj9pAu8FKq/hFBfoGX0fZTrLftAhCc1v3zFMZK
 E57MSJnnCdRSfYCIGgqFP19vvgu4hWei4NP49jOd3rGJA/FwL4CaDLCj3laM6w4q+CKI
 EkH2dalucrt8xjCZ5TFGZ2m/zNJXIyV//VbmR61ggOcGQK8yQ7jHcfoT9tGsAvb0FBVk
 6Nhj+3huNHt23whDxwLuzDlQTbhKNoWcqP+MtIXdRvqqhVdkS17NUkBXLI+yu3VhHdll
 73gvfK776pF5WK8zzNotGiIwwxMi7vz/hLlEapkH5ds9DnKS66rYXvj4PV/Ok1/kmVxT
 gpCw==
X-Gm-Message-State: AOAM5319f0ddYB9vDJ6hDb2GY2nNPIzip73exrZOGR5fsXIlG3tlQzAN
 nM+rTQjf+pGS/s9t/Qf4TMRSAw==
X-Google-Smtp-Source: ABdhPJwq9RAGTsT72bc6ZS4m4DqTZ9XT3ecH6wm1LPKrA30nov53xcwsWLSkrP5e8rF1Klixj+jFzQ==
X-Received: by 2002:aa7:9e52:: with SMTP id z18mr5446497pfq.57.1590705844915; 
 Thu, 28 May 2020 15:44:04 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id e19sm5488131pfn.17.2020.05.28.15.44.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:44:04 -0700 (PDT)
Subject: [PATCH 1/2] soc: sifive: l2 cache: Eliminate an unsigned zero compare
 warning
Date: Thu, 28 May 2020 15:43:52 -0700
Message-Id: <20200528224353.32559-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_154407_268624_52D06447 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: anup@brainfault.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 linux-kernel@vger.kernel.org, yash.shah@sifive.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, bp@suse.de, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

GCC warns about this comparison, which is unnecessary.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 drivers/soc/sifive/sifive_l2_cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index d5f266551880..51e198880a8d 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -51,7 +51,7 @@ static ssize_t l2_write(struct file *file, const char __user *data,
 
 	if (kstrtouint_from_user(data, count, 0, &val))
 		return -EINVAL;
-	if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
+	if ((val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
 		writel(val, l2_base + SIFIVE_L2_ECCINJECTERR);
 	else
 		return -EINVAL;
-- 
2.27.0.rc0.183.gde8f92d652-goog


