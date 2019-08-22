Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC74998A3
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 17:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HrQx+3PXGVyhZnTrZ88WqDZv1I+S6TfweVcBfEtzGTM=; b=a78OoYyOKnsJg12IlpSoJyhDdA
	WY7oUa3DyqJIFzMgAPbzG+AQhhK71An8cdQS52HF8g832O1cdWhlI7a6lizE6RkwP1xKUK/KWFule
	AL8EdqvYr1B+uoCP3HumsQG1/FSfgNxmLZzs3/OZWiBWLIMaNc63jzEvngYIAH877gXgHNz/9DyhB
	KLelwH5TMvO0j//hcvyUnhqWFm5NUybsbWxQlQtw1xLvCwZfqzXUxZvk2pRc9+Y5KGxL2TG/iCDQT
	oldIAWRSEOII/y+YA+ZrZcZFx1LU0VKm4FsjcGxWGUfMgN5AlFomRc3xJ2xSqGGChWII7e9YPgoiA
	r6cARfog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pUs-0005W6-3M; Thu, 22 Aug 2019 15:59:34 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pUi-0005Ul-QC
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 15:59:26 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1i0pUE-0000T6-2I; Thu, 22 Aug 2019 18:58:54 +0300
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
To: Nick Hu <nickhu@andestech.com>, alankao@andestech.com,
 paul.walmsley@sifive.com, palmer@sifive.com, aou@eecs.berkeley.edu,
 green.hu@gmail.com, deanbo422@gmail.com, tglx@linutronix.de,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 glider@google.com, dvyukov@google.com, Anup.Patel@wdc.com,
 gregkh@linuxfoundation.org, alexios.zavras@intel.com, atish.patra@wdc.com,
 zong@andestech.com, kasan-dev@googlegroups.com
References: <cover.1565161957.git.nickhu@andestech.com>
 <a6c24ce01dc40da10d58fdd30bc3e1316035c832.1565161957.git.nickhu@andestech.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <09d5108e-f0ba-13d3-be9e-119f49f6bd85@virtuozzo.com>
Date: Thu, 22 Aug 2019 18:59:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a6c24ce01dc40da10d58fdd30bc3e1316035c832.1565161957.git.nickhu@andestech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_085924_862501_E6A53F78 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 8/7/19 10:19 AM, Nick Hu wrote:
> There are some features which need this string operation for compilation,
> like KASAN. So the purpose of this porting is for the features like KASAN
> which cannot be compiled without it.
> 

Compilation error can be fixed by diff bellow (I didn't test it).
If you don't need memmove very early (before kasan_early_init()) than arch-specific not-instrumented memmove()
isn't necessary to have.

---
 mm/kasan/common.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 6814d6d6a023..897f9520bab3 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -107,6 +107,7 @@ void *memset(void *addr, int c, size_t len)
 	return __memset(addr, c, len);
 }
 
+#ifdef __HAVE_ARCH_MEMMOVE
 #undef memmove
 void *memmove(void *dest, const void *src, size_t len)
 {
@@ -115,6 +116,7 @@ void *memmove(void *dest, const void *src, size_t len)
 
 	return __memmove(dest, src, len);
 }
+#endif
 
 #undef memcpy
 void *memcpy(void *dest, const void *src, size_t len)
-- 
2.21.0




_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
