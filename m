Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC013AB3F7
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Sep 2019 10:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzhDAYM3or1Do8rmD9pfPBGXdfnvGf5/ky0ZncbN3AE=; b=Fm1nuq8m2Ybj3m
	h42vRIZe2Ms8X4ejQK3+RxdGxElQ36FQV6SYlU+wE0KIAkn5ATZhEH1o4L79KG0s8sOffXBhDiRQb
	03SMNOk9tYFivbN+oAr4xqB3o/2Ct5UcgSpfchsNBcRWhcf85ygYp4Zgs7i0ZY1PmkeQVJKkiU4NQ
	c3VCJhhQ8j5GzlvC8NzPGmXt6kHMx3dliaq79tCVqck0iJg7YL9lpV+uphhwOxe/RVNUDnQRirrY9
	Y259vzxX6pghW6dyuEO2/QbajeyVuBvYQkVNugkcFbKIT5YZ6ecVca1pmSbF4HzARTDhSaPRG6AFN
	ONOMaEbHH108Iw5naemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i69UD-0006Lb-R9; Fri, 06 Sep 2019 08:20:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i69UA-0006LB-O6
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 08:20:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id q19so5512944wmc.3
 for <linux-riscv@lists.infradead.org>; Fri, 06 Sep 2019 01:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bxSxCGTX5scDr5Ieq/9luU1LSOKlQMOwoIgSxeGJIjI=;
 b=BxwOBYJmNXdj15JKcfJ54A2tSTwEJYs/JSMdNCmjBwc5Kw8V8Z7WvPjzKC3fFtZdVt
 N1F5ptfReYpWfAHRMsQPN0i1LOnP4rPIpkLd/AVmVUQhFOKa3Hpc+w1pmZb07S/nwxO6
 ij1eIQmcF2YkModxrFGD+YrJvo2hRWF94cZkzMKfcQsj+7eacqXysLktD5qXD9boVMhB
 ea+SaKAbCSaFWsJ5GABBlFt5nxQWt+C0DfElyoGb5r0wU2WDIu6rH4m+IbGoRMxRJ14w
 AjDWtqMxSSs5Qq6Xnq2I/Lj2LDghv7kAX8w1lu9fpJZhj8zmI1HdnQCetnZD+IX7Bjnj
 yJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bxSxCGTX5scDr5Ieq/9luU1LSOKlQMOwoIgSxeGJIjI=;
 b=Ib0w1tr/RlmRkztaumUjbNW5ThPLKEA2aFAwKvCilpA9fRdM4B6FFVvJzT101bAlTX
 hxsRIyPH3clcMML96+YvvIGo+Q5c7POAxohkA49YLDlz6jq5lmUhynZqBJeABL4WSocy
 7A0DRaW7BQasd3HHjnlpgVhUYrt6JoI2aMxMEQGSiuhmX392dhBaqtjBdKRK73LAkJ8Y
 rnB9Tjb+dOrx8zSF/TPtv3QyKxGG+NL1JhY2sBlusf3JqgmqXPFLhfqwlQ6WWmfyel6Y
 pBhDNy9xxYLtj4DUzNFACnKMkrVqZY7VHzhCqEmKN/S39d7+1jJmbI3RQ2NmyDHd39CK
 cDcw==
X-Gm-Message-State: APjAAAXh5oMVFBk/+3sfVoase1gvcQS7dhLEnjt8P2EOWJm5mY8Y1BMx
 0RqDFsOQ2DH+Lnafyn+zAi11mo/s3+HgoqdyFgDYiw==
X-Google-Smtp-Source: APXvYqwZIfv9LJKhtufyQXSyWXH70/rhsZbPefDxeePyf+2s1o31OMXC0fO5THfjyMBhnKyiz1uHRFCkrdsKyLyMISs=
X-Received: by 2002:a1c:5451:: with SMTP id p17mr6208237wmi.103.1567758048221; 
 Fri, 06 Sep 2019 01:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190906071631.23695-1-clin@suse.com>
In-Reply-To: <20190906071631.23695-1-clin@suse.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 6 Sep 2019 13:50:37 +0530
Message-ID: <CAAhSdy3dyw_VsmP_x9NoWKhpmen6zC5EhTjxPRPHS-OizYgL-Q@mail.gmail.com>
Subject: Re: [PATCH] riscv: save space on the magic number field of image
 header
To: Chester Lin <clin@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_012050_813426_FB1B6DCE 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "palmer@sifive.com" <palmer@sifive.com>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rick@andestech.com" <rick@andestech.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 12:50 PM Chester Lin <clin@suse.com> wrote:
>
> Change the symbol from "RISCV" to "RSCV" so the magic number can be 32-bit
> long, which is consistent with other architectures.
>
> Signed-off-by: Chester Lin <clin@suse.com>
> ---
>  arch/riscv/include/asm/image.h | 9 +++++----
>  arch/riscv/kernel/head.S       | 5 ++---
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> index ef28e106f247..ec8bbfe86dde 100644
> --- a/arch/riscv/include/asm/image.h
> +++ b/arch/riscv/include/asm/image.h
> @@ -3,7 +3,8 @@
>  #ifndef __ASM_IMAGE_H
>  #define __ASM_IMAGE_H
>
> -#define RISCV_IMAGE_MAGIC      "RISCV"
> +#define RISCV_IMAGE_MAGIC      "RSCV"
> +
>
>  #define RISCV_IMAGE_FLAG_BE_SHIFT      0
>  #define RISCV_IMAGE_FLAG_BE_MASK       0x1
> @@ -39,9 +40,9 @@
>   * @version:           version
>   * @res1:              reserved
>   * @res2:              reserved
> - * @magic:             Magic number
>   * @res3:              reserved (will be used for additional RISC-V specific
>   *                     header)
> + * @magic:             Magic number
>   * @res4:              reserved (will be used for PE COFF offset)
>   *
>   * The intention is for this header format to be shared between multiple
> @@ -57,8 +58,8 @@ struct riscv_image_header {
>         u32 version;
>         u32 res1;
>         u64 res2;
> -       u64 magic;
> -       u32 res3;
> +       u64 res3;
> +       u32 magic;
>         u32 res4;
>  };
>  #endif /* __ASSEMBLY__ */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 0f1ba17e476f..1f8fffbecf68 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -39,9 +39,8 @@ ENTRY(_start)
>         .word RISCV_HEADER_VERSION
>         .word 0
>         .dword 0
> -       .asciz RISCV_IMAGE_MAGIC
> -       .word 0
> -       .balign 4
> +       .dword 0
> +       .ascii RISCV_IMAGE_MAGIC
>         .word 0
>
>  .global _start_kernel
> --
> 2.22.0
>

This change is not at all backward compatible with
existing booti implementation in U-Boot.

It changes:
1. Magic offset
2. Magic value itself

We don't see this header changing much apart from
res1/res2 becoming flags in-future. The PE COFF header
will be append to this header in-future and it will have lot
more information.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
