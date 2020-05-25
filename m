Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A171E1E0693
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 07:55:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xnsfvH/wASXEXJznW6JfADs4WQzB6hvTXGajXl2onWo=; b=XWJtVrG5ttx7gebVZMZoh6Sj6
	HhEpq6e6IDmzmCZGcgpJvfAniWXw2oeZZVrbFoQyxFqK02EDMTFs8wd6oJFNvkza6bdeYOsUPfRM5
	wkcDhFd9y/uX0woGubR9DIzMaOKwmRVBR3i58MpoMCPpZhXGNH6DSQN6zLY3o1ViB+V/7BOH8HF9m
	GrjmdnuUJ7qNk3ytxYMdS82g5qwV/HKh2WaBm1dlnDZ9j8GhQNMs93gD2c0fo76lP44oVrp3tGpZT
	aiwH7bGVthUQ4sPvg7bhrC3Y3hX7OPmFd9H/AHHhN8K6QzqQlRTrKpIlNNdd56XohQJIncYRM4c0k
	Tw9tkTAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd64m-0006w2-SG; Mon, 25 May 2020 05:55:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd64i-0006ap-AH
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 05:55:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id f5so7336102wmh.2
 for <linux-riscv@lists.infradead.org>; Sun, 24 May 2020 22:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xnsfvH/wASXEXJznW6JfADs4WQzB6hvTXGajXl2onWo=;
 b=UwMWBaBU1COmbyJPENUModAWxX2O8P1YQO+8h5YFvp5c2cEWl5zfpKZ07FrxqaNPsc
 oUliNnEtworQRoom4LJ99pmkrDkxPO5wzKtutFZcJtFw/9OwyxxBmuP5L2/FFhvSkLZR
 drfVuLVtassSkB43SuR7AlJ43QBj71ym2stcEcR5P4iNOg4D0l5Vw7bOb18jygqjWv8F
 cE2ggaeUadpaPWTTN/qScBc496I2tA66YtcHI1h0GCE1/Em2wtURIbOQ3hkWZWfV2uXR
 PDJV32D+cNDObSZI2qsb/LwzAC9YkYTXO2o88ejwV98Vdwf1Z7nU0yJ2BFqk8S8wkCU9
 sIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xnsfvH/wASXEXJznW6JfADs4WQzB6hvTXGajXl2onWo=;
 b=C4oFautnmQTyhSkOGfAzD0ZtyGhozYvOlRjNeBXclm66oTZ4r/eJRIcKPWAr3qiW3C
 iTL9qxMV4Kimu2Wc+Uc+6Ya0BWOf/yvXBw5ccOexRAAy8bmizrlfuAwGoDc77FDIl0T9
 DEXzRbZcq8pKGBqDC1zm7hnCb/JYKdGMHz00nHvq7TNwTk097H3C9VjFvK34tv+xiXdI
 d896V+NBN1760B7JGIiyE3ibHH1ZNmAkpVu6SATO76r4/qShLhli+6tAMRA1tNN2bDkJ
 980bZYYYHcQf3bZ+6DA51uMVzlQIv9EMf7eKD7wKRlAiejl9cQ4NaJqzsYhyeSOTyySi
 25fA==
X-Gm-Message-State: AOAM531HdB1L41S40hi+d1Hi75NvSOubbfkjruQvs40VLHqVfJJM5oEp
 GkX5FqjgYJHSGWyIg/rFprMw3AJxL9GJbBK/YTb6yg==
X-Google-Smtp-Source: ABdhPJwESrGsLIl9D8TIYjJyCxhMlsR2C/SeTL03tl84X40a5EYSrPjswldE5qbLIJJvLlaFCMahJd2s2yMH4BCzTcA=
X-Received: by 2002:a7b:c4da:: with SMTP id g26mr23239862wmk.3.1590386098126; 
 Sun, 24 May 2020 22:54:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200524091008.25587-1-alex@ghiti.fr>
 <20200524091008.25587-5-alex@ghiti.fr>
