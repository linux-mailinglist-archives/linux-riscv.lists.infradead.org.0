Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9471519E0
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 12:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/K3KCtHKEgf67s7TzM+ph7DZr6IhA3/L+p2p8mdLqo4=; b=P4Ht8qO2OINwwG
	ayWlo5LTv2idYdZcyyvU//12ZMaPgXLJlgk5n8QqC0qY/eJMReyWKhWeLnhDQzKNgY05oZbxtPNWP
	2RldOxJrwHz7r8YR+e/YS5QJJDpQJp1IMbsE08BD1/bf82uH1AXQNv+P6luVeAa8PoZmfLIoYIM6s
	XegT0VauRxP7ApXXgsl/vtjAPV74qeyDqZ0bGRMnTkOKUxNQp7ivoAO+KSMZRo6n5umPWSvQy2WVy
	5ONk/ATkD3mtCy80hGw86XvWUjCrMBT2IJcpe3AUbKO2Da88hpEZL4eL1S2jv9PWTtVyvS+AB/vZz
	FvNxf96VnWxd4aBNVu/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iywQH-00070R-Ct; Tue, 04 Feb 2020 11:31:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iywQC-0006yo-Dp
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 11:31:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id s144so2003554wme.1
 for <linux-riscv@lists.infradead.org>; Tue, 04 Feb 2020 03:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/K3KCtHKEgf67s7TzM+ph7DZr6IhA3/L+p2p8mdLqo4=;
 b=mx4diwvql/iv0vLRVGNaDos+0LUbMpmh06TgAPVquHPDu2wPJsz7l/oCo6KZgFrLD/
 dYf5K23Og4l/9Sf1CRSaHEpexNauqSs+aW01/kdw5JseiC/k7ORinjkLdrMRdwJsbL1R
 lPVkmtla0Zr1+VM4zl0ZUV1G/66RkPdn3NODmsUQmEda/dtFjNEDRBLcOaq9sd8cGGMF
 J3Gpxgc1vboUCRDa0boyMDyipCRhCsEcSgm9z2HTkzENT8Bl7pnaJclerAe13w5BlQfU
 g2i9G7NdK1btb+lwJdBqh+OadrBSQklM7m7GxT4uQkMTLoDVmujmz+NwswbKHtCTkrS6
 OWOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/K3KCtHKEgf67s7TzM+ph7DZr6IhA3/L+p2p8mdLqo4=;
 b=ZCaEnPVl2ge7THzY6wVchXkF3YuEIze0xqfUa+P4Grp/QhSLdmFu1o8lfJuJzmPT4R
 wUiilteEQJkJj41vYN5TVmjqmIIsriG2OW9MpFp3boAwgEoO9/fZoINsC/hzUdQLBcBl
 YskimF1gQUK4qTxzr1wbJ2aarDhZhCxqBG0hzZSohPJ/I57RzZRq9zN+V3YW1I2C6RX1
 kZk3uWP7y6Y9E4QMxpxZucxX0z2qjRutmud+tYNYola+iCqVAfZNL6uZVuiTx2DMimgk
 LnB3+nHAwkBK3UJd2a1HHQkRf33/8PG5XSATKiaAEuBPEuNimlU/S4CY7sgDFu967/Yv
 xGUA==
X-Gm-Message-State: APjAAAUAPDXctBlUQbB9K1XOJcqFuMwVES81EEnxsaeMBvwbzRJ4YEpf
 GbqTtCPDhU+Se2U4eplfqgoP9vdTYUWX/eOHcnBZ8g==
X-Google-Smtp-Source: APXvYqws3gTd6d3dXajrQgANoptt4OBw2FQ3vPLcJeNUg7H0RJaXlXazazIR5Ro3DPOezM78Jfc0nqSj7kCtTLt1JuQ=
X-Received: by 2002:a1c:bdc6:: with SMTP id n189mr5553993wmf.102.1580815869545; 
 Tue, 04 Feb 2020 03:31:09 -0800 (PST)
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
 <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
