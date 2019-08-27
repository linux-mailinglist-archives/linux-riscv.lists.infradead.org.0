Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2540A9E3AD
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 11:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD4SjaeutRaemBZBF1xFjRU3xhCnZE0QEA2C3nZFyjk=; b=iRyaqVbozKI/3D
	1n42ewFB6eqgxZFDbauWFmPthf09mrYnupOiGV6e4rDpAAh1hhiwYkKIapTIHpdEX7C9Zd+XUm68o
	YIqwnZycOlBPbyUxAdKs1dFKcdtpMCqaz2CF7iuZYdJf8lbRMdof2zOiZoDSDfCSKx/2gh01wzr9v
	UscdS1jwNGQ9580aNFQcY2BN0Tcluzqbxr4lL8Gb6V7W9Ljg9jWUNEo6xspOE6kcXdqFwsMppY+9w
	9VbLMShcj0KOfxVrzqUMewcW0UtCoP6+9THZe7MSzULFGoG58YQb15SwDmAzQUPTGTAlq7+DXZ1Jg
	VxCwzZZ+8kiJ/Xz0O4mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XTF-0003xb-G2; Tue, 27 Aug 2019 09:08:57 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XT2-0003x7-Vu
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 09:08:46 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7R8t2G4072298;
 Tue, 27 Aug 2019 16:55:02 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 27 Aug 2019
 17:07:37 +0800
Date: Tue, 27 Aug 2019 17:07:38 +0800
From: Nick Hu <nickhu@andestech.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
Message-ID: <20190827090738.GA22972@andestech.com>
References: <cover.1565161957.git.nickhu@andestech.com>
 <a6c24ce01dc40da10d58fdd30bc3e1316035c832.1565161957.git.nickhu@andestech.com>
 <09d5108e-f0ba-13d3-be9e-119f49f6bd85@virtuozzo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09d5108e-f0ba-13d3-be9e-119f49f6bd85@virtuozzo.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7R8t2G4072298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_020845_279215_A0014E20 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Alan Quey-Liang =?utf-8?B?S2FvKOmrmOmtgeiJryk=?= <alankao@andestech.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 =?utf-8?B?6Zui6IG3Wm9uZyBab25nLVhpYW4gTGko5p2O5a6X5oayKQ==?=
 <zong@andestech.com>, "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "glider@google.com" <glider@google.com>,
 "green.hu@gmail.com" <green.hu@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "deanbo422@gmail.com" <deanbo422@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "dvyukov@google.com" <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrey

On Thu, Aug 22, 2019 at 11:59:02PM +0800, Andrey Ryabinin wrote:
> On 8/7/19 10:19 AM, Nick Hu wrote:
> > There are some features which need this string operation for compilation,
> > like KASAN. So the purpose of this porting is for the features like KASAN
> > which cannot be compiled without it.
> > 
> 
> Compilation error can be fixed by diff bellow (I didn't test it).
> If you don't need memmove very early (before kasan_early_init()) than arch-specific not-instrumented memmove()
> isn't necessary to have.
> 
> ---
>  mm/kasan/common.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 6814d6d6a023..897f9520bab3 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -107,6 +107,7 @@ void *memset(void *addr, int c, size_t len)
>  	return __memset(addr, c, len);
>  }
>  
> +#ifdef __HAVE_ARCH_MEMMOVE
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> @@ -115,6 +116,7 @@ void *memmove(void *dest, const void *src, size_t len)
>  
>  	return __memmove(dest, src, len);
>  }
> +#endif
>  
>  #undef memcpy
>  void *memcpy(void *dest, const void *src, size_t len)
> -- 
> 2.21.0
> 
> 
> 
I have confirmed that the string operations are not used before kasan_early_init().
But I can't make sure whether other ARCHs would need it before kasan_early_init().
Do you have any idea to check that? Should I cc all other ARCH maintainers?

Nick

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
