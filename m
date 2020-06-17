Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB301FC34F
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 03:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AsgAnL6vhV5Xzd0aA3Mp0TLZjLw3nIiYuNuaNpuY8k=; b=UpfRJOonBGVLC4
	d1A0fO/J8cQ/VCQQki1c6gH7Mc2qbybkvvWlnzaLcNgDPmTEHJUj3cSA7rCe4b04jqZmi3ZwWeVae
	KSd8ScY8MKyadnQHFmkh/R3iwURJRiBHeg0vcr4y9ofxqA7JJsKPLQwl5wGEvAFmGvah1jQciOdZ7
	c8kzfLZsJQDdxUq9/X5cPiSq61P5q4+QJ3S4EEWz03NUGt9N77N3Ju25eedfnfN85H89nbqLN8wh0
	YCadvAbubbo2QlTOBB7vRfqDlXPy3x4+cvsXWxcmyGunbflmeGze7lEVODZv3TB1feuzAVg/TD1oh
	v76FzKQmdo446ES8Mr7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlMnz-0000bs-0M; Wed, 17 Jun 2020 01:23:55 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlMnu-0000aq-Ss
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 01:23:52 +0000
Received: by mail-ot1-x341.google.com with SMTP id n5so344140otj.1
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 18:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9AsgAnL6vhV5Xzd0aA3Mp0TLZjLw3nIiYuNuaNpuY8k=;
 b=RLz03s2u0fI8CB5UdDeXQMvATqUNPI6WWiN4AFysmNnCcBCxnO5dVpdHFsmGoecjeW
 zMeC/q2/KawWuuwNB7NPpbe/JfJ/a/F5qefEJ+mCwcM/yYzDV9vlkCTq0CJunb7ACB7i
 1Gn4qwHRG9mP/wqG7cNi7dmkZ93dr69qkKkSwQZ7nwfGlTf6ddDgQGnPqM/X2C1D35Rv
 SWIMXx0cPbBzC4o7JCpbFBNjCmKx3vOVlvQaVjE/ydcQcexR6PY7KeoHFlgLUHhRytZs
 oRef5WaFmtuRseJ8Y1Ad84Cr3OZ+m/sNK8Fo7mp9oMr61RAnCoxwOR82ZFk0ERayjtqZ
 B3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9AsgAnL6vhV5Xzd0aA3Mp0TLZjLw3nIiYuNuaNpuY8k=;
 b=jXWgEIY2bXXIinVwhZi9hRiqN/cSSOKIevgKA99t/LaFDjGyjz9t2dKsMOhIGGmYAn
 C9zihWLLaOLJNlhV9ijNgaFxAkjACWyQ8U2f8UEmv3hH1m/883A6ywOZPxYjykdja9dV
 gpPTvHQ/H5wpfhtlKWwkRBgUpmLGsS4JBC6oQR1dVWovutY/99vipEHZ4ZXlNAAgjG58
 Nal0QLulVjBv/GgnUyt1CKtBGn1rq233Y4unfzlsgdawG/476VIp5xpjXm2rKnw6MP8U
 yF+uYfzMmr+mGxOayem3suhAvJ90IB07dRx/fGl7HJb34irD7e0LOoWZfbdQmDmSZsRv
 gKiw==
X-Gm-Message-State: AOAM531XCRSgEImtz0ZnomEbfOU34vrBt6Cacryi/wIWQd7XaPlwJA8C
 O0MHkzJVnMd/3r3xV1jgQa2T5yULliJXowWI0+XiKA==
X-Google-Smtp-Source: ABdhPJwqEJbTanzqtXQoNg8UHNHvITL3bc70fzv5gCn/Q2NV4ZxCqW+erY+msju9o1PgbmZJLuJ88DA0cWgPl5Ehb9A=
X-Received: by 2002:a9d:3a36:: with SMTP id j51mr4895144otc.129.1592357028048; 
 Tue, 16 Jun 2020 18:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1592292685.git.zong.li@sifive.com>
 <063fab26f4c15bf5b833b57fa818749afa7811d4.1592292685.git.zong.li@sifive.com>
 <0e1d7a917332b90666417ac0508f8a6d@mailhost.ics.forth.gr>
In-Reply-To: <0e1d7a917332b90666417ac0508f8a6d@mailhost.ics.forth.gr>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 17 Jun 2020 09:23:37 +0800
Message-ID: <CANXhq0o9pjDN9k1GZC-6Rve9taR7jA1bmZk4p61bZqZXSkdotw@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: Register System RAM as iomem resources
To: Nick Kossifidis <mick@ics.forth.gr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_182350_970003_DDDBA61F 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 7:52 PM Nick Kossifidis <mick@ics.forth.gr> wrote:
>
> =CE=A3=CF=84=CE=B9=CF=82 2020-06-16 10:45, Zong Li =CE=AD=CE=B3=CF=81=CE=
=B1=CF=88=CE=B5:
> > Add System RAM to /proc/iomem, various tools expect it such as kdump.
> > It is also needed for page_is_ram API which checks the specified
> > address
> > whether registered as System RAM in iomem_resource list.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  arch/riscv/mm/init.c | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index f4adb3684f3d..bbe816e03b2f 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -517,6 +517,27 @@ void mark_rodata_ro(void)
> >  }
> >  #endif
> >
> > +void __init resource_init(void)
> > +{
> > +     struct memblock_region *region;
> > +
> > +     for_each_memblock(memory, region) {
> > +             struct resource *res;
> > +
> > +             res =3D memblock_alloc(sizeof(struct resource), SMP_CACHE=
_BYTES);
> > +             if (!res)
> > +                     panic("%s: Failed to allocate %zu bytes\n", __fun=
c__,
> > +                           sizeof(struct resource));
> > +
> > +             res->name =3D "System RAM";
> > +             res->start =3D __pfn_to_phys(memblock_region_memory_base_=
pfn(region));
> > +             res->end =3D __pfn_to_phys(memblock_region_memory_end_pfn=
(region)) -
> > 1;
> > +             res->flags =3D IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
> > +
> > +             request_resource(&iomem_resource, res);
> > +     }
> > +}
> > +
> >  void __init paging_init(void)
> >  {
> >       setup_vm_final();
> > @@ -524,6 +545,7 @@ void __init paging_init(void)
> >       sparse_init();
> >       setup_zero_page();
> >       zone_sizes_init();
> > +     resource_init();
> >  }
> >
> >  #ifdef CONFIG_SPARSEMEM_VMEMMAP
>
>
> I already have a patch for registering System RAM as an iomem resource
> on my kexec/kdump series. Since I don't care about System RAM regions
> being accurately exposed to userspace (I parse the current device tree
> instead) I just use memblock_start_of_DRAM/end_of_DRAM. This approach
> from arm64 codebase is better since it also handles the case of sparse
> memory regions but in order to be useful for kdump we need to add the
> various segments of the kernel image as child nodes to their respective
> region for kexec-tools. I'll re-spin my patchset anyway so I'll extend
> it to better handle System RAM regions.

OK, great, I would remove this patch here and only reserve the second
patch in the next version.

