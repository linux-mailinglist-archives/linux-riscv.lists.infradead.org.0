Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1433BB7765
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 12:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGXtNmovjfJdhQnEtPF7AjZEp30h+irJvpGQOc7mn7U=; b=khlVjeEBEZL543
	tM/qnHunxauQR2bN54yH3wM87V0A2JToYjcJp9X9HhKnaFEs3ylejgsZaj6Pf3FaC9YeNhvh1uFHx
	kReKsYlVUmoC6M/yTZJmaHQbj1Sw64bSoHV3XLS1IBo1A19uEOtwQa8MqEmvbpA6rood0+lJBkqmj
	xZ6ZF+UBU/Vmo9BCQ6o3cip00qDZOIk04cj+tpfcLFCnu/vNAg/IXX/cKS5S9IBBSpLV3wRFx5s35
	uihZTmMLwG7aPujodDaQfjsDMMSQ4fbI09sFIUS6Z2fk0C20KNWe6L+24QA6koUGQKptp7wj8iAkz
	5wU1K0s+r2QOvR0PcuTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtdo-0003ng-TW; Thu, 19 Sep 2019 10:26:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtdS-0003Us-Hb
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 10:26:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id m29so1621065pgc.3
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 03:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=mnEF80Cj0avGcfU/sygW7T/gXJMX2lJ6zkkt/vTIMyI=;
 b=YB0tuTefaGv02QDr6Sg5BxVVNsof10kIEk72yvm7p0HfjmE58x6l/XAKTIUQWScheZ
 Uw6cFKrbQr6DzqeItJIDiUmz2OjNh6Azy8+EkWVr9FqrYv+RkUMFX7TMkJqvlZY7Hfwr
 uw2AczIMYTKzvm1FbE4d7CJdzRo5GrZaU8pRunYIKCub1cYhKgn/C1f8NRIr9nA1DtVj
 hFthuwhmfjlOqBMdomdQxX5nKkdLz0/v/UiFs7yvMfAiBTcxG0O00FmSX8au4zNimsxG
 gPQQbXzyTmky1VahM3qmTiaTIvnWO9/NYjMBEWxwWt93kHaeoIpqnSk2V/sIY8D+PDDR
 yrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=mnEF80Cj0avGcfU/sygW7T/gXJMX2lJ6zkkt/vTIMyI=;
 b=bokqglMMH4W0uF9Rv6q7MKME1zR3tEc9GlThHtj/zJO7tKM/sTolAX4GytuBBeFNEQ
 dkBsZgkON7MySR9huEcQlvk+vYfH3b4s1J5THwyQfoEc4CLw+Rr/TwrkhLrDBths3u5/
 syo8IkXcV0Daz6vg6NVABZZzEQf647QJVhXSaoa2DZ3MefqioO0pikFnczATKew05/91
 Tczo02zdStvZvRbCXGVNx6nyvL4cJCRHo43XG4G/lWUNwSw6mOg6xWVmtV3pv/hSuga/
 W24kSyxRPBqH6vdvDMjXgl4XYJ5dOdPfvtOu9qQT+LW+M6wD1c1BypWm+lr8lJF7+qX3
 NM1Q==
X-Gm-Message-State: APjAAAWiGa/CZhaJ7S/IhobXahKc+ez81oNJ4dKHagDJYQgXXs9oJ+6e
 pnbWB6dQ+jzDq9HO9Xo9ia98Ag==
X-Google-Smtp-Source: APXvYqxrUtAf3k9NErxJRv/sppCM0Ns2pA/LVX7vRrE17N/8oiw/TMte0IovIlHoz7tdtSRDZVfVYg==
X-Received: by 2002:a63:2363:: with SMTP id u35mr8651955pgm.208.1568888761648; 
 Thu, 19 Sep 2019 03:26:01 -0700 (PDT)
Received: from localhost (57.sub-174-194-139.myvzw.com. [174.194.139.57])
 by smtp.gmail.com with ESMTPSA id c16sm13834574pja.2.2019.09.19.03.25.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 03:26:00 -0700 (PDT)
Date: Thu, 19 Sep 2019 03:25:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Xiang Wang <merle@hardenedlinux.org>
Subject: Re: [PATCH] arch/riscv: disable too many harts before pick main boot
 hart
In-Reply-To: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
Message-ID: <alpine.DEB.2.21.9999.1909190324250.10826@viisi.sifive.com>
References: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_032602_743889_865E7F7E 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "citypw@hardenedlinux.org" <citypw@hardenedlinux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019, Xiang Wang wrote:

> From 12300865d1103618c9d4c375f7d7fbe601b6618c Mon Sep 17 00:00:00 2001
> From: Xiang Wang <merle@hardenedlinux.org>
> Date: Fri, 6 Sep 2019 11:56:09 +0800
> Subject: [PATCH] arch/riscv: disable too many harts before pick main boot hart
> 
> These harts with id greater than or equal to CONFIG_NR_CPUS need to be disabled.
> But pick the main Hart can choose any one. So, before pick the main hart, you
> need to disable the hart with id greater than or equal to CONFIG_NR_CPUS.
> 
> Signed-off-by: Xiang Wang <merle@hardenedlinux.org>

Thanks, here's what I'm planning to queue for v5.4-rc1.  Please let me 
know ASAP if you want to change the patch description.


- Paul

From: Xiang Wang <merle@hardenedlinux.org>
Date: Fri, 6 Sep 2019 11:56:09 +0800
Subject: [PATCH] arch/riscv: disable excess harts before picking main boot hart

Harts with id greater than or equal to CONFIG_NR_CPUS need to be
disabled.  But the kernel can pick any hart as the main hart.  So,
before picking the main hart, the kernel must disable harts with ids
greater than or equal to CONFIG_NR_CPUS.

Signed-off-by: Xiang Wang <merle@hardenedlinux.org>
Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
[paul.walmsley@sifive.com: updated to apply; cleaned up patch
 description]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/head.S | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 15a9189f91ad..72f89b7590dd 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -63,6 +63,11 @@ _start_kernel:
 	li t0, SR_FS
 	csrc CSR_SSTATUS, t0
 
+#ifdef CONFIG_SMP
+	li t0, CONFIG_NR_CPUS
+	bgeu a0, t0, .Lsecondary_park
+#endif
+
 	/* Pick one hart to run the main boot sequence */
 	la a3, hart_lottery
 	li a2, 1
@@ -154,9 +159,6 @@ relocate:
 
 .Lsecondary_start:
 #ifdef CONFIG_SMP
-	li a1, CONFIG_NR_CPUS
-	bgeu a0, a1, .Lsecondary_park
-
 	/* Set trap vector to spin forever to help debug */
 	la a3, .Lsecondary_park
 	csrw CSR_STVEC, a3
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
