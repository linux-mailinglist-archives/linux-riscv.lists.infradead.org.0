Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD83AB5AF
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Sep 2019 12:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMnugcxim/9LLiQkdWDj8D86AaFoIPEJ3YveuLjk/Sw=; b=Kj0EkCs7PWLpwF
	vg70z/SzV4UQxTAtBMpm76zs7Ko4717PFufz5IL6O3d/2fBJksP9h1JH2U0tnZcgGGrB2HcO83Fwu
	UEHcPjPxIJj3jGkCohV5Qo6q3Ka3Ri5ePRKDfp6PJtuiGamdaDbVlThvIvsuSOK0epcbnzoXO68y9
	pCe8sCXJVz69Xw4q9S3PEI/v9IFeWFLRxdHK5vG1Iw52N2YD9J5UV/o82KS+Z/CxFctnM+YRwV2zJ
	FIa0BKFkgLC3zV8l1+tKpCm2XmPLYXyST1IztqLe0s4OKD6wCsJsDw53+YnHvmi4TvFmUBx7rV4u8
	JxHGMmzDWjVP1UrSKMcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BLG-0008WI-3s; Fri, 06 Sep 2019 10:19:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BLC-0008Vu-1Z
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 10:19:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id k2so5881981wmj.4
 for <linux-riscv@lists.infradead.org>; Fri, 06 Sep 2019 03:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9+3W/oqdP+82I1MrFFrfRhGsJJP0+EU6DFkCg6JlOeo=;
 b=yxDHBsT+qmgNqxLHwi7P7pAREpOgV9VvoWzCky4JhmBoRf0mKbhX5IgBSNqt7BLHgE
 Pl1R/rnZ2h6Qc9ScIY9Ap6fSyW066dyiAt66rhiR58kJbKzg1KM2opSVmNPisc4ES+aF
 mcVO1d5Hi9B7LnNv6EonPvOkAeyAL9zrxgz/zNahbOKbGGMzzrzQxPI+XdC21JxrhBt5
 7xvebwM4mFwOAnlbN0l63Uud8iTaQ0ezxFMshn9LWXB5RN0BQz3fvzeleilU102gbUfQ
 0H6Nk9Lm++bMLDj1xxMCA8NFNAd9uJAcsNe0pwoGdCPQ8lQi/vAbfuAqpgxCuhSfvdiK
 iZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9+3W/oqdP+82I1MrFFrfRhGsJJP0+EU6DFkCg6JlOeo=;
 b=iiDPLA06HPn1pH+4q/lKDuKq1oP0h7hZeBiD1jWCbXPPVI0muEHU6cM9WzgJUHJUUh
 becpsRBnUNDvzfM5FuuDVf4hGkbzx/88yrFzDNRF92dDsJWweUrYbSkqZk59DuGbZkQc
 T6h1UNGukMsYh6yzCSxzp1Cp4S7cKQEWKUfymDIbvxsV8U4Q5zAmfwQQ2bhqd9bVGD/b
 TheN20+849ktvrNLELP5Gru3IrHRKUrvpYpo52393KJlRtWuxRzVwBUyNNufANpFPXg2
 oqzM9Canj+3AZhjwC4mqxDLMjSqeCGFIt7XR5fsIVwoge6/fZoPfF5cVqVwK/ahg8a1v
 VSeQ==
X-Gm-Message-State: APjAAAUnzrg0sBKrpwLbz9E33KabRPc8k3guDuWU2rIH5fwOerHTOMGf
 UV3+RmGcjfz62NNs4gMf28rWKLdJA9ymct2qSHnfLw==
X-Google-Smtp-Source: APXvYqzBM6RUeUi+OedZEF56G5h+FUamsZBarTawvRUOOBu83bU3z9209/SFRV6pfZFGMDa36fO90GPhFU3aVlEBxsM=
X-Received: by 2002:a1c:a697:: with SMTP id p145mr5950796wme.24.1567765178623; 
 Fri, 06 Sep 2019 03:19:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190906071631.23695-1-clin@suse.com>
 <CAAhSdy3dyw_VsmP_x9NoWKhpmen6zC5EhTjxPRPHS-OizYgL-Q@mail.gmail.com>
 <20190906091151.GA311@linux-8mug>
In-Reply-To: <20190906091151.GA311@linux-8mug>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 6 Sep 2019 15:49:27 +0530
Message-ID: <CAAhSdy0Z_wa12xFN23UK4XuweCPytMrXU-+Yr5ePVGwO+JkSzg@mail.gmail.com>
Subject: Re: [PATCH] riscv: save space on the magic number field of image
 header
