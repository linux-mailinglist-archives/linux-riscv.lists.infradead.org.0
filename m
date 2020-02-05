Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4582515294C
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Feb 2020 11:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26IedHC9M8wiX+uYfiK+cWPL9Z6ytS5+E04dtS8LovE=; b=d2htz83G/vrsj4
	GqdAMfLBI7Lud5w3MfUL8CX8vzCjSYCrlL3ilAK4M+0NvbMLzt9Bquljvdmag5KMMde2QP1shHH5+
	4HKCsr15ZsjRByWGKq0Lxlv9UgeVZJFEIvCH/gfB9Nr3bu8Kj2r8Fx6ovHqd2Z9QlwT11IMP9Bl3V
	iIyjU7PcMPLq1J6O67AqbEgE7iqrPdg0jjkxE3vO8d/WoSUNdzVyFImJhsJqP9CH6ULHaJ6SHw+uk
	6T1oCJzRTJNC8a+TTZjZcAFF4nirZ5Qy/FYI45AFDkLiPgdX140jhzAXvsPyMb8dD+JXHJ8hibH3i
	/2KKtnHJSUJaaBg6KqRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izI3l-0004ob-Mc; Wed, 05 Feb 2020 10:37:29 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izI3g-0004oA-Ie
 for linux-riscv@lists.infradead.org; Wed, 05 Feb 2020 10:37:27 +0000
Received: by mail-qk1-x742.google.com with SMTP id v195so1270069qkb.11
 for <linux-riscv@lists.infradead.org>; Wed, 05 Feb 2020 02:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=26IedHC9M8wiX+uYfiK+cWPL9Z6ytS5+E04dtS8LovE=;
 b=kBWFKI+xkEXT5i9y8UPzGT7XkURF+45hawkSEbhhZV3a/Pz/17ep1HuqA8CQ/Wg/0O
 7fI99+Tvqr3zy6uJ2hBPAXsch42EWIPH9fX6Pxat/Jn1mPuOfSRDjZeyGzbEmHg2Q+Xj
 hbLWr0C3DV72QoiDVPADLcJtVtLz1XqtrLAmEdPWH1VlrJaooJ3kcpg9jfj6uL5LNCjk
 dLScRHn42wFsFsJUI/7OVMy6jg4+y0e8Kkft6WQUJ+7ly+W19w32bFgfxDvm7oECaRb9
 qzb91ZgpAxEWSU9YXKHdGxffLJo3FkcSKuFtRYhmeMWwetZwyu/KczjWzW9+YfMC2WB7
 Yrjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=26IedHC9M8wiX+uYfiK+cWPL9Z6ytS5+E04dtS8LovE=;
 b=dg2+JRHpUS/sQ79udyf5bnksi+j6nQyPIVl+KtuKzUxzw1eMWgxQhmKJRM9eJJ64r2
 Iw48+HO99O7ANtpiGGgUG12nfdmqBxsUWD0AWgJdJDGBKzC8V4O4UpogcVt6ge1Gdnlp
 61m1ibbQoxsakAKRYr4S1hGB7p0ZMhT0p1rTKx5VdoFuHwMKHm/Ar3lQz9nkOVh/zpQI
 z/aBRD/qSHn6ZpGB+wKRm2bm/XorNlyk0VUi1HUsJPEcEhzD//M4jCMIuVLg9Hc+sWLO
 yyaGh51LyR10OYyPah3yeYiRLi2V5m388Jf7sw/9o7SkVifb46OPXiHptuu4qEu/Y/lq
 hohg==
X-Gm-Message-State: APjAAAWhY6v1pfLw0Lqqlqrrcw7SBa8i7QB7/qKoAPWIyd+fQRAlRcRL
 sZBx1PeKnN8DFKNod7CMSbuyKOf1XdjN5x/0vUeTuQ==
