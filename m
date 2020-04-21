Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280021B30D6
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 21:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nxA7LOrhaVraXBvW5EZQDf5sP2568aby3NQgKi/rtEk=; b=k5lJozn1t5f315L8c2aQOLSGl
	wPrnVdjvUeHYJixcFP4Oe4pBhb+gmtqkjrQnuT737B9TcEUfe3ZkjlIuvIWROnyBGUzC9DxaSyvNM
	NN8oeEbDil7twrP/zTv5QA8Dwbd7wASXD24rzE47ejuB8iAnql/tLBH5OCAueInAIeJOkOPpN3SA8
	QWTxvpiXhdIt/qjnG7tSDOTrsjWjYaJCqFfJCu1WnWzm9252LZ0vVq9G2YH2CH9hGen6YdpUt6n3o
	PvnYRaRMhVhBLsgalS4RTBPe2fdEb751OIOkrPMqDiFhDRkKxWQZxrwSHDoZGjpQkCqOHIBOjTXRB
	PJ8l03sAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQz0b-0000xn-6w; Tue, 21 Apr 2020 19:56:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQz0X-0000wM-A3
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 19:56:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so17977359wrs.6
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 12:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nxA7LOrhaVraXBvW5EZQDf5sP2568aby3NQgKi/rtEk=;
 b=g3DXoPxFMzhq1js1o55SKsQkqQSARbVSnyDXZ5baDq2noMfiMb0GQHjiVLsutX6j1f
 z7rsNNHM787luX/ZkJUQMi2X8iedk/MZ4T8rzk/C6blaU1JF2P8TeZrX7KFEZwpn7J9I
 vwcl8gHhvkyGv8zT4rwpeGB+kb794hpbuP4UzXCqgzCxgIpEzlGx2719wSnnPG2F+o2z
 3Rmo0R+4B3UgRvcr/qcPvFWAy5bx8hOjHhjAFFO1J/iBFyALuNoI9dRSX9lsC3RPSKvs
 z8aSkZo2iEnccymVC1H0XF9veHEsx8qkJYNGr0G2TGvQ6vhL1L6WtgqfT4JSUz4xo9Y+
 2btQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nxA7LOrhaVraXBvW5EZQDf5sP2568aby3NQgKi/rtEk=;
 b=j5rjpdBwn5943FA0HWe+vzVWaWuyfNywYTmtO+Pa+T4BGu16NjohxqQX+Xdq0KRcpX
 yu59yTedVpp7I0NhBKjmAuiVR6ZKqO8MUbNp8zbWlkikpsQv5b5Zz0sfQs7t7XeoYBCw
 +07Tr6jnZ6bW7DsVRG6pMqCSddpa4OFdSucdTQrixyVFEPFXOYgWADwXqjb4Yk4Ulk8q
 9x6ToExrgBjdV9Sq35XirkIJcs6Ug0GZ2Ep9UTJvCLOsPrXcFzX3aI8dYCgnU8f43lxh
 NXuKbU9vomMKX+xDo26walNamD2gwsloQ9pRhaPHgPsrPEImkMMGuRKx0wtQVOxIgfzD
 WWRQ==
X-Gm-Message-State: AGi0PuazIWQKCihaMUd9S46YECSdIx9AqoryTWJ1WTV16agqwXpte8l+
 wbR52+n5M0KWOEE89DsuqvxlcSy/7G65tfKh+ebR
X-Google-Smtp-Source: APiQypKas+dWx33766cSGaK14/R+FoQPMy+nBjdmp3DiOU6GsuXahuVTjA+kS/uiDTaE2acwrptTZmiawRpgmkiV2Zg=
X-Received: by 2002:a5d:544f:: with SMTP id w15mr27562877wrv.77.1587498994797; 
 Tue, 21 Apr 2020 12:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200421033336.9663-2-atish.patra@wdc.com>
 <mhng-613ec31b-83df-4a01-998c-e2d682787c1b@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-613ec31b-83df-4a01-998c-e2d682787c1b@palmerdabbelt-glaptop1>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 21 Apr 2020 12:56:23 -0700
