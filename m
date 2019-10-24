Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF00DE3FCD
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 00:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTZtWOR+FzktXq/yrQXi1+IAJvNHfbMbmaTR8N4p2AQ=; b=o+wQmSrJiriVZc
	O54SJZM01N+/syXSEC08tzukJfiAyoZQMNyl+nsnsIpKW594JrQYInVZogUf7USYJRqCAKgZWD0pk
	FH/aey/F6i6DTbDc7lwBjc4V9pVUSkpBb97qVqcMoxyXNq+wfskvYQX199X158nqMZeL9XKqgF9In
	nt7JnKw2HE9Qr0y8WSW2Gwz2/s5Xfw1U3w92OEYsB8zU++d+X70rGX1OnZDd51SPNHPfLzYHhlS9h
	ox+Uj7kM/B9Sj9LiI61yppCYSgi8PSrC4ve3cmBRuqSIBOQ4ux83rnZqZiPY/PH0206pyUoALhUBV
	7TtG2ATKG7B4GEgJqAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4L-0000Ac-N6; Thu, 24 Oct 2019 22:59:01 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm4F-0008WL-Oh
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 22:58:57 +0000
Received: by mail-io1-xd44.google.com with SMTP id r144so201504iod.8
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 15:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hIAFt5NPNEcTJjheJJ7IFoP1QwOV2b47sLZxfo5ML0c=;
 b=ajFk24nn7MaVF1UXN3SYe+082t8H3p1T+unPsMnYo5MLGiysAPhdHHBqSNcAs9Dj7g
 M74uQnxp9Al/Ibh40zpDUgicdCCRj9a14WULDZzfwbbuBlhLHpalRhh86On02pJR1Lno
 5laMI1GF6hgzE0EjAI5jdvSZPUvCIkt/U3/7CM6WgfCyE2PDQahhk4VyD31Bakaa/xiJ
 z1KQ8VW73KY/7dvy6e166XjtiJvw0kaclFDfIhovqEoceOBWZjMTm5bVYD4i6NY0UTFL
 IcHxyadIJOonendiqIAZd+vdeOwJNGA1jGCKzQFPCnFlel4TVKykHJTZxRFWJABXMup1
 884A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIAFt5NPNEcTJjheJJ7IFoP1QwOV2b47sLZxfo5ML0c=;
 b=B8XjHqYWHKzTwlHPqJOYq/YPSBt5ouVngjVOH4rrcMv9LWc+z8vrufnQ/Th0pyOPD9
 LH0ZoPGAv2L8Dy3MOyH1hfzUQba1GJIedssNOgcwZNGX/yLq4rBLLTeUWRXCK2jK+5kp
 Hzl6eFVnSJWGxKzkaRonqW5XV/65VwMoPRtWfQ4XjiTybKmhGr+4aGjkn5yTbecrZGwI
 Xo/MPHcGCYJCUx0M6nShrfVF8Vr0rmFMYd4jT52K9HZ34u32wKw9O36pLtf5xZCZ1zgy
 bThBFkT7KW7jEv8WUQKeUyLD2LyPHhOE42FyECL+Him3KjaG7BFx+rH2LISYF71+RfVs
 B1eQ==
X-Gm-Message-State: APjAAAWBre9U2nNJKv5CPP6TAJ3CtoPXBdA/nMXeBTVj7JkV5eBj75p9
 ClrOVmw/JSnHnVklZNjS1Mt5L6pepvc=
X-Google-Smtp-Source: APXvYqxgOjI7iUMDkwHlJSHTab/FO1wxtN8dxivhZMVQwZy1W9sGjYGqLFcYhLtt3n3B+f8RWCC0bA==
X-Received: by 2002:a02:950b:: with SMTP id y11mr808962jah.100.1571957934933; 
 Thu, 24 Oct 2019 15:58:54 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm58112ilo.70.2019.10.24.15.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:58:54 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v4 3/6] riscv: mark some code and data as file-static
Date: Thu, 24 Oct 2019 15:58:35 -0700
Message-Id: <20191024225838.27743-4-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024225838.27743-1-paul.walmsley@sifive.com>
References: <20191024225838.27743-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155855_830098_3AB0E868 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.dev, greentime.hu@sifive.com, linux-kernel@vger.kernel.org,
 luc.vanoostenryck@gmail.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Several functions and arrays which are only used in the files in which
they are declared are missing "static" qualifiers.  Warnings for these
symbols are reported by sparse:

arch/riscv/kernel/vdso.c:28:18: warning: symbol 'vdso_data' was not declared. Should it be static?
arch/riscv/mm/sifive_l2_cache.c:145:12: warning: symbol 'sifive_l2_init' was not declared. Should it be static?

Resolve these warnings by marking them as static.

This version incorporates feedback from Greentime Hu
<greentime.hu@sifive.com>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Cc: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/kernel/vdso.c        | 2 +-
 arch/riscv/mm/sifive_l2_cache.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index c9c21e0d5641..e24fccab8185 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -25,7 +25,7 @@ static union {
 	struct vdso_data	data;
 	u8			page[PAGE_SIZE];
 } vdso_data_store __page_aligned_data;
-struct vdso_data *vdso_data = &vdso_data_store.data;
+static struct vdso_data *vdso_data = &vdso_data_store.data;
 
 static int __init vdso_init(void)
 {
diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
index 2e637ad71c05..a9ffff3277c7 100644
--- a/arch/riscv/mm/sifive_l2_cache.c
+++ b/arch/riscv/mm/sifive_l2_cache.c
@@ -142,7 +142,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
 	return IRQ_HANDLED;
 }
 
-int __init sifive_l2_init(void)
+static int __init sifive_l2_init(void)
 {
 	struct device_node *np;
 	struct resource res;
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
