Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B7F201A21
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 20:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdRjq7c/C/ExAewHNaf0dxUTQHfeQV9fMMSHlW7P0AE=; b=gJ/EetdQMx+ZWX
	zkKAu0uNx+RlTre4twhQonqr6Qut5/dLYaQNI0ogcbSOK3ADwBnA3knK0mUx4ia94x967rs/SuedJ
	RdtTj5DydDu85ZRK7IWCUIqtL7ufqXVjP/BLSnHmRNX30CilhzSToTqG90TNyZa5T3cFUTvD0be/M
	eHO0Rz4EprbYMvyh51ZRj83LszcmftiwhHmrCexckLEnq26Py1fcX2lifbCnagY9VpXfWVriI67WU
	yrkVZ65OzRUrMaaCiSaivqya4oY2PE/D1p2TIgqjTvfub1oQPPiQhcdguhIxaqXXorcMIKT4qor50
	bn67L9/N+WBavmpqPsnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmLZX-0000Ce-D1; Fri, 19 Jun 2020 18:17:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmLZU-0000C7-CK
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 18:17:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id l17so9280111wmj.0
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jun 2020 11:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pdRjq7c/C/ExAewHNaf0dxUTQHfeQV9fMMSHlW7P0AE=;
 b=dS4o87kUMtecMW/ZQvrys54WL2/itW2B/vToYbHnOcr9N48VVNJ9xgI659JhyNw4PH
 HKSeh9slMa7USwzD2nDspF8ls9FiQhsIZLlqGaOFEtAXHzx8QHXyj9XelWR+FyreNNe8
 60KfPSUtf3c7d/Tf5MGr9q+/5uZjYMxSgW5r4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pdRjq7c/C/ExAewHNaf0dxUTQHfeQV9fMMSHlW7P0AE=;
 b=Dh7cZUqApsqeogv6dXlaZEGG8EFBZ/TFXV8OOTLavA6CSGWe8vWC4N8OUd/u/68r0g
 3Ja3tbepU2wY4CLQm4gUOrabuLfhUrzdv2ddeVdnJyQYDKy8MJ79JPCUs8KXbNhlJ3BV
 znM8PQEz+sYD8ZddyqvRaJ26BV/AdOIATR2OPNibxqSd1Bl1tlXgcCUlbZta8ya1lUHk
 7THOy6U6zR8RN8uzoqjKFsEbp+iq4hy5PS9c/F4g4nOJ++8YJ+XKp51UH5fLDLLdpxsz
 Vf47k+pks4Nl0XzIsQAMgU9/ZX1ARdm6sDgNuFWH+16aaYYCabIGyPakh4LlqMH1KByD
 k0xg==
X-Gm-Message-State: AOAM533HvYc4InZG5MoEGuh2ufTDKOi83AVQIUjXeEbOhj4wzvxaqhE4
 yRrWZTZs98vRuXHVYNIWsdMCwahoh1XJREAHFRx8
X-Google-Smtp-Source: ABdhPJwslo2aZ//Il/+AnJDXJ+Og9D8A3zuCJ0ipsamQcWxfOxHFCDRIthtT+4r3npxgym3eQiMm3dd4E8fsfjnrrW0=
X-Received: by 2002:a1c:f608:: with SMTP id w8mr4878392wmc.78.1592590618426;
 Fri, 19 Jun 2020 11:16:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200603153608.30056-1-alex@ghiti.fr>
 <20200603153608.30056-3-alex@ghiti.fr>
 <CAOnJCU+JSuOGbOmZW-vqb-A_qR7CJc=qG16FbgOLWSm1vhJH1A@mail.gmail.com>
 <23529a84-44a0-3c45-f16d-5a7ee528610d@ghiti.fr>