To: Chester Lin <clin@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031942_153880_9D30C4CF 
X-CRM114-Status: GOOD (  24.76  )
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rick@andestech.com" <rick@andestech.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 2:46 PM Chester Lin <clin@suse.com> wrote:
>
> Hi Anup,
>
> On Fri, Sep 06, 2019 at 01:50:37PM +0530, Anup Patel wrote:
> > On Fri, Sep 6, 2019 at 12:50 PM Chester Lin <clin@suse.com> wrote:
> > >
> > > Change the symbol from "RISCV" to "RSCV" so the magic number can be 32-bit
> > > long, which is consistent with other architectures.
> > >
> > > Signed-off-by: Chester Lin <clin@suse.com>
> > > ---
> > >  arch/riscv/include/asm/image.h | 9 +++++----
> > >  arch/riscv/kernel/head.S       | 5 ++---
> > >  2 files changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> > > index ef28e106f247..ec8bbfe86dde 100644
> > > --- a/arch/riscv/include/asm/image.h
> > > +++ b/arch/riscv/include/asm/image.h
> > > @@ -3,7 +3,8 @@
> > >  #ifndef __ASM_IMAGE_H
> > >  #define __ASM_IMAGE_H
> > >
> > > -#define RISCV_IMAGE_MAGIC      "RISCV"
> > > +#define RISCV_IMAGE_MAGIC      "RSCV"
> > > +
> > >
> > >  #define RISCV_IMAGE_FLAG_BE_SHIFT      0
> > >  #define RISCV_IMAGE_FLAG_BE_MASK       0x1
> > > @@ -39,9 +40,9 @@
> > >   * @version:           version
> > >   * @res1:              reserved
> > >   * @res2:              reserved
> > > - * @magic:             Magic number
> > >   * @res3:              reserved (will be used for additional RISC-V specific
> > >   *                     header)
> > > + * @magic:             Magic number
> > >   * @res4:              reserved (will be used for PE COFF offset)
> > >   *
> > >   * The intention is for this header format to be shared between multiple
> > > @@ -57,8 +58,8 @@ struct riscv_image_header {
> > >         u32 version;
> > >         u32 res1;
> > >         u64 res2;
> > > -       u64 magic;
> > > -       u32 res3;
> > > +       u64 res3;
> > > +       u32 magic;
> > >         u32 res4;
> > >  };
> > >  #endif /* __ASSEMBLY__ */
> > > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > > index 0f1ba17e476f..1f8fffbecf68 100644
> > > --- a/arch/riscv/kernel/head.S
> > > +++ b/arch/riscv/kernel/head.S
> > > @@ -39,9 +39,8 @@ ENTRY(_start)
> > >         .word RISCV_HEADER_VERSION
> > >         .word 0
> > >         .dword 0
> > > -       .asciz RISCV_IMAGE_MAGIC
> > > -       .word 0
> > > -       .balign 4
> > > +       .dword 0
> > > +       .ascii RISCV_IMAGE_MAGIC
> > >         .word 0
> > >
> > >  .global _start_kernel
> > > --
> > > 2.22.0
> > >
> >
> > This change is not at all backward compatible with
> > existing booti implementation in U-Boot.
> >
> > It changes:
> > 1. Magic offset
> > 2. Magic value itself
> >
>
> Thank you for the reminder. I have submitted a patch to U-Boot as well. Since
> my email post to the uboot mailing list is still under review by the list
> moderator, here I just list my code change of uboot:

I think you missed my point.

First of all, the space saving in image header is not of much use
because most of the required fields are already in-place. Only
res4 will become PE COFF offset when we add PE header.

To ensure that image header changes are backward compatible,
we cannot change magic location and value. Also, all changes
to image header should accompany with corresponding version
value change.

The Linux-5.3 merge window is already over. Now we will have
Linux-5.3 release with a image header different than proposed by
this patch. Let's say your patch is merged in Linux-5.4 then it will
not work with U-Boot-2019.07.

Further, if your U-Boot patch is merged in next release then
U-Boot-2019.10 onwards booti will fail for Linux-5.3.

After a long time, Linux-5.3 will be first golden release having all
required changes for SiFive Unleashed and it works perfectly
fine with U-Boot-2019.10 (or higher). Going forward we would
like to see that any Linux-5.3 (or higher) kernel always boots
with U-Boot-2019.10 (or higher) on SiFive Unleashed.

I don't approve this patch and your U-Boot patch as well.

Regards,
Anup

>
> diff --git a/arch/riscv/lib/image.c b/arch/riscv/lib/image.c
> index d063beb7df..e8a8cb7190 100644
> --- a/arch/riscv/lib/image.c
> +++ b/arch/riscv/lib/image.c
> @@ -14,8 +14,8 @@
>
>  DECLARE_GLOBAL_DATA_PTR;
>
> -/* ASCII version of "RISCV" defined in Linux kernel */
> -#define LINUX_RISCV_IMAGE_MAGIC 0x5643534952
> +/* ASCII version of "RSCV" defined in Linux kernel */
> +#define LINUX_RISCV_IMAGE_MAGIC 0x56435352
>
>  struct linux_image_h {
>         uint32_t        code0;          /* Executable code */
> @@ -25,8 +25,8 @@ struct linux_image_h {
>         uint64_t        res1;           /* reserved */
>         uint64_t        res2;           /* reserved */
>         uint64_t        res3;           /* reserved */
> -       uint64_t        magic;          /* Magic number */
> -       uint32_t        res4;           /* reserved */
> +       uint64_t        res4;           /* reserved */
> +       uint32_t        magic;          /* Magic number */
>         uint32_t        res5;           /* reserved */
>  };
>
>
> > We don't see this header changing much apart from
> > res1/res2 becoming flags in-future. The PE COFF header
> > will be append to this header in-future and it will have lot
> > more information.
> >
>
> I think a smaller magic field will let res4 have more room [32bit->64bit], which
> could offer more options for RISC-V's boot-flow development in the future. This
> change also synchronizes with arm64's image header.
>
> > Regards,
> > Anup
> >

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
