Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8D21EA105
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bLtp0YyDRzt955Jj5huJGh76yo4hTbdxBBNkRxc6c+w=; b=YS2cWZJ7VgQZxRXMH/MGWWVGs
	nDRlvS5hYKuTh0NxuwrtVfYJbR9aV8EJJFCgdxJa34M42hQboNaK9C+Yy1PMmCZeMXXeEmiuBnwG9
	PJhOoCrWeiHbWxXz7mKuFTJnoE0SsBB8YmqAdH1Ih7XHnAtnPEFGHUO0FxWOClPC/3ZZIoP8rDwhq
	E4DjRCA+9GWP7kDH5hvIczKyHdrm/IACgXGHBu/ldahdkKduF6epDWoutLZiNAayPEzckqK9ZQpv0
	Agp5vcpcJamkqKR2xaLgOX6ZmYNPlXmvsQ2q9KSINjTAtZEmZv7suE4PFKko0VgN5VkVodZa+K3If
	eIsDSP+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgpY-0002Et-Ut; Mon, 01 Jun 2020 09:34:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgpV-0002Ea-9H
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:34:02 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F38620810
 for <linux-riscv@lists.infradead.org>; Mon,  1 Jun 2020 09:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591004040;
 bh=tEbGVazKhugocMY85YDdZyN7TPvYVvUeG93DMAI4G2w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BAcp30K4oeTWD1PwvW9bJqRgTOiE1IAIUUYxog5BDxKFNySwCkcHavthS9/QN61oR
 812kGeybxu2624vYqhZsv36hssDTJxCe6xJP+NpfLNfZWfP3V/60GRyLUAEOMMONPu
 Clvm/yzR640V/ipSmVRItkq5P79V3ic9HtkaRv5o=
Received: by mail-lj1-f180.google.com with SMTP id z6so7220388ljm.13
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 02:34:00 -0700 (PDT)
X-Gm-Message-State: AOAM532NCQDjuXxwPUlqrq6qzVa5UH+7sxl/+CuPQjXZfCjqCBC8GLyU
 JU4cjKBLwHUC195u3PZd0BO0SYEH/xKaydW/Hrs=
X-Google-Smtp-Source: ABdhPJy/RpQxQ4SUjNcKSGoepTVkyVoG7hxOl1MPIaJ2Hi/xkPjglZZn9MuH5WDyh0dxK32pWYs4hRIYnguWm1R+4ME=
X-Received: by 2002:a2e:611a:: with SMTP id v26mr8847684ljb.265.1591004038570; 
 Mon, 01 Jun 2020 02:33:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
 <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
 <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
 <a5f1346544aec6e6da69836b7a6e0a6e@kernel.org>
 <CAAhSdy2fJ1cd2OjAWODOmSbkWUBfvvr4rvsTqh4qNxZjTTKo5A@mail.gmail.com>
 <e315f76b06b7b0935ebee867c04f364e@kernel.org>
 <CAAhSdy3-dr1URn1mGu3n9D-h+wjsU18nbWPYMRNAtitMa58rwA@mail.gmail.com>
In-Reply-To: <CAAhSdy3-dr1URn1mGu3n9D-h+wjsU18nbWPYMRNAtitMa58rwA@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 1 Jun 2020 17:33:47 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSzQzEHofrhusXM6Yx69GzmptCGGe4xdDci4-Xj12MGBw@mail.gmail.com>
Message-ID: <CAJF2gTSzQzEHofrhusXM6Yx69GzmptCGGe4xdDci4-Xj12MGBw@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_023401_363633_D981B690 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Anup,

On Mon, Jun 1, 2020 at 12:09 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Sun, May 31, 2020 at 4:23 PM Marc Zyngier <maz@kernel.org> wrote:
> >
> > On 2020-05-31 11:06, Anup Patel wrote:
> > > On Sun, May 31, 2020 at 3:03 PM Marc Zyngier <maz@kernel.org> wrote:
> > >>
> > >> On 2020-05-31 06:36, Anup Patel wrote:
> > >> > On Sat, May 30, 2020 at 5:31 PM Marc Zyngier <maz@kernel.org> wrote:
> > >>
> > >> [...]
> > >>
> > >> >> >       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
> > >> >>
> > >> >> Why do you need to both disable the interrupt *and* change the
> > >> >> priority
> > >> >> threshold? It seems to be that one of them should be enough, but my
> > >> >> kno9wledge of the PLIC is limited. In any case, this would deserve a
> > >> >> comment.
> > >> >
> > >> > Okay, I will test and remove "disable the interrupt" part from
> > >> > plic_dying_cpu().
> > >>
> > >> Be careful, as interrupt enabling/disabling is refcounted in order
> > >> to allow nesting. If you only enable on CPU_ON and not disable
> > >> on CPU_OFF, you will end-up with a depth that only increases,
> > >> up to the point where you hit the roof (it will take a while though).
> > >>
> > >> I would keep the enable/disable as is, and drop the priority
> > >> setting from the CPU_OFF path.
> > >
> > > The PLIC threshold is like GICv2 CPU interface enable/disable.
> >
> > Looking at the documentation[1], that's not really a correct analogy:
> >
> > - The PLIC is far removed from the CPU, and is more akin a GICv3
> >    distributor. The INTC itself is more like a GICv3 redistributor,
> >    as it deals with local interrupts only. I don't see anything
> >    in the RISC-V architecture that actually behaves like a GIC
> >    CPU interface (not necessarily a bad thing...).
> >
> > - The threshold register is not an ON/OFF, but a priority mask,
> >    similar to the GIC PMR (except that the PMR lives in the CPU
> >    interface and affects all interrupts targetting this CPU while
> >    this only seem to affect PLIC interrupts and not the INTC interrupts).
> >    You may be using it as an ON/OFF for now as you don't support
> >    multiple priorities yet, but that's just a SW thing.
>
> Yes, your analogy is correct.
>
> BTW, PLIC does not handle MSI and does not have virtualization support
> pass-through interrupts. We will most likely see a new RISC-V interrupt
> controller spec for these capabilities.
>
> Also, the PLIC spec is now owned by RISC-V foundation (not SiFive) so
> we will have to rename the driver to "irq-riscv-plic" and will have a new
> generic compatible string "riscv,plic-1.0.0". One of us (me or Palmer) will
> send separate patches for this renaming. I hope you will be fine with this??
> (Refer, https://github.com/riscv/riscv-plic-spec)

That's great, we follow riscv-plic in hardware, but don't want to use
sifive string in dts.

Acked & Thx for the job.

-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