Message-ID: <CAOnJCUKTYTb9_PbPzx26RrmAZojEucOCfpaCOQ6fo6mGOytStQ@mail.gmail.com>
Subject: Re: [v4 PATCH 1/3] RISC-V: Define fixmap bindings for generic early
 ioremap support
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_125637_552969_8009CC5D 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 12:52 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> I missed that there's a v4 now, so I'm jumping over here
>

Thanks. Just FYI: Ard has already pulled the patches 1 & 2 into efi-next.
So the v4 will only have 3 patches, mostly riscv specific stuff.

> On Mon, 20 Apr 2020 20:33:34 PDT (-0700), Atish Patra wrote:
> > UEFI uses early IO or memory mappings for runtime services before
> > normal ioremap() is usable. This patch only adds minimum necessary
> > fixmap bindings and headers for generic ioremap support to work.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Acked-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/riscv/Kconfig              |  1 +
> >  arch/riscv/include/asm/Kbuild   |  1 +
> >  arch/riscv/include/asm/fixmap.h | 18 ++++++++++++++++++
> >  arch/riscv/include/asm/io.h     |  1 +
> >  4 files changed, 21 insertions(+)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index a197258595ef..f39e326a7a42 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -68,6 +68,7 @@ config RISCV
> >       select ARCH_HAS_GCOV_PROFILE_ALL
> >       select HAVE_COPY_THREAD_TLS
> >       select HAVE_ARCH_KASAN if MMU && 64BIT
> > +     select GENERIC_EARLY_IOREMAP
> >
> >  config ARCH_MMAP_RND_BITS_MIN
> >       default 18 if 64BIT
> > diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> > index 3d9410bb4de0..59dd7be55005 100644
> > --- a/arch/riscv/include/asm/Kbuild
> > +++ b/arch/riscv/include/asm/Kbuild
> > @@ -1,4 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +generic-y += early_ioremap.h
> >  generic-y += extable.h
> >  generic-y += flat.h
> >  generic-y += kvm_para.h
> > diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> > index 2368d49eb4ef..ba5096d65fb0 100644
> > --- a/arch/riscv/include/asm/fixmap.h
> > +++ b/arch/riscv/include/asm/fixmap.h
> > @@ -30,6 +30,24 @@ enum fixed_addresses {
> >       FIX_TEXT_POKE1,
> >       FIX_TEXT_POKE0,
> >       FIX_EARLYCON_MEM_BASE,
> > +     /*
> > +      * Make sure that it is 2MB aligned.
> > +      */
> > +#define NR_FIX_SZ_2M (SZ_2M / PAGE_SIZE)
> > +     FIX_THOLE = NR_FIX_SZ_2M - FIX_PMD - 1,
> > +
> > +     __end_of_permanent_fixed_addresses,
> > +     /*
> > +      * Temporary boot-time mappings, used by early_ioremap(),
> > +      * before ioremap() is functional.
> > +      */
> > +#define NR_FIX_BTMAPS                (SZ_256K / PAGE_SIZE)
> > +#define FIX_BTMAPS_SLOTS     7
> > +#define TOTAL_FIX_BTMAPS     (NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
> > +
> > +     FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
> > +     FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
> > +
> >       __end_of_fixed_addresses
> >  };
> >
> > diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> > index 0f477206a4ed..047f414b6948 100644
> > --- a/arch/riscv/include/asm/io.h
> > +++ b/arch/riscv/include/asm/io.h
> > @@ -14,6 +14,7 @@
> >  #include <linux/types.h>
> >  #include <asm/mmiowb.h>
> >  #include <asm/pgtable.h>
> > +#include <asm/early_ioremap.h>
> >
> >  /*
> >   * MMIO access functions are separated out to break dependency cycles
>
> Just so it doesn't get lost (the patch is the same)
>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>



-- 
Regards,
Atish