In-Reply-To: <23529a84-44a0-3c45-f16d-5a7ee528610d@ghiti.fr>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 19 Jun 2020 11:16:47 -0700
Message-ID: <CAOnJCU+s5JuNdPg_R-Cg2+WnMjR51DD0ekbRr84EFCig6=YyZA@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Use PUD/PGDIR entries for linear mapping when
 possible
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_111700_421650_EE94E5A6 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 9:28 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Atish,
>
> Le 6/18/20 =C3=A0 8:47 PM, Atish Patra a =C3=A9crit :
> > On Wed, Jun 3, 2020 at 8:38 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
> >> Improve best_map_size so that PUD or PGDIR entries are used for linear
> >> mapping when possible as it allows better TLB utilization.
> >>
> >> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> >> ---
> >>   arch/riscv/mm/init.c | 45 +++++++++++++++++++++++++++++++++---------=
--
> >>   1 file changed, 34 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >> index 9a5c97e091c1..d275f9f834cf 100644
> >> --- a/arch/riscv/mm/init.c
> >> +++ b/arch/riscv/mm/init.c
> >> @@ -424,13 +424,29 @@ static void __init create_pgd_mapping(pgd_t *pgd=
p,
> >>          create_pgd_next_mapping(nextp, va, pa, sz, prot);
> >>   }
> >>
> >> -static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t s=
ize)
> >> +static bool is_map_size_ok(uintptr_t map_size, phys_addr_t base,
> >> +                          uintptr_t base_virt, phys_addr_t size)
> >>   {
> >> -       /* Upgrade to PMD_SIZE mappings whenever possible */
> >> -       if ((base & (PMD_SIZE - 1)) || (size & (PMD_SIZE - 1)))
> >> -               return PAGE_SIZE;
> >> +       return !((base & (map_size - 1)) || (base_virt & (map_size - 1=
)) ||
> >> +                       (size < map_size));
> >> +}
> >> +
> >> +static uintptr_t __init best_map_size(phys_addr_t base, uintptr_t bas=
e_virt,
> >> +                                     phys_addr_t size)
> >> +{
> >> +#ifndef __PAGETABLE_PMD_FOLDED
> >> +       if (is_map_size_ok(PGDIR_SIZE, base, base_virt, size))
> >> +               return PGDIR_SIZE;
> >> +
> >> +       if (pgtable_l4_enabled)
> >> +               if (is_map_size_ok(PUD_SIZE, base, base_virt, size))
> >> +                       return PUD_SIZE;
> >> +#endif
> >> +
> >> +       if (is_map_size_ok(PMD_SIZE, base, base_virt, size))
> >> +               return PMD_SIZE;
> >>
> >> -       return PMD_SIZE;
> >> +       return PAGE_SIZE;
> >>   }
> >>
> >>   /*
> >> @@ -576,7 +592,7 @@ void create_kernel_page_table(pgd_t *pgdir, uintpt=
r_t map_size)
> >>   asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >>   {
> >>          uintptr_t va, end_va;
> >> -       uintptr_t map_size =3D best_map_size(load_pa, MAX_EARLY_MAPPIN=
G_SIZE);
> >> +       uintptr_t map_size;
> >>
> >>          load_pa =3D (uintptr_t)(&_start);
> >>          load_sz =3D (uintptr_t)(&_end) - load_pa;
> >> @@ -587,6 +603,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >>
> >>          kernel_virt_addr =3D KERNEL_VIRT_ADDR;
> >>
> >> +       map_size =3D best_map_size(load_pa, PAGE_OFFSET, MAX_EARLY_MAP=
PING_SIZE);
> >>          va_pa_offset =3D PAGE_OFFSET - load_pa;
> >>          va_kernel_pa_offset =3D kernel_virt_addr - load_pa;
> >>          pfn_base =3D PFN_DOWN(load_pa);
> >> @@ -700,6 +717,8 @@ static void __init setup_vm_final(void)
> >>
> >>          /* Map all memory banks */
> >>          for_each_memblock(memory, reg) {
> >> +               uintptr_t remaining_size;
> >> +
> >>                  start =3D reg->base;
> >>                  end =3D start + reg->size;
> >>
> >> @@ -707,15 +726,19 @@ static void __init setup_vm_final(void)
> >>                          break;
> >>                  if (memblock_is_nomap(reg))
> >>                          continue;
> >> -               if (start <=3D __pa(PAGE_OFFSET) &&
> >> -                   __pa(PAGE_OFFSET) < end)
> >> -                       start =3D __pa(PAGE_OFFSET);
> >>
> >> -               map_size =3D best_map_size(start, end - start);
> >> -               for (pa =3D start; pa < end; pa +=3D map_size) {
> >> +               pa =3D start;
> >> +               remaining_size =3D reg->size;
> >> +
> >> +               while (remaining_size) {
> >>                          va =3D (uintptr_t)__va(pa);
> >> +                       map_size =3D best_map_size(pa, va, remaining_s=
ize);
> >> +
> >>                          create_pgd_mapping(swapper_pg_dir, va, pa,
> >>                                             map_size, PAGE_KERNEL);
> >> +
> >> +                       pa +=3D map_size;
> >> +                       remaining_size -=3D map_size;
> >>                  }
> >>          }
> >>
> > This may not work in the RV32 with 2G memory  and if the map_size is
> > determined to be a page size
> > for the last memblock. Both pa & remaining_size will overflow and the
> > loop will try to map memory from zero again.
>
> I'm not sure I understand: if pa starts at 0x8000_0000 and size is 2G,
> then pa will overflow in the last iteration, but remaining_size will
> then be equal to 0 right ?
>
Not unless the remaining_size is at least page size aligned. The last
remaining size would "fff".
It will overflow as well after subtracting the map_size.

> And by the way, I realize that this loop only handles sizes that are
> aligned on map_size.
>

Yeah.

> Thanks,
>
> Alex
>
>
> >
> >> --
> >> 2.20.1
> >>
> >>
> >



--=20
Regards,
Atish

