Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953A04F035
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 22:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDbn2Wr4ZWrlqMJAq3PIbLQdYXNObmAbqvG+bZi/7qU=; b=JUGuqoExyrwtOn
	PkG7zn+dWUdCoPocbXg+BaJ/FHtgLg+Bywztu7Kyyf4uZXMMIRrg5yL/tlSrFHkQmGO+DVbjmL9y6
	5ps+38K+rGUgIygEbWX59VOhWnEr+Alyk1FoPvaB5yweUw54UVxWFd/ASCMbaMaf6H38Fn5q8zGbj
	mavbBboT5v++wsD0Z2HrDGABbjKgQedR7J8d/STjv9TiAsXzbQ4//3MjOjA0pHaKP2tOd4M9jRWIH
	z7kJNC3tuNORQzXNY7b7uTyyz3MINn7fBDYLPztt1iwvAUuOmxSuxF5K4gv0rCbq3tfqlHnXj65jv
	3difFCwaqz00LXD4HKig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQbC-0001fd-D0; Fri, 21 Jun 2019 20:57:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQb9-0001f2-Pq
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 20:57:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so3539691plb.9
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 13:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=H/NLySTiC8uAnCspmXkhrlAZHYiLqnkkkWQUbVQ6ElQ=;
 b=arxBBD5/0Ux448qVk97vszDxHMoHtztdQyoKg8mu5nmcWDBYqrKs4/W9+7HNRxqhbw
 g8jcsGSKB0yP9JiIpRKsNX6YHAcwboHPeLN321+anuOn7xVdrxE4ZVbW2CtCFQzY65wr
 t0fp9shPRSS/+wfYr8TrUOmI6LegKVxuUdwr9j0hOCqrEEZisyia8EwgcVR/KPoamDLt
 Eksls7St5IHXid6NhIvn5KJBYIIO0SKCqglrEYgVWmzCBCH8Eu/GrT/BpHJoa+6OAU9C
 KdYs7d+4U/+jtE1PzOwcqyjqxOz2HAQAsoSPOOtKSceaGGobBstGDx3MmNwaOnAPz4Nc
 hNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=H/NLySTiC8uAnCspmXkhrlAZHYiLqnkkkWQUbVQ6ElQ=;
 b=CSN3qwj5otcsuYtuN+iSEv1wRD3L+dmM++uc0BbVHMFXQnONI4qxYwx9sASvvaSgkH
 mLYjNEKchHYILhSWcXpuoWS5YKDA93YmvMGehDp5p1KE20E4A8TUClfsYRCbRcQWprRV
 fTG4im98iotT4d3b6OMAj96zToZRCFv8dkOcenKzU+QlQcj/P5uLCnn3L5BrsGHOys+6
 3FEcJsigs0ZwKvgPrH7plvF0jCAPXmCdgqrC+9rjsf8daHDAiOOSczZSWl0HxEN8gm3Y
 mYPidgiFBKAkuJALQrOS8fyxOkjtOf+Ue0nNvYszxjyusUEN2/m4uDkHGCbWsVZMNjdx
 d9Kg==
X-Gm-Message-State: APjAAAUfaGMpWsiQDLVt6jdedLdsAUuYyEly3HduH77saHkfg0hDvG8j
 oOG5DU7neffvXhc5ntvpjCKMcQ==
X-Google-Smtp-Source: APXvYqytGTfsHLwYJtvHNb4ViJLMQOfBZI0pmRtzY8RMdDp3ffZTQ5o9YsECZRa3OHMOJE6T2EA/Zw==
X-Received: by 2002:a17:902:44a4:: with SMTP id
 l33mr53816695pld.174.1561150646794; 
 Fri, 21 Jun 2019 13:57:26 -0700 (PDT)
Received: from localhost ([38.98.37.134])
 by smtp.gmail.com with ESMTPSA id h1sm6003826pfg.55.2019.06.21.13.57.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 13:57:26 -0700 (PDT)
Date: Fri, 21 Jun 2019 13:57:04 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: sifive-fu540-prci.h license (included from fu540-c000.dtsi)
In-Reply-To: <CAEUhbmVqB+WpsZYbwLj4ZAAL1aESbNO_6roHdq=EfxgjDbcRTg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906211355370.13854@viisi.sifive.com>
References: <CAEUhbmVqB+WpsZYbwLj4ZAAL1aESbNO_6roHdq=EfxgjDbcRTg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_135727_900486_E0D23EC5 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Bin,

On Fri, 21 Jun 2019, Bin Meng wrote:

> I see fu540-c000.dtsi is dual licensed under GPL-2.0 OR MIT. But there
> is one file inclusion:
> 
> #include <dt-bindings/clock/sifive-fu540-prci.h>
> 
> This sifive-fu540-prci.h is only licensed under GPL-2.0.
> 
> I think this prevents anyone that has GPL contamination concerns from using it.
> 
> Would you please consider making sifive-fu540-prci.h dual licensed as well?

See below

- Paul


From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Fri, 21 Jun 2019 13:45:42 -0700
Subject: [PATCH] dt-bindings: clock: sifive: add MIT license as an option for
 the header file

At Bin Meng's request, add the MIT license as an option for the SiFive
FU540 PRCI header file.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Bin Meng <bmeng.cn@gmail.com>
---
 include/dt-bindings/clock/sifive-fu540-prci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/sifive-fu540-prci.h b/include/dt-bindings/clock/sifive-fu540-prci.h
index 6a0b70a37d78..3b21d0522c91 100644
--- a/include/dt-bindings/clock/sifive-fu540-prci.h
+++ b/include/dt-bindings/clock/sifive-fu540-prci.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
 /*
  * Copyright (C) 2018-2019 SiFive, Inc.
  * Wesley Terpstra
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
