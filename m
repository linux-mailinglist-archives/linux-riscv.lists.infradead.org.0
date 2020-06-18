Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6125A1FF8F0
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jun 2020 18:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xm5Jg43FilpswqvlT/LasuTbExZ6o36Xm3N03sMVNLo=; b=ToI2HhWAbvCitkgGaf4FqJVnW
	ggEytZdyX3g7XS4AEjVDFwHKOUGO5fwYZKFQ6YVbcL1PsicZ9nyJYd2w1avqFC3nhGcTjVDhCV0IM
	MRyYPI1tY3Z4d5pNc/85RRIk9bRwt3LU5pc+n4CjDF3quQFwkA+JZvgXxzsOiJQGcwA6gCKIs3gMR
	/3uKyGMdBYxDL2vxoOTRJld0xG488NoKLVn4HSSQJg9PJIO/2kDtpFT1VBZDygbYWfp0/ksQeKFH2
	rCxcUrdgUg6n6s2CTdzolL2W1EBbxjLa9EdCfxINQShYS6Wld78bTFwff6Cpp6znUx7FyxqAk2MaY
	/RpsKb24w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlxBP-0004UE-LJ; Thu, 18 Jun 2020 16:14:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlxBM-0004Tr-Lx
 for linux-riscv@lists.infradead.org; Thu, 18 Jun 2020 16:14:30 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA1DC2080D
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 16:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592496868;
 bh=tq3Swh2vJrfd4M/EWYaz48ua0+q7LQLIa8V4XY7kzfQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BxR7TVe2PA9FrgOXIXdtUt47g06vY98oNcyJNNsBYM5ECZzZH2gcUuYZv4ktjVCob
 MmqY6v9br9L1cATzWwh7l5Ygi8TSS8C5XV1IFoIyFymgS+WImroFDBexrpSIAPBqHj
 dy5wjnphKEU12Z/eIgtvaH5hfTHDdGuVqBz07B9M=
Received: by mail-lf1-f45.google.com with SMTP id o4so3820226lfi.7
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 09:14:27 -0700 (PDT)
X-Gm-Message-State: AOAM530/E/NsyMHiKWGoXEdSmgnvYGgcIZI8yb402ZkGU9dkOf8ZKNOU
 1mjItnunwMcIDQ3Vp2TKeKqaqhrdlcCWwlfujoQ=
X-Google-Smtp-Source: ABdhPJxZBeR+sNLcPCWc9ygkfJYyoWDJqJZzzMET4n7hTO7kxYBU8gEStsxUdY+6CAXPKLG2qO3uYKYPGngpXBs307Q=
X-Received: by 2002:a05:6512:52a:: with SMTP id
 o10mr2757203lfc.137.1592496866114; 
 Thu, 18 Jun 2020 09:14:26 -0700 (PDT)
MIME-Version: 1.0
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-3-me@packi.ch>
 <20181114003730.06f810517a270070734df4ce@kernel.org>
 <a6abc4ce-4398-5ca6-992b-efb31e01c5ca@packi.ch>
 <20181115004141.5ed772834fc6bdf3467f244e@kernel.org>
 <CANXhq0qWwKRrz80Q3LSeQu-cH19otCF1my6dDGDxH0Q5j1RYYw@mail.gmail.com>
 <9cdd84b5-6c81-9bfa-5d35-6645f542f71e@packi.ch>
 <CANXhq0peZCWZsh37zZVzoi7spSzTfz7v4H5AytiAENKJdWK_tA@mail.gmail.com>
 <CANXhq0r5+BjsJ8jFtkWcm_1qPPQnLyZ5THNdPsxU568FNNa0XA@mail.gmail.com>
 <CAEn-LTrm6__-v7FmCRtNq2zm8up7O18wNhZmBmGwASj-Oy87qA@mail.gmail.com>
 <CAJF2gTTcj=bfK-KvE9U5EsLX0wFPEOw+PvZuTLN_rT5u_a5X1g@mail.gmail.com>
 <20200617235443.4110b4ef31150722dda7973a@kernel.org>
In-Reply-To: <20200617235443.4110b4ef31150722dda7973a@kernel.org>
From: Guo Ren <guoren@kernel.org>
Date: Fri, 19 Jun 2020 00:14:14 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSEV37ZnXS_VF_OT1tmxzER98XzDswoM2fCZ4XRoq6uzg@mail.gmail.com>
Message-ID: <CAJF2gTSEV37ZnXS_VF_OT1tmxzER98XzDswoM2fCZ4XRoq6uzg@mail.gmail.com>
Subject: Re: [RFC/RFT 2/2] RISC-V: kprobes/kretprobe support
To: Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091428_760094_96C6B4AE 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Patrick_St=C3=A4hlin?= <me@packi.ch>,
 Albert Ou <aou@eecs.berkeley.edu>, Anders Roxell <anders.roxell@linaro.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Masami,

On Wed, Jun 17, 2020 at 10:54 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>
> Hi Guo and Patrick,
>
> On Wed, 17 Jun 2020 20:58:32 +0800
> Guo Ren <guoren@kernel.org> wrote:
>
> > Hi Patrick,
> >
> > I'm the author of csky's kprobe & uprobe, please ref to kprobe [1], uprobe [2]
> >
> > 1: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/csky?h=v5.8-rc1&id=33e53ae1ce413a081254e686d9b27cc1b3585e2f
> > 2: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/csky?h=v5.8-rc1&id=8f6bb793b2be82f1f73bfb416486f156f70b4314
>
> Thanks for the porting!
>
> >
> > May I continue your patches to finish the work? I'll keep the primary
> > author's name of you with the patches which you've done.
> >
> > Most of the instructions' emulation codes will be deprecated, but the
> > rest is ok. Maybe you should finish executing out of the slot first
> > and then implement pc-related instructions' emulation.
>
> I can review the patch if you update it. Anyway, my major concern was the
> self-modifying code, others are minor points.
Great! I'll start the job this week. Frankly, csky's haven't been
reviewed enough and I could get some new feedback from riscv's job.

-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

