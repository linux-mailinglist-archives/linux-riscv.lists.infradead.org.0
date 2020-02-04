Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9833F1518FC
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 11:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwSxbbkPIBYHc4KNEOWbSG6XoUaHDyOaGDuGmIATNoA=; b=isPxWkdTQ1pqds
	m1sdXwDlK4r+FXUHe6xhYMeffA+1iuZNvRGJB+4iXg1rsW86KStoUDhi7ao10sFVpv25ry4+TMLct
	W2T14pbUu0QvgZDsbiBCYpGlofWe3i71+Vf7HD7qgswA9mOavwkZ3bj8L5t8MpSbDHkSIDaxa2SL2
	2sQ9NYyZNY9+2fuZy+TusNNAui4Mu57cq9aiOuauuj3J+nil52OqJsGxZK7Gb8e8x0KaSUld+xMOc
	fx2YUd8i1odJaWjf93TzcBeLBBRe3DwOd/wmPlT/dcLGoQm68/cQW56ENzoJgmOS5wKepX1nDerqx
	ybYaniTtbOxrjDfC6fHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyviy-0005oh-FX; Tue, 04 Feb 2020 10:46:32 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyviu-0005oI-JG
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 10:46:30 +0000
Received: by mail-qv1-xf42.google.com with SMTP id db9so8316141qvb.3
 for <linux-riscv@lists.infradead.org>; Tue, 04 Feb 2020 02:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nwSxbbkPIBYHc4KNEOWbSG6XoUaHDyOaGDuGmIATNoA=;
 b=QsJopMHkXNGmEnf3csv8j61E3jKBil7d/D5ldiMOH50cBybwnbSkQnqYg5/To7+MX4
 5GSMr2woTpJSTbhFopAIwuHkJ5UZ8vaQR+nmHSGxGskKtSc8kz/OeyIMwd+FpsOdvFB0
 3nnKThn1vygXFpFXp1eTkg+xnl5gcsJLUj9WMECvdIoIMJunTmNaDV4n8S0EJ5CRlf8d
 Fir1VkoPe+3j9g2QJmvchW5/sSKi40MNiK8j8r3/jZbv6KfMeYs7TzU9cu67HnEZ6OPO
 rsoihzOl0Obs2ygNP+VTkVQaF36k5fZodsFf9HFsEMFxXuAGPjb693LBdpXCDPm0ndQb
 RVxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nwSxbbkPIBYHc4KNEOWbSG6XoUaHDyOaGDuGmIATNoA=;
 b=LL6SXs/TJF/tad0yBDhOLXWNSUVI09o7CiGKfOdf0kOron5tIlv39vv7ZgXN6hlVAE
 zF0Rw+k2yhRr6mHXwiF7VjESO0ge/+B7vGzpoT0LRidEmQjZe4+xT5NoICfVagM2cQ5e
 cDz/zc4e8jQOI76oRo89rHpydFwb3lPLEBSvSSv1SnDw3YUdC+HEwO+wfebW7Puq7Fd2
 ZSSGUOt6HLxRInsyA4oI6H4ileNF8Gl+xvOktLOv1yXN6Ozj3NTHw2ORmO5sVT5Sic7t
 f31WQAlGIiFdIk02xgPOWeRDB3o+jdq/iDTREeDBEBtOTVkpVIBy3Z5h58eAbDWZTkOf
 +pvw==
X-Gm-Message-State: APjAAAWy2v0Ye4ZQxePubozZ0TkSpZg5Z5utoLdEHkUzB+pSnFnXvh27
 1rNTHTU8seCp9/SBmdY41K2DdHNboBzI0t4OkzejVw==
X-Google-Smtp-Source: APXvYqy9jakDWxGk6XPSYqsv5yqRg6npsJmZBnYoqZ7yCFEU3OqyVuqfUJUiGKbKy5H8n/Dzi3dNEh0Lnx9AwgX8ARg=
X-Received: by 2002:ad4:4dce:: with SMTP id
 cw14mr27468601qvb.162.1580813186504; 
 Tue, 04 Feb 2020 02:46:26 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
 <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
 <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
 <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
 <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
 <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
