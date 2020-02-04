Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC425151BCA
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 15:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oNoJTtG2w9PqHHZaJSdEdJ4BFmU1vf6MOtbqRAJuX4=; b=nNy2+Uwd8ejZix
	cKG7Xcm939/B2bE4MTvup6L0w71JAvu25GlJSgLKYB0sn/LveMWLsnlQe1BTO4/k98h+StEiNnZqJ
	RVpq1EQydND+YUkUE0dW6yyeAdvvyisFv/mTwz40YEQge1Avr+qjg1JXs/ZoB7oNEQBbKdnLwDz9w
	o0uzMO4DCIVaUHJaQzRMJtXXcGVL4/Od0eMw4pZjqIEv1K7EYAebbMBs9EusMQ258wfSHQlR/qtd5
	FEDW2bQ4X5ZtzudwcMTNzBeDR3RHOSCWcQ0vFeKZyrANK/4ZZrKqtmb969VKqJN2Tb3gtQ3gcnKuL
	tAW2H3V/6ICmEa1xaxvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyo6-0006Ez-5K; Tue, 04 Feb 2020 14:04:02 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyo1-00068V-Me
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 14:03:59 +0000
Received: by mail-qk1-x744.google.com with SMTP id 21so896504qki.5
 for <linux-riscv@lists.infradead.org>; Tue, 04 Feb 2020 06:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0oNoJTtG2w9PqHHZaJSdEdJ4BFmU1vf6MOtbqRAJuX4=;
 b=Gl/UMXGiKfJaXylEXrQDcA1LYY7FyykQw7UYjRd5eapZcHbI1S9FkysEb10kZ++0L+
 UZGTANJMqXr2jUqD6dsch3e9FsSUoBWc7MLdzHPeZbkxsrNngUfQMWLKeu7ZR/Ubxj4W
 zh1wc+bhzHUznQmIoxud/X3lJeJIB/emB0/Ov1vRZLDvWwy4SxbYocBnNe9+n01tzsiU
 qTLm93AHR6qlmaJP93/+ZML0tPkisQN99XTgVymrO+wTDPQa19pQs0/jkDj1neYXsXaD
 CXFaqmQouM8XMDbmsjxi91aTmPhCDlRxM0Pa2cFcROiGm79JzOFwYv2VrdrW3PniUjPW
 T/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0oNoJTtG2w9PqHHZaJSdEdJ4BFmU1vf6MOtbqRAJuX4=;
 b=U7koWT6Lymvfu/8JmCa8w9kT8mj5lRM8HpNKOUspekVZDm7YBuNlJaUfrG9ELXCjnH
 0a2vHeF9/arpU3jXFebWghPy55sro+vFwG1BGi6Xj/Cn9fnT6IJQPVS5F1OF92fCaHuM
 zDg8UN2gHPgq2cYXHNhwPTwKhVNQOW4+bCGbrYccUVuw4YG8KRrxWfZWoBbXdyofF8f0
 IV/Ux1Fa4SuEY/bKeEtgo7R4LU5HbageTIYmhD5VgvBlui4Z3yLyIi/HZr0vBP2mEG9p
 n1E9WuVjGs6KjgUXtBtYDN+Lg5i8UsJhiKlNDab/iy/iZROTw+vRDTyYE85Mai36HC+c
 o8LA==
X-Gm-Message-State: APjAAAXUvb0pUrkrhbj2ZCa9bW2RU4F6hT/DiqpDrnA8NSe1NI9wxwnN
 HYEDLYrwWSKcxINZKWzNvkjkKL9lqQrNde3O9Y6arQ==
X-Google-Smtp-Source: APXvYqynT8oRc96+k/GChqB/w4BWw/LHBUi7uK2lm/OJmkCKfwNnE7VT8JLNzGqkj/ttXk8tIGuBlDlDuoUjI+suRTM=
X-Received: by 2002:a05:620a:ce5:: with SMTP id
 c5mr27841660qkj.49.1580825036128; 
 Tue, 04 Feb 2020 06:03:56 -0800 (PST)
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
 <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