In-Reply-To: <20200524091008.25587-5-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 25 May 2020 11:24:46 +0530
Message-ID: <CAAhSdy2-BXxopmTX-UVxpNv8dhMa8K3hT+K3j2aECZ0SmA4TvQ@mail.gmail.com>
Subject: Re: [PATCH 4/8] riscv: Prepare ptdump for vm layout dynamic addresses
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_225500_380948_F0D28764 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 2:44 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> This is a preparatory patch for sv48 support that will introduce
> dynamic PAGE_OFFSET.
>
> Dynamic PAGE_OFFSET implies that all zones (vmalloc, vmemmap, fixaddr...)
> whose addresses depend on PAGE_OFFSET become dynamic and can't be used
> to statically initialize the array used by ptdump to identify the
> different zones of the vm layout.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/ptdump.c | 49 ++++++++++++++++++++++++++++++++++--------
>  1 file changed, 40 insertions(+), 9 deletions(-)
>
> diff --git a/arch/riscv/mm/ptdump.c b/arch/riscv/mm/ptdump.c
> index 7eab76a93106..7d9386a7f5c2 100644
> --- a/arch/riscv/mm/ptdump.c
> +++ b/arch/riscv/mm/ptdump.c
> @@ -49,22 +49,41 @@ struct addr_marker {
>         const char *name;
>  };
>
> +enum address_markers_idx {
> +#ifdef CONFIG_KASAN
> +       KASAN_SHADOW_START_NR,
> +       KASAN_SHADOW_END_NR,
> +#endif
> +       FIXMAP_START_NR,
> +       FIXMAP_END_NR,
> +       PCI_IO_START_NR,
> +       PCI_IO_END_NR,
> +#ifdef CONFIG_SPARSEMEM_VMEMMAP
> +       VMEMMAP_START_NR,
> +       VMEMMAP_END_NR,
> +#endif
> +       VMALLOC_START_NR,
> +       VMALLOC_END_NR,
> +       PAGE_OFFSET_NR,
> +       END_OF_SPACE_NR
> +};
> +
>  static struct addr_marker address_markers[] = {
>  #ifdef CONFIG_KASAN
>         {KASAN_SHADOW_START,    "Kasan shadow start"},
>         {KASAN_SHADOW_END,      "Kasan shadow end"},
>  #endif
> -       {FIXADDR_START,         "Fixmap start"},
> -       {FIXADDR_TOP,           "Fixmap end"},
> -       {PCI_IO_START,          "PCI I/O start"},
> -       {PCI_IO_END,            "PCI I/O end"},
> +       {0,                     "Fixmap start"},
> +       {0,                     "Fixmap end"},
> +       {0,                     "PCI I/O start"},
> +       {0,                     "PCI I/O end"},
>  #ifdef CONFIG_SPARSEMEM_VMEMMAP
> -       {VMEMMAP_START,         "vmemmap start"},
> -       {VMEMMAP_END,           "vmemmap end"},
> +       {0,                     "vmemmap start"},
> +       {0,                     "vmemmap end"},
>  #endif
> -       {VMALLOC_START,         "vmalloc() area"},
> -       {VMALLOC_END,           "vmalloc() end"},
> -       {PAGE_OFFSET,           "Linear mapping"},
> +       {0,                     "vmalloc() area"},
> +       {0,                     "vmalloc() end"},
> +       {0,                     "Linear mapping"},
>         {-1, NULL},
>  };
>
> @@ -304,6 +323,18 @@ static int ptdump_init(void)
>  {
>         unsigned int i, j;
>
> +       address_markers[FIXMAP_START_NR].start_address = FIXADDR_START;
> +       address_markers[FIXMAP_END_NR].start_address = FIXADDR_TOP;
> +       address_markers[PCI_IO_START_NR].start_address = PCI_IO_START;
> +       address_markers[PCI_IO_END_NR].start_address = PCI_IO_END;
> +#ifdef CONFIG_SPARSEMEM_VMEMMAP
> +       address_markers[VMEMMAP_START_NR].start_address = VMEMMAP_START;
> +       address_markers[VMEMMAP_END_NR].start_address = VMEMMAP_END;
> +#endif
> +       address_markers[VMALLOC_START_NR].start_address = VMALLOC_START;
> +       address_markers[VMALLOC_END_NR].start_address = VMALLOC_END;
> +       address_markers[PAGE_OFFSET_NR].start_address = PAGE_OFFSET;
> +
>         for (i = 0; i < ARRAY_SIZE(pg_level); i++)
>                 for (j = 0; j < ARRAY_SIZE(pte_bits); j++)
>                         pg_level[i].mask |= pte_bits[j].mask;
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

