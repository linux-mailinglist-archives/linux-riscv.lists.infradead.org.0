Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF0612E1D9
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i3ZeFLW0tZfqHlZISm5iQNQKhwN5szM40SC3+DB7Jec=; b=eutjcN2vB000l5
	I7/SNdjBpcySj4k6vTaAbEvIZqh93E+K817m5fKR9vqWhHjMCRxQbu5SryemZM6sPstL4AU7bLRGl
	6Z+q9zQn6ak65FVBelb4Gl7sFCHBlt6qdK7Ra8sQLe7t2kSs5mgMRFokNib/eCI4CvfQlN3IXqGIh
	bdVIaBQ+onbtQidsRLvUC9NZ8Scn2qe8kmhjOScFNKUKKCQDVtPQcCk4TioAsX54XNwWUOkzKvHUQ
	O4UW583vjLPX1ODjyQ4NqhG1A5t4EaOOHE/C8nUa7UJdcMFfMra5tXt9Tcg++5xK8RaBL8iZrF2YZ
	qNDBekPypTL+e6SgLH3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imqsP-0003dv-7U; Thu, 02 Jan 2020 03:10:21 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imqsL-0003d0-Lz
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:10:19 +0000
Received: by mail-pj1-x1043.google.com with SMTP id kx11so2683697pjb.4
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i3ZeFLW0tZfqHlZISm5iQNQKhwN5szM40SC3+DB7Jec=;
 b=Vi6uFeK8FQWUpxh9kg+TRm+rbSbuHhbmk1YAT+cd52UcYzvsmrZ4GP4Q+iXx/+ldGu
 GbwH1UiGd0FdOoOGsVNn0BtoWIJRdm8OGWDbrjqbD7hAZ6d/dpy7pauLt2E6Qjc+NdLM
 tUuercAKxUjqHbyY+vqAijC3hOLEGrrwfuGQ8aW9dSNUw+j/Xx8RHX0T/YChcH9rX8XI
 qRoIXCaB1kdarijD5CqXfyhZfESddv2UA3Yk7legVOaMGMAJrNWhbmH0QW3kqx2Sc/XS
 xQLqrlvoCKY90UGMZPbHw/fBPqyGuwLse8b66izIFK4Izf5MkUE4onLL2qm6S2dq8U9j
 b+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i3ZeFLW0tZfqHlZISm5iQNQKhwN5szM40SC3+DB7Jec=;
 b=pvI5dRjFEqFyI5wMPwwPHIPRw8tWKmeECk2Aai7LTE78SB2/l+dF5X6CCVgk2XsjC1
 77VR2UOH4+HIIR2qoJM9duCz5IZvEob1OvomSP4I/NhLwjV00f/RVWfGEjz8hnMW6Lsk
 GLapqjVDCfb7S2zZ2TofQuSowOTe4NT4zuGybH5xTcoha/+8xleoqz9mKdh37HzOcC27
 CNZsks0XcyrtfjGVfXhWcOz3TqGLZkyYcsaZjZkKi3mWV7rNCHa4z8yU0mOcoM0cl8F0
 5mWYKgiUYK3q1nZYObmi4lkToEuW2vMsOaUK4lq76eyRO//zNpufvDj5ObZ5OGB+F3PM
 J44g==
X-Gm-Message-State: APjAAAWV20/aXGniZqF+lMtjb5NMOBI+dsdWBRAcGxLcoFc4q7Xyv8xr
 TFlheBuUbLthO0W1Azvtb8R2h994hKA=
X-Google-Smtp-Source: APXvYqz6/qqGIg9+6XCIhwTyqx31euuHN1nfJJLRxO61z1RD9MygdXVLOHdb/HUCTEAi+bfmk9MVoQ==
X-Received: by 2002:a17:90a:1a0d:: with SMTP id
 13mr17092503pjk.129.1577934614654; 
 Wed, 01 Jan 2020 19:10:14 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id r2sm56108919pgv.16.2020.01.01.19.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 19:10:14 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: gcov: enable gcov for RISC-V
Date: Thu,  2 Jan 2020 11:09:54 +0800
Message-Id: <20200102030954.41225-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_191017_867545_197CE5C8 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
---
 Documentation/features/debug/gcov-profile-all/arch-support.txt | 2 +-
 arch/riscv/Kconfig                                             | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/features/debug/gcov-profile-all/arch-support.txt b/Documentation/features/debug/gcov-profile-all/arch-support.txt
index 059d58a549c7..6fb2b0671994 100644
--- a/Documentation/features/debug/gcov-profile-all/arch-support.txt
+++ b/Documentation/features/debug/gcov-profile-all/arch-support.txt
@@ -23,7 +23,7 @@
     |    openrisc: | TODO |
     |      parisc: | TODO |
     |     powerpc: |  ok  |
-    |       riscv: | TODO |
+    |       riscv: |  ok  |
     |        s390: |  ok  |
     |          sh: |  ok  |
     |       sparc: | TODO |
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


