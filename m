Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDD01570E2
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 09:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nZnIc67c2Uk/CN3G2tIHWPR653imWhXfxakv+5Ocgc=; b=eoe+IGDxr5acg7
	qQ7wDYCtrx0X577YqKO+hMUtUWFBE0y7QCUslN+Q4IBwJnJViI5dulzshOB1qyYhsaCWKNjD5DmCE
	jxo4S900VIgmq4+2Ph7NFlHg6BcnZvBiOKrJO4o8hp+IPjgf1pUePqQBQXJEcFhANWqZu0t8iVUTe
	y1KFkjGfhLvDZgLRI9kQ7lEXanxYAWnn6zp31C8bpd+rgMVBgFJaCY2cBTsf1gwMSzOwFTc7xgFj5
	pk4yda96AXhbscaZUNJDNUj8QxcvmOoQETDVf/XD/G3yl+5qeCiGUD0ddUtHII3zFbSNHx56CEQLc
	ONysSjjQUlkzpbu5r1uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14XS-0001WA-0i; Mon, 10 Feb 2020 08:35:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14XN-0001Qe-1V
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 08:35:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id z7so3527468pgk.7
 for <linux-riscv@lists.infradead.org>; Mon, 10 Feb 2020 00:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/nZnIc67c2Uk/CN3G2tIHWPR653imWhXfxakv+5Ocgc=;
 b=daG8Oq75DnpoQAvJWB6XbRvynaKNvFo8AHdCxeD90PwK0I5LUrjCjHV+6QgJQwMl2p
 FnR8IjrCkqcwi7rHIAezum+vzXNFA4Ro5WUhsy5cFpp3iS9y+oHHmP/YbRZEMBCx9mDt
 sathdMRh8AmPFzGk4btWpRhh0bIWmXCreib5k1PGhqy5YZEo0MXdjQPshJo5jvrbtsmE
 y9VV8/8DaFw/yqmN2rNP8uuW0e/8JhGkWqQ0A1N3b7/23eJpQShP/7DSl8RNMSq1CEAC
 GjCHmO6KRPWJ4pQDgf8uIDgBgYAb8CAl13GAuH+AsOjKhP+Jkqhv4bTS8aMHetefr64c
 dvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/nZnIc67c2Uk/CN3G2tIHWPR653imWhXfxakv+5Ocgc=;
 b=TLZWwLaHtA7jGxH15eJHJ90O3F3PencNgkoyctIbJfKBxToGBT73n2fGpmy89iF/VI
 WFcqKXxd9omWtUxgl4/ZfxDcgteQwBEYt5dIOURm1DrFu79VaEZcaJnV4d/vF/l9NEkQ
 EH61/Ybxcz1k6g5W55cP5h/VLKfajGOS0BtMS8NwiTQSXNaClMjH748mgCYK4lrS0H4d
 kDiyG8ZEHfA8ddt76mPv+thbsf55PfB7wtWHmWRGeSJlkEynHXXS/60DMGj0KjqLZ6ph
 JElKefYrLHvwkZdN7m7/hoVpJHNnFRZSurhcgCiDeA0gZjuQ62A4MFCM4Ro/jQYlpSwf
 QFGQ==
X-Gm-Message-State: APjAAAWWZNszga0gJytwaVFqaYvuPJU+godE6KGx9n87O3X5ezpJS7fI
 EDVzxaz6nondiWWEV6OhOdRhSS0M6EY=
X-Google-Smtp-Source: APXvYqwySTsDZ7ffIr6LWs5uEkv6SmFd4RFmzerUCF2XeNERGDjMBzIWnzSRUEexwVgQUUojJ+9NFg==
X-Received: by 2002:a62:16d0:: with SMTP id 199mr132682pfw.96.1581323724176;
 Mon, 10 Feb 2020 00:35:24 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id q8sm10582409pje.2.2020.02.10.00.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 00:35:23 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] riscv: Use macro definition instead of magic number
Date: Mon, 10 Feb 2020 16:35:15 +0800
Message-Id: <20200210083515.10864-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210083515.10864-1-zong.li@sifive.com>
References: <20200210083515.10864-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_003525_106729_EB83BD45 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The KERN_VIRT_START defines the start virtual address of kernel space.
Use this macro instead of magic number.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/kasan.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/kasan.h b/arch/riscv/include/asm/kasan.h
index eee6e6588b12..b47045cb85ce 100644
--- a/arch/riscv/include/asm/kasan.h
+++ b/arch/riscv/include/asm/kasan.h
@@ -13,7 +13,7 @@
 #define KASAN_SHADOW_SCALE_SHIFT	3
 
 #define KASAN_SHADOW_SIZE	(UL(1) << (38 - KASAN_SHADOW_SCALE_SHIFT))
-#define KASAN_SHADOW_START	0xffffffc000000000 /* 2^64 - 2^38 */
+#define KASAN_SHADOW_START	KERN_VIRT_START /* 2^64 - 2^38 */
 #define KASAN_SHADOW_END	(KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
 
 #define KASAN_SHADOW_OFFSET	(KASAN_SHADOW_END - (1ULL << \
-- 
2.25.0