In-Reply-To: <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Tue, 4 Feb 2020 18:46:15 +0800
Message-ID: <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_024628_668000_0DD2E51E 
X-CRM114-Status: GOOD (  33.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul@pwsan.com>,
 Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 5:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
>
> On 2/4/20 8:19 AM, Zong Li wrote:
> > Alex Ghiti <alex@ghiti.fr> =E6=96=BC 2020=E5=B9=B42=E6=9C=884=E6=97=A5 =
=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=882:50=E5=AF=AB=E9=81=93=EF=BC=9A
> >> Hi Zong,
> >>
> >> On 2/3/20 10:55 PM, Zong Li wrote:
> >>> Vincent Chen <vincent.chen@sifive.com> =E6=96=BC 2020=E5=B9=B42=E6=9C=
=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=886:04=E5=AF=AB=E9=81=93=
=EF=BC=9A
> >>>> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
> >>>> <romain.dolbeau@european-processor-initiative.eu> wrote:
> >>>>> On 2020-02-01 14:59, Alex Ghiti wrote:
> >>>>>> Why restrict to 128M whereas we have 2GB offset available to the e=
nd of
> >>>>>> the kernel ?
> >>>>> Isn't that 2 GiB offset to whatever the module requires in the kern=
el,
> >>>>> rather than to the end of the kernel space?
> >>>>>
> >>>>> Is there some guarantee that symbols accessible by modules are at t=
he
> >>>>> end of the kernel? If so, wouldn't the maximum offset for this patc=
h
> >>>>> still be (2 GiB - <total size of accessible symbols>)?
> >>>>>
> >>>>> Cordially,
> >>>>>
> >>>>> --
> >>>>> Romain Dolbeau
> >>>> It took me some time to find the root cause of this problem, please
> >>>> allow me to share some observations before the discussion.
> >>>> The root cause of this issue is that the percpu data is declared as =
a
> >>>> static variable. The "static" attribute will make the compiler think
> >>>> that this symbol is close to the .text section at runtime. Hence, th=
e
> >>>> compiler uses "auipc" to access this percpu data instead of using GO=
T.
> >>>> In this case,  the access range is limited to + -2G. However, in
> >>>> practice, these percpu data are placed at a pre-allocated region
> >>>> created by the memblock_allocate() function. In other words, the
> >>>> distance between the pre-allocated region (>PAGE_OFFSET ) and the
> >>>> .text section of the kernel module (in VMALLOC region) is much large=
r
> >>>> than 2G.
> >>>> I agree that the original patch,
> >>>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b92=
17c96e1589,
> >>>> can solve most cases. However, I do not think the patch still works =
if
> >>>> the kernel module region is determined by _end or <total size of
> >>>> accessible symbols>. The reason is that the pre-allocated region for
> >>>> module percpu data comes from the memblock function at runtime. Henc=
e,
> >>>> we cannot know the actual address of this region at compile-time, an=
d
> >>>> this issue probably may occur again in this case.
> >>>>
> >>>> By the way, I think maybe we can refer to the implementation of MIPS=
.
> >>>> 1. For general cases, we can use this patch to solve this issue.
> >>>> 2. For a large kernel image (>2G) or enabling the KASLR feature, we
> >>>> may need a new code mode to deal with this issue.
> >>>>
> >>> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
> >>> enabled. Unless we limit the randomized range in small area, the
> >>> module region start address will be bigger than VMALLOC_END.
> >>
> >> Actually, the relocatable patch I proposed already moves "everything" =
up
> >> at the same
> >> time: the kernel itself but also all the "zones" below (vmalloc,
> >> vmemmap, fixup...etc)
> >> since all those zones are defined from PAGE_OFFSET that is now dynamic=
.
> >> So the modules
> >> ill remain at the same offset to the kernel, unless explicitly
> >> randomized in the vmalloc zone.
> >>
> > OK, it makes sense. The module region moves along with kernel seems to
> > stay away from the concern I mentioned.
> >
> > So now, the problem is that the pre-allocated region of percpu data is
> > located after _end symbol as Vincent mentioned, the 2G distance seems
> > to be too far for module region start address. (i.e. &_end - 2G).
>
>
> Actually, I don't understand this issue: we are limited to addressing
> symbols within +/- 2GB
> from PC. So as long as the percpu symbol exists in the kernel, it is
> below _end and then we don't
> care that its content is initialized dynamically, as long as we can
> 'compute' its address from PC,
> right ?

In this case, the static percpu symbols of this issue are declared in
the kernel module, not in the kernel image.
When kernel loads the kernel module, in general, it continuously
places all the module sections in the VMALLOC memory area. However,
the ".data..percpu" section is an exception. The kernel places the
".data..percpu" section in a pre-allocated memory region. This region
is used to place the percpu data instances for each CPU and is created
by the memblock(). Hence, the instance of these per-cpu symbols is
above the _end.  In this case, if we make the module region locate at
[_end-2G, PAGE_OFFSET], the distance between these percpu symbols (its
address >_end) and module text section will probably exceed the 2G
limitation.

>
> Can you point out where I can take a look at this pre-allocated region
> for percpu data please ?
>
In mm/percpu.c, you can find how the kernel allocates the percpu data
region during the initialization phase.
In kernel/module.c's simplify_symbols function, you can find kernel
treats .data.percpu section as an exception when loading module.

If I have any misunderstandings, please let me know. Thanks

Best regards,
Vincent

> Thanks,
>
> Alex
>
>
> >
> >>> So if we
> >>> divide a region into module use, we also have to provide module
> >>> randomization at the same time when KASLR is enabled. It good to me i=
f
> >>> there is a new code model to use GOT for static variable, everything
> >>> will be easy.
> >>
> >> GOT usage seems indeed to be easier, but it seems a bit overkill to me=
:
> >> arm64 already
> >> uses the range I proposed for modules (arch/arm64/kernel/kaslr.c,
> >> module_alloc_base
> >> definition).
> >>
> >> Anyway, even if GOT is chosen, it won't be anytime soon right ? So we
> >> could, for the moment,
> >> constraint the modules to be close to the kernel with any range you li=
ke
> >> and that will still
> >> work with our implementation of KASLR.
> > Yes, I'm with you on that, we need a resolution in kernel first.
> >
> >> It seems urgent to fix those modules loading issues for 5.6.
> >>
> >> Alex
> >>