In-Reply-To: <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Tue, 4 Feb 2020 22:03:44 +0800
Message-ID: <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_060357_803930_4D9C7064 
X-CRM114-Status: GOOD (  39.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul@pwsan.com>, Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 4, 2020 at 7:31 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Feb 4, 2020 at 4:16 PM Vincent Chen <vincent.chen@sifive.com> wro=
te:
> >
> > On Tue, Feb 4, 2020 at 5:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
> > >
> > >
> > > On 2/4/20 8:19 AM, Zong Li wrote:
> > > > Alex Ghiti <alex@ghiti.fr> =E6=96=BC 2020=E5=B9=B42=E6=9C=884=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=882:50=E5=AF=AB=E9=81=93=EF=BC=9A
> > > >> Hi Zong,
> > > >>
> > > >> On 2/3/20 10:55 PM, Zong Li wrote:
> > > >>> Vincent Chen <vincent.chen@sifive.com> =E6=96=BC 2020=E5=B9=B42=
=E6=9C=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=886:04=E5=AF=AB=E9=
=81=93=EF=BC=9A
> > > >>>> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
> > > >>>> <romain.dolbeau@european-processor-initiative.eu> wrote:
> > > >>>>> On 2020-02-01 14:59, Alex Ghiti wrote:
> > > >>>>>> Why restrict to 128M whereas we have 2GB offset available to t=
he end of
> > > >>>>>> the kernel ?
> > > >>>>> Isn't that 2 GiB offset to whatever the module requires in the =
kernel,
> > > >>>>> rather than to the end of the kernel space?
> > > >>>>>
> > > >>>>> Is there some guarantee that symbols accessible by modules are =
at the
> > > >>>>> end of the kernel? If so, wouldn't the maximum offset for this =
patch
> > > >>>>> still be (2 GiB - <total size of accessible symbols>)?
> > > >>>>>
> > > >>>>> Cordially,
> > > >>>>>
> > > >>>>> --
> > > >>>>> Romain Dolbeau
> > > >>>> It took me some time to find the root cause of this problem, ple=
ase
> > > >>>> allow me to share some observations before the discussion.
> > > >>>> The root cause of this issue is that the percpu data is declared=
 as a
> > > >>>> static variable. The "static" attribute will make the compiler t=
hink
> > > >>>> that this symbol is close to the .text section at runtime. Hence=
, the
> > > >>>> compiler uses "auipc" to access this percpu data instead of usin=
g GOT.
> > > >>>> In this case,  the access range is limited to + -2G. However, in
> > > >>>> practice, these percpu data are placed at a pre-allocated region
> > > >>>> created by the memblock_allocate() function. In other words, the
> > > >>>> distance between the pre-allocated region (>PAGE_OFFSET ) and th=
e
> > > >>>> .text section of the kernel module (in VMALLOC region) is much l=
arger
> > > >>>> than 2G.
> > > >>>> I agree that the original patch,
> > > >>>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d5=
2b9217c96e1589,
> > > >>>> can solve most cases. However, I do not think the patch still wo=
rks if
> > > >>>> the kernel module region is determined by _end or <total size of
> > > >>>> accessible symbols>. The reason is that the pre-allocated region=
 for
> > > >>>> module percpu data comes from the memblock function at runtime. =
Hence,
> > > >>>> we cannot know the actual address of this region at compile-time=
, and
> > > >>>> this issue probably may occur again in this case.
> > > >>>>
> > > >>>> By the way, I think maybe we can refer to the implementation of =
MIPS.
> > > >>>> 1. For general cases, we can use this patch to solve this issue.
> > > >>>> 2. For a large kernel image (>2G) or enabling the KASLR feature,=
 we
> > > >>>> may need a new code mode to deal with this issue.
> > > >>>>
> > > >>> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR =
is
> > > >>> enabled. Unless we limit the randomized range in small area, the
> > > >>> module region start address will be bigger than VMALLOC_END.
> > > >>
> > > >> Actually, the relocatable patch I proposed already moves "everythi=
ng" up
> > > >> at the same
> > > >> time: the kernel itself but also all the "zones" below (vmalloc,
> > > >> vmemmap, fixup...etc)
> > > >> since all those zones are defined from PAGE_OFFSET that is now dyn=
amic.
> > > >> So the modules
> > > >> ill remain at the same offset to the kernel, unless explicitly
> > > >> randomized in the vmalloc zone.
> > > >>
> > > > OK, it makes sense. The module region moves along with kernel seems=
 to
> > > > stay away from the concern I mentioned.
> > > >
> > > > So now, the problem is that the pre-allocated region of percpu data=
 is
> > > > located after _end symbol as Vincent mentioned, the 2G distance see=
ms
> > > > to be too far for module region start address. (i.e. &_end - 2G).
> > >
> > >
> > > Actually, I don't understand this issue: we are limited to addressing
> > > symbols within +/- 2GB
> > > from PC. So as long as the percpu symbol exists in the kernel, it is
> > > below _end and then we don't
> > > care that its content is initialized dynamically, as long as we can
> > > 'compute' its address from PC,
> > > right ?
> >
> > In this case, the static percpu symbols of this issue are declared in
> > the kernel module, not in the kernel image.
> > When kernel loads the kernel module, in general, it continuously
> > places all the module sections in the VMALLOC memory area. However,
> > the ".data..percpu" section is an exception. The kernel places the
> > ".data..percpu" section in a pre-allocated memory region. This region
> > is used to place the percpu data instances for each CPU and is created
> > by the memblock(). Hence, the instance of these per-cpu symbols is
> > above the _end.  In this case, if we make the module region locate at
> > [_end-2G, PAGE_OFFSET], the distance between these percpu symbols (its
> > address >_end) and module text section will probably exceed the 2G
> > limitation.
>
> The static percpu symbols are particularly problem for loadable modules
> on RISC-V but dynamic percpu variable are perfectly fine. I had faced thi=
s
> issue with KVM RISC-V module and I converted static percpu symbol into
> dynamic percpu variable. In fact, in Linux kernel dynamic percpu variable=
s
> are preferred over static percpu symbols so wherever we see issue with
> static perpcu symbol in any module we should just send patch to convert
> it into dynamic percpu.
>
> In general, any memory access via pointers (just like dynamic percpu
> variables) are fine as long as the pointer itself is within 2GB of relati=
ve
> addressing.
>

As far as I know, the kernel module uses PIC as the code mode instead
of medany. Therefore, I don't think most pointers in kernel modules
have a 2GB limit. That is why the modules without static percpu
variables do not encounter the 32-bit offset issue.

> Overall, Alex's suggestion will address most cases of loadable modules
> except modules having static percpu symbols and for such modules just
> convert these percpu symbols into dynamic percpu variables.
>
> >
> > >
> > > Can you point out where I can take a look at this pre-allocated regio=
n
> > > for percpu data please ?
> > >
> > In mm/percpu.c, you can find how the kernel allocates the percpu data
> > region during the initialization phase.
> > In kernel/module.c's simplify_symbols function, you can find kernel
> > treats .data.percpu section as an exception when loading module.
> >
> > If I have any misunderstandings, please let me know. Thanks
>
> Please see above comment. We should prefer dynamic percpu variable
> in loadable modules over static percpu symbols. I am sure there will
> be very few kernel loadable modules having static percpu symbols.
>
Thanks for your comments.
I agree that Alex's suggestion can address most cases of loadable
modules. The reason why I pointed out the static percpu variable case
is that the percpu variable is declared as a static symbol in the
reduced case provided by Romain in
https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-i=
nitiative.eu/.
Also, I found two static percpu variables declared in openvswitch
module. After removing the static attribute, the kernel can insert
them successfully. Hence, I think the static percpu variable causes
the issue.

(According to the result of 'grep', very few kernel loadable modules
use static percpu data, as you mentioned. However, I'm not sure this
might be a reason to prohibit RISC-V users from using static percpu
variables in kernel modules. Therefore, I have no comment on this.)
If we can ignore the existence of static percpu variable in the
kernels module, I agree with Alex's suggestions. The reason is not
that we can use it to solve bugs, but that we can change the code
model from PIC to medany by creating a specific kernel module region
to improve the access performance.
(Maybe we can keep the current implementation for some corner cases
such as the size of the kernel image is close to 2GB)

