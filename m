Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D1CD9573
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 17:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YiXNbwNOKCHk8xAf80xlSiBM5DLdR5SgoxmEwjCytY=; b=ropZ5+VZpAsUk+
	793IFIJRfcUTRxaH0yA6wqcLqseQuWv6VtFvJxZ8khNo0U+yIe80hb8IDG41J5uqyNvaXbukog5g0
	yaaYHNlZke1Slmag7UopVEdyFUcyB5+KhtEEyE14qgY+MsjlOchuyQ0UCcjvKHvakULMHFtQJxDCQ
	8dVVxnlPYV/4N6zQE0Vp/ucQY/m5ea7wZeX9N5THBPf1//eFXApvOpF7HpF55EzK+DMPmLiGV1ZPl
	vBNAwjLvCvBKs4ddmXGwkHBk712Nl55YRbsNwG1aXMSbe9TOJ887RTTB4b4rMd39J4DAzeoMVXXMS
	a/TjmjBNhp6Ii5Oqik/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKl9q-0006Lo-Hb; Wed, 16 Oct 2019 15:24:14 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKl9m-0006Ky-VI
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 15:24:12 +0000
Received: by mail-il1-x141.google.com with SMTP id c4so3013867ilq.13
 for <linux-riscv@lists.infradead.org>; Wed, 16 Oct 2019 08:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=m6YvTC56tPty4UucunSEA15cVT7bFCmaoiGJUpQ0cBw=;
 b=KXn3cyGteTFQOdBxy4js14JQAsqJPlqSpcTTlnW9WRZKJpxck4oF2gh6Z54q3qAY39
 zQ21uHEpi3HJD3nJX7mI4Z4wc29Gd5mVNjHdciFBnLUC/FADeeeAJcROeCjHYxddvWiL
 wfZb2QQKN8V7+l+JMfr9lUa9AiELF/jFtTN8PbfPa9kSf3r7aGB3m3fbMNMW+mo5/p6t
 mdFUKJRwXPzGoMAXZ/VS9CU+8I1+f516eyUfAN9JYiqalyO9Zr4GSUA2MjpB7d5OC2nH
 HxdZ2LCcvugonljcCw9SCMuDq7T/G9mZOEuvpctUP/UGF+hPewnih3CrluZOlY56VDgA
 j5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=m6YvTC56tPty4UucunSEA15cVT7bFCmaoiGJUpQ0cBw=;
 b=cc5P9jiEbFdzQPv2FVPrXqTWWv/lAmAcMDOcKFU+gqrM/C14JS5Zt59QY1angaoIIo
 x6EaKeW+7K1qwM55mZ6WftYoc+K4fKMBYlVVdAoocbtTJoxc7hTpP2NJLQyP1or1Ks8z
 iN2X2IcOxnyL/JdfMKdHcT/Rm6RhjF0PSYyK2LNQiTi9mTTCvD99blAB9ylBoUmHCeXG
 d8dboMATnB/bGluU8Iew9HPfKn9VMulBaXiVu5efkw7PnONLUWHNvDxpvcXUxu9Cejap
 nKmKqoPIUc98m9e0/2++Ww+GfBtuzdOME6rzvJT3/3pXuu/Qg8QoiURRm5uzRLqgHCEd
 AXOQ==
X-Gm-Message-State: APjAAAV5plaIu9NQUiv7gFbSA6MIVxdu68CRGTTVJl029Xi2eZkSGLU4
 rtpmMECdweqiArkTdYuttGmVGXGN0Rw=
X-Google-Smtp-Source: APXvYqxLZ9xD/GF9/M3Jsq4zVM+6GSCwzw+b2YJNe+PuhGX5MtpISsN2Zeth+fX0y3aQ+7BE8iV8DQ==
X-Received: by 2002:a92:5fd7:: with SMTP id i84mr12437767ill.151.1571239449319; 
 Wed, 16 Oct 2019 08:24:09 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t9sm17591906iop.86.2019.10.16.08.24.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:24:07 -0700 (PDT)
Date: Wed, 16 Oct 2019 08:24:04 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: greentime.hu@sifive.com
Subject: Re: [PATCH] RISC-V: fix virtual address overlapped in FIXADDR_START
 and VMEMMAP_START
In-Reply-To: <20191016073408.7299-1-greentime.hu@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910160823240.12675@viisi.sifive.com>
References: <20191016073408.7299-1-greentime.hu@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_082411_046820_681338BA 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com, green.hu@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019, greentime.hu@sifive.com wrote:

> From: Greentime Hu <greentime.hu@sifive.com>
> 
> This patch fixes the virtual address layout in pgtable.h.
> The virtual address of FIXADDR_START and VMEMMAP_START should not be overlapped.
> These addresses will be existed at the same time in Linux kernel that they can't
> be overlapped.
> 
> Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>

Thanks, here's what's been queued for v5.4-rc.
 

- Paul

From: Greentime Hu <greentime.hu@sifive.com>
Date: Tue, 8 Oct 2019 14:45:24 +0800
Subject: [PATCH] RISC-V: fix virtual address overlapped in FIXADDR_START and
 VMEMMAP_START

This patch fixes the virtual address layout in pgtable.h.  The virtual
address of FIXADDR_START and VMEMMAP_START should not be overlapped.

Fixes: d95f1a542c3d ("RISC-V: Implement sparsemem")
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
[paul.walmsley@sifive.com: fixed patch description]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/pgtable.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 7255f2d8395b..42292d99cc74 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -87,14 +87,6 @@ extern pgd_t swapper_pg_dir[];
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
-#define FIXADDR_TOP      VMALLOC_START
-#ifdef CONFIG_64BIT
-#define FIXADDR_SIZE     PMD_SIZE
-#else
-#define FIXADDR_SIZE     PGDIR_SIZE
-#endif
-#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
-
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
  * struct pages to map half the virtual address space. Then
@@ -108,6 +100,14 @@ extern pgd_t swapper_pg_dir[];
 
 #define vmemmap		((struct page *)VMEMMAP_START)
 
+#define FIXADDR_TOP      (VMEMMAP_START)
+#ifdef CONFIG_64BIT
+#define FIXADDR_SIZE     PMD_SIZE
+#else
+#define FIXADDR_SIZE     PGDIR_SIZE
+#endif
+#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
+
 /*
  * ZERO_PAGE is a global shared page that is always zero,
  * used for zero-mapped memory areas, etc.
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