X-Google-Smtp-Source: APXvYqy+VxfUmFOxsI1R5iDZy55IRCxVEC6UaUfQ6WF87ZXxMYi2fe/l/YC89PZBVIej9zRk9GnmSaUSL4kthPm2jeI=
X-Received: by 2002:ae9:f714:: with SMTP id s20mr32096092qkg.236.1580899043160; 
 Wed, 05 Feb 2020 02:37:23 -0800 (PST)
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
 <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
 <a55f265e-71b2-5ebb-b079-6345007a442e@ghiti.fr>
 <CABvJ_xjVLJEebCac_sb6-Yd_iHU1x8Daqw-iFqcGn11YKktm8Q@mail.gmail.com>
 <MN2PR04MB6061ED6ABC668B59A7A544CF8D020@MN2PR04MB6061.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB6061ED6ABC668B59A7A544CF8D020@MN2PR04MB6061.namprd04.prod.outlook.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 5 Feb 2020 18:37:12 +0800
Message-ID: <CABvJ_xg_+XHhND-_8mq8gUN_yN-abMjDOWGg+MFVP0gwSAhxtw@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Anup Patel <Anup.Patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_023724_685374_3C6EAFCA 
X-CRM114-Status: GOOD (  48.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Alex Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul@pwsan.com>, Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 5, 2020 at 12:24 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>
>
>
> > -----Original Message-----
> > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf O=
f
> > Vincent Chen
> > Sent: Wednesday, February 5, 2020 8:52 AM
> > To: Alex Ghiti <alex@ghiti.fr>
> > Cc: Carlos Eduardo de Paula <me@carlosedp.com>; David Abdurachmanov
> > <david.abdurachmanov@gmail.com>; Anup Patel <anup@brainfault.org>;
> > Paul Walmsley <paul@pwsan.com>; Zong Li <zongbox@gmail.com>; Romain
> > Dolbeau <romain.dolbeau@european-processor-initiative.eu>; Zong Li
> > <zong.li@sifive.com>; linux-riscv <linux-riscv@lists.infradead.org>; Au=
relien
> > Jarno <aurelien@aurel32.net>
> > Subject: Re: Error on loading some network Kernel modules
> >
> > On Wed, Feb 5, 2020 at 3:07 AM Alex Ghiti <alex@ghiti.fr> wrote:
> > >
> > >
> > > On 2/4/20 9:03 AM, Vincent Chen wrote:
> > >
> > > On Tue, Feb 4, 2020 at 7:31 PM Anup Patel <anup@brainfault.org> wrote=
:
> > >
> > > On Tue, Feb 4, 2020 at 4:16 PM Vincent Chen <vincent.chen@sifive.com>
> > wrote:
> > >
> > > On Tue, Feb 4, 2020 at 5:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
> > >
> > > On 2/4/20 8:19 AM, Zong Li wrote:
> > >
> > > Alex Ghiti <alex@ghiti.fr> =E6=96=BC 2020=E5=B9=B42=E6=9C=884=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=882:50=E5=AF=AB=E9=81=93=EF=BC=9A
> > >
> > > Hi Zong,
> > >
> > > On 2/3/20 10:55 PM, Zong Li wrote:
> > >
> > > Vincent Chen <vincent.chen@sifive.com> =E6=96=BC 2020=E5=B9=B42=E6=9C=
=883=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=88
> > 6:04=E5=AF=AB=E9=81=93=EF=BC=9A
> > >
> > > On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
> > > <romain.dolbeau@european-processor-initiative.eu> wrote:
> > >
> > > On 2020-02-01 14:59, Alex Ghiti wrote:
> > >
> > > Why restrict to 128M whereas we have 2GB offset available to the end
> > > of the kernel ?
> > >
> > > Isn't that 2 GiB offset to whatever the module requires in the kernel=
,
> > > rather than to the end of the kernel space?
> > >
> > > Is there some guarantee that symbols accessible by modules are at the
> > > end of the kernel? If so, wouldn't the maximum offset for this patch
> > > still be (2 GiB - <total size of accessible symbols>)?
> > >
> > > Cordially,
> > >
> > > --
> > > Romain Dolbeau
> > >
> > > It took me some time to find the root cause of this problem, please
> > > allow me to share some observations before the discussion.
> > > The root cause of this issue is that the percpu data is declared as a
> > > static variable. The "static" attribute will make the compiler think
> > > that this symbol is close to the .text section at runtime. Hence, the
> > > compiler uses "auipc" to access this percpu data instead of using GOT=
.
> > > In this case,  the access range is limited to + -2G. However, in
> > > practice, these percpu data are placed at a pre-allocated region
> > > created by the memblock_allocate() function. In other words, the
> > > distance between the pre-allocated region (>PAGE_OFFSET ) and the
> > > .text section of the kernel module (in VMALLOC region) is much larger
> > > than 2G.
> > > I agree that the original patch,
> > >
> > https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b921
> > 7
> > > c96e1589, can solve most cases. However, I do not think the patch
> > > still works if the kernel module region is determined by _end or
> > > <total size of accessible symbols>. The reason is that the
> > > pre-allocated region for module percpu data comes from the memblock
> > > function at runtime. Hence, we cannot know the actual address of this
> > > region at compile-time, and this issue probably may occur again in
> > > this case.
> > >
> > > By the way, I think maybe we can refer to the implementation of MIPS.
> > > 1. For general cases, we can use this patch to solve this issue.
> > > 2. For a large kernel image (>2G) or enabling the KASLR feature, we
> > > may need a new code mode to deal with this issue.
> > >
> > > The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
> > > enabled. Unless we limit the randomized range in small area, the
> > > module region start address will be bigger than VMALLOC_END.
> > >
> > > Actually, the relocatable patch I proposed already moves "everything"
> > > up at the same
> > > time: the kernel itself but also all the "zones" below (vmalloc,
> > > vmemmap, fixup...etc) since all those zones are defined from
> > > PAGE_OFFSET that is now dynamic.
> > > So the modules
> > > ill remain at the same offset to the kernel, unless explicitly
> > > randomized in the vmalloc zone.
> > >
> > > OK, it makes sense. The module region moves along with kernel seems t=
o
> > > stay away from the concern I mentioned.
> > >
> > > So now, the problem is that the pre-allocated region of percpu data i=
s
> > > located after _end symbol as Vincent mentioned, the 2G distance seems
> > > to be too far for module region start address. (i.e. &_end - 2G).
> > >
> > > Actually, I don't understand this issue: we are limited to addressing
> > > symbols within +/- 2GB from PC. So as long as the percpu symbol exist=
s
> > > in the kernel, it is below _end and then we don't care that its
> > > content is initialized dynamically, as long as we can 'compute' its
> > > address from PC, right ?
> > >
> > > In this case, the static percpu symbols of this issue are declared in
> > > the kernel module, not in the kernel image.
> > > When kernel loads the kernel module, in general, it continuously
> > > places all the module sections in the VMALLOC memory area. However,
> > > the ".data..percpu" section is an exception. The kernel places the
> > > ".data..percpu" section in a pre-allocated memory region. This region
> > > is used to place the percpu data instances for each CPU and is create=
d
> > > by the memblock(). Hence, the instance of these per-cpu symbols is
> > > above the _end.  In this case, if we make the module region locate at
> > > [_end-2G, PAGE_OFFSET], the distance between these percpu symbols (it=
s
> > > address >_end) and module text section will probably exceed the 2G
> > > limitation.
> > >
> > > The static percpu symbols are particularly problem for loadable
> > > modules on RISC-V but dynamic percpu variable are perfectly fine. I
> > > had faced this issue with KVM RISC-V module and I converted static
> > > percpu symbol into dynamic percpu variable. In fact, in Linux kernel
> > > dynamic percpu variables are preferred over static percpu symbols so
> > > wherever we see issue with static perpcu symbol in any module we
> > > should just send patch to convert it into dynamic percpu.
> > >
> > > In general, any memory access via pointers (just like dynamic percpu
> > > variables) are fine as long as the pointer itself is within 2GB of
> > > relative addressing.
> > >
> > > As far as I know, the kernel module uses PIC as the code mode instead
> > > of medany. Therefore, I don't think most pointers in kernel modules
> > > have a 2GB limit. That is why the modules without static percpu
> > > variables do not encounter the 32-bit offset issue.
> > >
> > > Overall, Alex's suggestion will address most cases of loadable module=
s
> > > except modules having static percpu symbols and for such modules just
> > > convert these percpu symbols into dynamic percpu variables.
> > >
> > > Can you point out where I can take a look at this pre-allocated regio=
n
> > > for percpu data please ?
> > >
> > > In mm/percpu.c, you can find how the kernel allocates the percpu data
> > > region during the initialization phase.
> > > In kernel/module.c's simplify_symbols function, you can find kernel
> > > treats .data.percpu section as an exception when loading module.
> > >
> > >
> > > Thanks for your explanations, I was miles away from understanding the
> > > real problem, good finding Vincent.
> > >
> > >
> > > If I have any misunderstandings, please let me know. Thanks
> > >
> > > Please see above comment. We should prefer dynamic percpu variable in
> > > loadable modules over static percpu symbols. I am sure there will be
> > > very few kernel loadable modules having static percpu symbols.
> > >
> > > Thanks for your comments.
> > > I agree that Alex's suggestion can address most cases of loadable
> > > modules. The reason why I pointed out the static percpu variable case
> > > is that the percpu variable is declared as a static symbol in the
> > > reduced case provided by Romain in
> > > https://lore.kernel.org/linux-riscv/1572281840733.3517@european-
> > processor-initiative.eu/.
> > > Also, I found two static percpu variables declared in openvswitch
> > > module. After removing the static attribute, the kernel can insert
> > > them successfully. Hence, I think the static percpu variable causes
> > > the issue.
> > >
> > > (According to the result of 'grep', very few kernel loadable modules
> > > use static percpu data, as you mentioned. However, I'm not sure this
> > > might be a reason to prohibit RISC-V users from using static percpu
> > > variables in kernel modules. Therefore, I have no comment on this.) I=
f
> > > we can ignore the existence of static percpu variable in the kernels
> > > module, I agree with Alex's suggestions. The reason is not that we ca=
n
> > > use it to solve bugs, but that we can change the code model from PIC
> > > to medany by creating a specific kernel module region to improve the
> > > access performance.
> > >
> > >
> > > If I understand well, you mean that having this module zone at the en=
d
> > > of vmalloc zone does not allow to fix the bug regarding static percpu
> > > variables but allows to have better performance than PIC which uses a=
n
> > additional redirection using the GOT, right ?
> > >
> >
> > Yes. Currently, I think PIC model can resolve most of the pointer refer=
ence
> > except for the static percpu variables. However, as you mentioned, It w=
ill
> > lose some performance due to the additional redirection using the GOT.
> >
> > >
> > > (Maybe we can keep the current implementation for some corner cases
> > > such as the size of the kernel image is close to 2GB)
> > >
> > >
> > > Either we follow Anup's advice and we don't care about those static
> > > percpu variables and if ever they fall behind the 2GB limit, we can
> > > not load the module, or we find a way to make sure that the module
> > > range comprises the area for module percpu variables which is
> > > allocated in setup_per_cpu_areas. I'm taking a look at this solution =
and
> > how other architectures with same code model handle that.
> > >
> > As far as I know, ARM64 and MIPS64 with CONFIG_KBUILD_64BIT_SYM32
> > also use PC-relative way to access the static perpcu variables. I quick=
ly
> > describe their implementation below, please correct me if I have any
> > misunderstandings, thanks.
> > 1. ARM64
> >     When CONFIG_RANDOMIZE_BASE is disabled, they place the module
> > region at "(u64)_etext - MODULES_VSIZE(128MB)", and the range limitatio=
n
> > of PC-relative ( instruction adrp) is +-4GB. When CONFIG_RANDOMIZE_BASE
> > is enabled, the maximum access range between module region symbol and
> > kernel symbol is limited to 2GB. There is still 2GB room to access the =
per-cpu
> > data. Therefore, I think it is also safe to access the per-cpu variable=
s.
> > 2. MIPS64 with CONFIG_KBUILD_64BIT_SYM32
> >      The VMALLOC region is placed after the kernel image. Therefore, th=
e start
> > address of the kernel image is at the 0xfffffff80100000, and the kernel
> > module region is at 0xffffffffc0000000 which is the beginning of the
> > VMALLOC. They do not encounter this issue because the range limitation =
of
> > PC-relative is +-2GB.
> >
> > Currently, I have three solutions to fix the percpu data problem, and I=
 list
> > them below. Any feedback is welcome.
> >
> > 1. Create a specific module region locating at [PAGE_OFFSET-SIZE,
> > PAGE_OFFSET].
> >     I think this way can solve most cases because the general size of k=
ernel
> > image is much smaller than 2G, and we still can change the code model f=
rom
> > PIC to medany. However, it will still encounter the same problem if the
> > kernel image is near to 2GB.
> >
> > 2. Request a new code model for kernel
> >     Maybe we request compiler guys to generate a new PIC mode for kerne=
l,
> > which uses GOT to assess every static per-cpu data instead of PC-relati=
ve.
> > However, I am not sure whether this idea is accepted by the compiler gu=
ys or
> > not. If accepted, It may need a long time to realize it.
> >
> > 3. Jump to a resolved function.
> > Zong and I came out with this rough idea to address the problem, but we=
 do
> > not go to realize it.
> >
> > The following is the current code pattern for accessing the percpu data=
.
> > 64: 00000917 auipc s2,0x0
> > 68: 00093903 ld s2,0(s2) # 64 <.L0 >
> >
> > We plan to change the " ld s2,0(s2) " to "jalr xxx(s2)" to redirect the=
 code to
> > the corresponding resolved function. Each static percpu data owns a res=
olved
> > function. These resolved functions will go to get the variable content,=
 and
> > then it stores the variable to the target register by decoding the auip=
c
> > instruction. We think this method may solve this problem, but it will d=
rop the
> > performance due to the redirection.
> >
> > I preferred the solution combining method 1 and method 2.
> > 1. In general, users can choose method 1 to improve the performance of
> > data access.
> > 2. For safety, users can use the new code model to access the static pe=
rcpu
> > data without any limitation.
> > We can create a new kernel config that looks a bit like MIPS
> > CONFIG_KBUILD_64BIT_SYM32 for users to chose.
>
> I think we should not waste time in our quest to find perfect solution. W=
e
> should first have a module_alloc() in-place (based on various suggestions=
 in
> this email thread) so that most people don't see issues. We can fix modul=
e
> loading for module with static per-cpu symbols separately.

I mean "static" is the attribute in C language not the type of the
percpu symbol.
Sorry, the description provided is not accurate and may cause you
misunderstanding, and I also misunderstand the meaning of static
percpu symbols that you mentioned early.

>
> For point1, we don't need a dedicated region as long as we are allocating
> modules from VMALLOC area. Let's avoid another virtual memory region if
> possible.
>

Your comments inspire me if we can know the end of the percpu data
region, we can dynamically calculate the start address in each module
allocation by "<end of the percpu data region> - 2GB" if needed. I am
finding a way to derive the <end of the percpu data region>.



> For point2, loading symbol address for per-cpu static symbols is always
> PC-relative for most RISC architectures and static per-cpu symbols in
> loadable modules is a known issue (Refer, https://lwn.net/Articles/1509/)=
.
> I don't agree that this should be using compilers because per-cpu data
> management is Linux specific (or OS-specific) so we should rather explore
> ways to handle this in Linux itself. The dynamic per-cpu alloc APIs (i.e.
> alloc_percpu() and friends) were added to primarily benefit loadable
> modules and NUMA systems. The static per-cpu symbols (i.e.
> DEFINE_PER_CPU() and friends) should only be used in built-in modules
> or code linked to kernel. It is generally very easy to upgrade code using
> static per-cpu symbols to use dynamic per-cpu symbols.
>
I found that we want to deal with the same problem based on a
different viewpoint, and I can understand what you mean now. I found
that other RISC-V users also want the compiler to use GOT to access
the static symbol instead of PC-relative.
https://github.com/riscv/riscv-gcc/issues/158
https://groups.google.com/a/groups.riscv.org/forum/#!msg/sw-dev/Xa3FN6gQhPI=
/59xUWUpBCQAJ
If this feature is supported, I think this issue can be easily resolved :)

