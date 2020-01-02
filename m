Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5926C12E24C
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 05:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRIqkpS+vEH2fQVaBgXNRzy8KphxwIGgy8VZczGGCGo=; b=B/Uoy5LIipNFSo
	W84MnTyxa3qHbZtCnZpzcwBkZ1j/ZO12aF3FKgjpT3LS1CWopnNwTPSwGh1HNE2JylPf2mqN0vA4Q
	HQzm/rn/DdfuQyTgwz2O7pTi0cZ+0YmzU4f6UoIF7OLbUrpeR9798xRRrqmChGzxqTnoAm92RDvCD
	YJ8n52MIJXr4jSEhmIz7b/c7ZGLPcui4gZ4udjZgX0Kbt9qMucJhvq7Dxj6dWKIMG0mANqc5iirWJ
	KRytxWLhQbq6tUS8y8zowSw7nyTkOdDLPnvGGUF47nEVsT4zJdS8K4rHxH621MclMGUoDWu9sS1xW
	xzNH7UW8FBK9p/mHc3WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrtJ-0003bR-OT; Thu, 02 Jan 2020 04:15:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrsq-0002e2-8F
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 04:14:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id n9so13598193pff.13
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 20:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xRIqkpS+vEH2fQVaBgXNRzy8KphxwIGgy8VZczGGCGo=;
 b=fVOVyHxQMzlnCKA8erP9Wti/Xdnqmv/ZFemKS26QB2b396Y/Wl46alb67+5C0oZcbU
 OGGeQjcE9ZvjP5+IR84Bsd4fWMIyISM5Ij3i3eQeqJIEfjX1105zjM9L9JNVE897RJno
 sQ2XD7mOcAlAeAyY8YhGHy59azp7lcACBaFFMjO1/LDKt4vEnArO/jQCoBjvOfPHer0Q
 ALhoS6ZBbiaBgvZYYMH8IIzR0fheV6BhSi076775U9MUl8vUU3VeprHBl743LZrMDSGE
 lu8iSzinBDhhCwAsw3SKFyHK4+pcYmRkczv1rmwGKEA4o+GR6QzHh526+mYXOQDH3MKg
 fG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xRIqkpS+vEH2fQVaBgXNRzy8KphxwIGgy8VZczGGCGo=;
 b=CmXDmWKAJpZdX4SV4lWamjjie0iFSYVn3vYZt+TpfumBAsXee1exTJZQGDRR2RCZ6I
 7N5w21TS90Pr67lE6Fu4bG2aUQd8b/7EQ8SxhUIUeAZ36P4ySzRAMS9pEAE8p9NfFX9l
 9tkqXXy++vQ+J722CVyVSxbz47mqPgrUjHd4Gjfq6N9j0AswvTvMbVOE8nPdo/XYuP6F
 +CvQOB4qVbare3P5DnJgkKvBexJiQgyiBut+KRrxGWK0a+37uTCWN7f3an5TvM98vlLf
 uhXDvvmvjIZU8ppsSECQNET7x/0oon6pHR5rGvRtdJkHARvqQ0h6zpwFWTgZHPcSPLWx
 fo4Q==
X-Gm-Message-State: APjAAAUjg7961MP1uofBNCa+vg4BEexl1X2BxHcsZmEgzLX+IU2dd0S1
 1v7Qc+pbUmlp8pfybKYEzQ6OGg==
X-Google-Smtp-Source: APXvYqwxtTtibqCTDpLG7RCZcBpPTOxuSd5xxO3oouomRB1PopxQCMZWVfAlnq62DEPvPNHLMIpWBA==
X-Received: by 2002:aa7:82d5:: with SMTP id f21mr88277819pfn.245.1577938491457; 
 Wed, 01 Jan 2020 20:14:51 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i127sm63870336pfc.55.2020.01.01.20.14.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 20:14:51 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, anup@brainfault.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] riscv: gcov: enable gcov for RISC-V
Date: Thu,  2 Jan 2020 12:14:44 +0800
Message-Id: <20200102041445.98195-2-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102041445.98195-1-zong.li@sifive.com>
References: <20200102041445.98195-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_201452_334292_82D2D11B 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch enables GCOV code coverage measurement on RISC-V.
Lightly tested on QEMU and Hifive Unleashed board, seems to work as
expected.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d8efbaa78d67..a31169b02ec0 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -64,6 +64,7 @@ config RISCV
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select HAVE_ARCH_MMAP_RND_BITS if MMU
+	select ARCH_HAS_GCOV_PROFILE_ALL
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
-- 
2.24.1


