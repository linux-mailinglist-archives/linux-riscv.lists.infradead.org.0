Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4531E9F3C
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 09:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBe6T/3LS4JSLNfgPLNajhJmTJr3qtIpazZpi3iyWb8=; b=Fx+UqPXictf9MK
	LxVrdijJO+VdqQHM2gSAgRvzigKFACTS1mleOtu6RAiI1hFZx7ieH871EtbM49gj0vutaqASqyCJm
	yG2sIXdeZbEVcTYlKG68Q3m/Alx3Lh1CLB7aQ1PThGtfXuNJy+mAajoKMFwIZpXVL6dLSG/HarQY3
	fUFRyzZOKUERfXdHkC9Q2k84a1DDyP/pmEkcoWXlEjH+5b05tfE1VbHAMT5KDnWpk4aBJS+rvMONV
	+1Ing2aDDjJS8iSMLGVR83k0/ttgjhHb9TpzD/4lvwfGcTwL7zYDJ7tMNagw3WITa6ylbpOlkvQ2m
	VsZrHx62Uh3k28BBihUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfes7-0002tx-3b; Mon, 01 Jun 2020 07:28:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfes4-0002tS-57
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 07:28:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id q2so6833336ljm.10
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 00:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BBe6T/3LS4JSLNfgPLNajhJmTJr3qtIpazZpi3iyWb8=;
 b=pG3QomC1RJfQ4wefhmHFJsR2DcluF0w7NrqzmzjFCBDjyhbn8Bm1Qs/nKW+yV4fVWP
 viOmsoUUjECk+au/UtbO5RFs4fAW7HQZclRm+WoeMHy9ZdOT1Uq3hy91yiI0ZkuN+9Lv
 Jvaq0NU4BPSCTHtV4gwJujfEDH4xqB/8HpX7VWKwFLGH0THyIxagWgNhUWeqCyWWo4Ic
 d0mWuoFUkFTmOZ4aEpN9f3p2M+844ry9YeNfcBFm13Q0ncT7hBeAcoZgrSD4j+myALgk
 BL6Ci/Fw1qIU67pAHk/S0APvRXW5AyyrXkYbu0qrHUt/tDbK66iRdi1WjdaMn/UiH1Wd
 PUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BBe6T/3LS4JSLNfgPLNajhJmTJr3qtIpazZpi3iyWb8=;
 b=kBMVQ+T9PeJIKu9xz33lx3kIj0TF91LElCDs/kr0TkbZs1ecb64zhKwrfdAq+q/byc
 rt0wuXNUk3WTRWH4fgDveHqKiaBNLsZxMTAFhRmyYZU7fue78zqhET3po25IZ6Sn6OQ2
 2HAcJfVpH1/IeoLM7dPX1tWsUcdJr56b0IlCrQkF1TpyDaAIzI4TDJCebKKO8PWEhq1T
 X2XaWOMmTSfN60tGbriOKWEw+Zmi37XfBRYVU/ZAKSv0ju1GjqVEqmIcYmO4Tcr9BfC1
 vw6kYwhr1EDhq8C+NYcObMrn7tuov51y3cBVSmwNBMJP4VA2cBmO2dQ5b33LMkIwq10O
 D+/Q==
X-Gm-Message-State: AOAM533Mo6l5WnZbPzJ/Kuev9TsL3Yh3yMp2uASaS+fbrMhBbkD/AhOj
 tGECF1CV6vg3oXuc2vo6AGxXc2KrxHA/DxHzkos=
X-Google-Smtp-Source: ABdhPJxHuJXB6Vn99Phe2TsgG6tcoUL6B/cEvgbi4CzCvlGLlZSYpicDYyOy/nYAXwxOdZuspbFik0jB6Fzn4xxehFY=
X-Received: by 2002:a2e:581a:: with SMTP id m26mr787094ljb.0.1590996508261;
 Mon, 01 Jun 2020 00:28:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200601050656.826296-1-anup.patel@wdc.com>
In-Reply-To: <20200601050656.826296-1-anup.patel@wdc.com>
From: Zong Li <zongbox@gmail.com>
Date: Mon, 1 Jun 2020 15:28:19 +0800
Message-ID: <CA+ZOyaixYnRkYGz8LpPdgx7P6s=ZxcXvJh=EUwq9BoY2zxO_=g@mail.gmail.com>
Subject: Re: [PATCH v2] RISC-V: Don't mark init section as non-executable
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_002832_196237_7DB33CC2 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zongbox[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Anup Patel <anup.patel@wdc.com> =E6=96=BC 2020=E5=B9=B46=E6=9C=881=E6=97=A5=
 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=881:07=E5=AF=AB=E9=81=93=EF=BC=9A
>
> The head text section (i.e. _start, secondary_start_sbi, etc) and the
> init section fall under same page table level-1 mapping.
>
> Currently, the runtime CPU hotplug is broken because we are marking
> init section as non-executable which in-turn marks head text section
> as non-executable.
>
> Further investigating other architectures, it seems marking the init
> section as non-executable is redundant because the init section pages
> are anyway poisoned and freed.
>
> To fix broken runtime CPU hotplug, we simply remove the code marking
> the init section as non-executable.
>
> Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
> Changes since v1:
>  - Updated free_initmem() is same as generic free_initmem() defined in
>    init/main.c so we completely remove free_initmem() from arch/riscv
> ---
>  arch/riscv/mm/init.c | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 736de6c8739f..fdc772f57edc 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -479,17 +479,6 @@ static void __init setup_vm_final(void)
>         csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_=
MODE);
>         local_flush_tlb_all();
>  }
> -
> -void free_initmem(void)
> -{
> -       unsigned long init_begin =3D (unsigned long)__init_begin;
> -       unsigned long init_end =3D (unsigned long)__init_end;
> -
> -       /* Make the region as non-execuatble. */
> -       set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
> -       free_initmem_default(POISON_FREE_INITMEM);
> -}
> -
>  #else
>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
> --
> 2.25.1
>
>

It looks good to me.
Reviewed-by: Zong Li <zong.li@sifive.com>