In-Reply-To: <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 4 Feb 2020 17:00:58 +0530
Message-ID: <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_033113_494622_70A4A061 
X-CRM114-Status: GOOD (  32.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul@pwsan.com>, Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 4:16 PM Vincent Chen <vincent.chen@sifive.com> wrote=
:
>
> On Tue, Feb 4, 2020 at 5:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
> >
> >
> > On 2/4/20 8:19 AM, Zong Li wrote:
> > > Alex Ghiti <alex@ghiti.fr> =E6=96=BC 2020=E5=B9=B42=E6=9C=884=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=882:50=E5=AF=AB=E9=81=93=EF=BC=9A
> > >> Hi Zong,
> > >>
> > >> On 2/3/20 10:55 PM, Zong Li wrote:
> > >>> Vincent Chen <vincent.chen@sifive.com> =E6=96=BC 2020=E5=B9=B42=E6=
=9C=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=886:04=E5=AF=AB=E9=81=
=93=EF=BC=9A
> > >>>> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
> > >>>> <romain.dolbeau@european-processor-initiative.eu> wrote:
> > >>>>> On 2020-02-01 14:59, Alex Ghiti wrote:
> > >>>>>> Why restrict to 128M whereas we have 2GB offset available to the=
 end of
> > >>>>>> the kernel ?
> > >>>>> Isn't that 2 GiB offset to whatever the module requires in the ke=
rnel,
> > >>>>> rather than to the end of the kernel space?
> > >>>>>
> > >>>>> Is there some guarantee that symbols accessible by modules are at=
 the
> > >>>>> end of the kernel? If so, wouldn't the maximum offset for this pa=
tch
> > >>>>> still be (2 GiB - <total size of accessible symbols>)?
> > >>>>>
> > >>>>> Cordially,
> > >>>>>
> > >>>>> --
> > >>>>> Romain Dolbeau
> > >>>> It took me some time to find the root cause of this problem, pleas=
e
> > >>>> allow me to share some observations before the discussion.
> > >>>> The root cause of this issue is that the percpu data is declared a=
s a
> > >>>> static variable. The "static" attribute will make the compiler thi=
nk
> > >>>> that this symbol is close to the .text section at runtime. Hence, =
the
> > >>>> compiler uses "auipc" to access this percpu data instead of using =
GOT.
> > >>>> In this case,  the access range is limited to + -2G. However, in
> > >>>> practice, these percpu data are placed at a pre-allocated region
> > >>>> created by the memblock_allocate() function. In other words, the
> > >>>> distance between the pre-allocated region (>PAGE_OFFSET ) and the
> > >>>> .text section of the kernel module (in VMALLOC region) is much lar=
ger
> > >>>> than 2G.
> > >>>> I agree that the original patch,
> > >>>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b=
9217c96e1589,
> > >>>> can solve most cases. However, I do not think the patch still work=
s if
> > >>>> the kernel module region is determined by _end or <total size of
> > >>>> accessible symbols>. The reason is that the pre-allocated region f=
or
> > >>>> module percpu data comes from the memblock function at runtime. He=
nce,
> > >>>> we cannot know the actual address of this region at compile-time, =
and
> > >>>> this issue probably may occur again in this case.
> > >>>>
> > >>>> By the way, I think maybe we can refer to the implementation of MI=
PS.
> > >>>> 1. For general cases, we can use this patch to solve this issue.
> > >>>> 2. For a large kernel image (>2G) or enabling the KASLR feature, w=
e
> > >>>> may need a new code mode to deal with this issue.
> > >>>>
> > >>> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
> > >>> enabled. Unless we limit the randomized range in small area, the
> > >>> module region start address will be bigger than VMALLOC_END.
> > >>
> > >> Actually, the relocatable patch I proposed already moves "everything=
" up
> > >> at the same
> > >> time: the kernel itself but also all the "zones" below (vmalloc,
> > >> vmemmap, fixup...etc)
> > >> since all those zones are defined from PAGE_OFFSET that is now dynam=
ic.
> > >> So the modules
> > >> ill remain at the same offset to the kernel, unless explicitly
> > >> randomized in the vmalloc zone.
> > >>
> > > OK, it makes sense. The module region moves along with kernel seems t=
o
> > > stay away from the concern I mentioned.
> > >
> > > So now, the problem is that the pre-allocated region of percpu data i=
s
> > > located after _end symbol as Vincent mentioned, the 2G distance seems
> > > to be too far for module region start address. (i.e. &_end - 2G).
> >
> >
> > Actually, I don't understand this issue: we are limited to addressing
> > symbols within +/- 2GB
> > from PC. So as long as the percpu symbol exists in the kernel, it is
> > below _end and then we don't
> > care that its content is initialized dynamically, as long as we can
> > 'compute' its address from PC,
> > right ?
>
> In this case, the static percpu symbols of this issue are declared in
> the kernel module, not in the kernel image.
> When kernel loads the kernel module, in general, it continuously
> places all the module sections in the VMALLOC memory area. However,
> the ".data..percpu" section is an exception. The kernel places the
> ".data..percpu" section in a pre-allocated memory region. This region
> is used to place the percpu data instances for each CPU and is created
> by the memblock(). Hence, the instance of these per-cpu symbols is
> above the _end.  In this case, if we make the module region locate at
> [_end-2G, PAGE_OFFSET], the distance between these percpu symbols (its
> address >_end) and module text section will probably exceed the 2G
> limitation.

The static percpu symbols are particularly problem for loadable modules
on RISC-V but dynamic percpu variable are perfectly fine. I had faced this
issue with KVM RISC-V module and I converted static percpu symbol into
dynamic percpu variable. In fact, in Linux kernel dynamic percpu variables
are preferred over static percpu symbols so wherever we see issue with
static perpcu symbol in any module we should just send patch to convert
it into dynamic percpu.

In general, any memory access via pointers (just like dynamic percpu
variables) are fine as long as the pointer itself is within 2GB of relative
addressing.

Overall, Alex's suggestion will address most cases of loadable modules
except modules having static percpu symbols and for such modules just
convert these percpu symbols into dynamic percpu variables.

>
> >
> > Can you point out where I can take a look at this pre-allocated region
> > for percpu data please ?
> >
> In mm/percpu.c, you can find how the kernel allocates the percpu data
> region during the initialization phase.
> In kernel/module.c's simplify_symbols function, you can find kernel
> treats .data.percpu section as an exception when loading module.
>
> If I have any misunderstandings, please let me know. Thanks

Please see above comment. We should prefer dynamic percpu variable
in loadable modules over static percpu symbols. I am sure there will
be very few kernel loadable modules having static percpu symbols.

Regards,
Anup

