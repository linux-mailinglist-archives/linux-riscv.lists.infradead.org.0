Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE9C1E57BA
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q8iHAnjKh91djitETlf/VgG+9uuO5Xz5Jn9NWjplsUA=; b=ICuh58VnpjO17RPSwh3WNalwH6
	7eSqkpBilVqigYK30UCniG1U0mpo01DR2vSK6pXjkYopETstlzyGoaXCJ8pZ9cM393wAKyS2lptyA
	D0X8sutVyt4tStfu+YRwvlSeC4XNIVv+uQZKEaIk+JRbpkqgzortarYQ8A82tEPeZM7m74KHHzuwe
	+6zO8QqUzA7DRfngQQUd4QvDIrchr2kN/HSG370vSktejy6SxKKIkVsyAvrytGge4SryIwQE+nsxJ
	LHYJUhEzxqatjY1Ion4bfUXBmpGaZwv2aL5ldxxCMk4UZS4HyGo+8CaDWVH2pmWTsqllXNk3W8GjC
	c/1Wxpug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCET-0003Q2-AJ; Thu, 28 May 2020 06:41:37 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCEF-00039g-IA
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:26 +0000
Received: by mail-pj1-x1042.google.com with SMTP id fs4so2621357pjb.5
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Q8iHAnjKh91djitETlf/VgG+9uuO5Xz5Jn9NWjplsUA=;
 b=V4n+MZXQQuQeWiFHgTBOlDbJDNpfhZEJuAybcm5J9js85hkXIAlvWwBjYo6FCsIusd
 /OMqLUHPDRTPQSofk4aVUFDy00qVQ/wWJ3rnq6ZeQBZIEI8G8bvpuNRTwj3Jz+LR0bSx
 9jWOa1/jyePW18Tusn9/ll2zPl3YpL0/xbMK1gPKTL8VsXwiMC7zrLCKDxG9ZxpD3Inf
 kgUy9l44b+DEmzKnEoGQLXuzKeHvNaY2d1hpAHSfltS/3rGqo41DrlkUxcDYUaWfIyT+
 5MfE4zV24PMxpHh6RjxNYHcSlceF7zZ9HEA7sxmtjlE4+Bb4jTkGZuljcuf9aFX07r3j
 2KGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q8iHAnjKh91djitETlf/VgG+9uuO5Xz5Jn9NWjplsUA=;
 b=ZU7RvglW/wcP3SwiURCJSBYDdWc7kM4fNMWjz7h9C+rikv3lKTX3O82WuzAMA9PseJ
 eeQYPs3ngoCfmdLtJjIg28XpYh8CnmFgEQqxSxvm5DTAW+z/k+JFkjc/40epW1/1ggoH
 8C9UGH0APfKfDdOd8nNb50mzIbXBoDnwWKIV311lt0b+HUVig7qawGqE1OeN0ewJd4II
 PVr5xiFiztjhdQk59snw3OB5zvn8A0XxOkKedPcLHftaQGJcv8EfkEOTVBFK03b/+q10
 +A12JfSU+YpjcJhm0fhGjf0o6HLpXYbyTsEPIJah6NJZ53HYbecSaQwIyt9xAlibQwly
 RKlA==
X-Gm-Message-State: AOAM5339JdZqZL/RbfKutV79hg2tT2UxhqskDZSFcXRgny9x0EUZkM1+
 JXXSILkb4c7aWYb8YNgICx+r9w==
X-Google-Smtp-Source: ABdhPJy1zwXsZStCzwDaCuBrK+lkcL9Jm4ubqAdW1OomcTthZiiEPoBjM82lKF+LTdo48FWtnKymFg==
X-Received: by 2002:a17:902:b601:: with SMTP id
 b1mr2128010pls.39.1590648082243; 
 Wed, 27 May 2020 23:41:22 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:21 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 07/13] riscv: Add has_vector/riscv_vsize to save vector
 features.
Date: Thu, 28 May 2020 14:40:55 +0800
Message-Id: <e699220610dd3f114d1216c46e0930632d73a0e2.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234123_645826_8E6912B7 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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

This patch is used to detect vector support status of CPU and use
riscv_vsize to save the size of all the vector registers. It assumes
all harts has the same capabilities in SMP system.

[greentime.hu@sifive.com: add support for dynamic vlen]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/kernel/cpufeature.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c8527d770c98..5a68a926da68 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -16,6 +16,10 @@ unsigned long elf_hwcap __read_mostly;
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
+#ifdef CONFIG_VECTOR
+bool has_vector __read_mostly;
+unsigned long riscv_vsize __read_mostly;
+#endif
 
 void riscv_fill_hwcap(void)
 {
@@ -73,4 +77,11 @@ void riscv_fill_hwcap(void)
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
 		has_fpu = true;
 #endif
+
+#ifdef CONFIG_VECTOR
+	if (elf_hwcap & COMPAT_HWCAP_ISA_V) {
+		has_vector = true;
+		riscv_vsize = csr_read(CSR_VLENB) * 32;
+	}
+#endif
 }
-- 
2.26.2


