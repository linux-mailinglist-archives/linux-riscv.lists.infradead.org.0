Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3C8152539
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Feb 2020 04:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Xaj+w1A2b3LJwfIR3Ai0Q3VM2UrQc8KLPdfco8ZPSg=; b=ZAtFdSeIsnq45f
	bI3PeWL8FTTWI4Z3rEj4hhPlFjSxl0awTjylGDPpsmIkbZWN+8gMuG5sWKv236nUdErLmr06HAoiR
	FocjJKijNs1hqMcd/nvx8mJhx8p+MnrzAFUxEbMoKOw+yyQASQVlKBZ3aCem6ev7nBMx4wEcp8iwn
	BM2B3zRmtL1reqS3ktjSvpU+Uz8dAMsC1MwgvtzcLS0jn4szjbKsNm03iYLQZiy0iWy9lRp6WjDHq
	enGZ/8bow16YtHcfEeKqcLlUMLCbxfmvXhU16jXq35UdmH9Ghh0LAP5G2fM6vz4eFfrAwQvKRu3He
	z1BM9jxLEqlEgaWvJXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izBGk-0005GY-8J; Wed, 05 Feb 2020 03:22:26 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izBGg-0005Fl-4C
 for linux-riscv@lists.infradead.org; Wed, 05 Feb 2020 03:22:24 +0000
Received: by mail-qv1-xf43.google.com with SMTP id o18so484108qvf.1
 for <linux-riscv@lists.infradead.org>; Tue, 04 Feb 2020 19:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+Xaj+w1A2b3LJwfIR3Ai0Q3VM2UrQc8KLPdfco8ZPSg=;
 b=BeThZ1VlTbCa8CBIHK+v3iXlpmhuxCcU/2QkkphbwiFlL/8ZTnM7OHsj+RlAB+/8NN
 7Y0FuKVLu8vPXSSQlCHh1xlMUb4xENZUYPSsFL+M9SiUFLf4j4uYjVw/thyRs8/COflc
 UiCVY2aqsi2IxgBCBPKkGBqCS3F3AtrzcHb3wnGuVP4si4htTJ+fgV/0eyR0poJVV4KF
 2tQkxxyKuNoE7F+hS+T9URHuRtg94QuJe3EOeRTbp1rWCJQqpegqHm5KQNUkS/+zfJ6Z
 OM8rh+EQx3vzE+dILEuCr6y372adLkfYmO5WujK1FpVPfsx1VKGY+IAxZp87L+5ZWl8T
 BDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Xaj+w1A2b3LJwfIR3Ai0Q3VM2UrQc8KLPdfco8ZPSg=;
 b=uUIU8MmLUNl9Z/TCs9eMYs/LGgUqH7rxcaWjZoyL/ftTJAvwD1qkNq80MTSust4hrX
 xXOvXoVSR9OxijLoxBPT9iFy8ODllDUJo8FztYTl543ChLfDw4iD4o6OCrqKJ6k5d+9a
 DoFdIUp/D01aHHyDrRCOCx9Acx2wMKm/X705oXUctBkBpl5994kgzY44nxiCOBRGQCzW
 KU0qr/4pNp0i977tT0HtUXmcHby74hcjnBO2DFkjFJyXxvA2LfTrmn0TJhKISLlJGkzC
 VkPllQRVYzkwvrJattcz/hQON3JBetV//MDi8ZY7qfZ73BqW4ERqU2X2THaaGeSPTjnq
 Jp5w==
X-Gm-Message-State: APjAAAUA1ZfC1OWlT1kU3BYK+7VRK3XZKF48kRaULTeA3JC2VW4XDoFd
 xsACChINrIyQpggJcRVy2H3mFUX9q0caQBaeO+uV/w==
X-Google-Smtp-Source: APXvYqwfUtYfARk0dwb+OmEUeqB9+RsPjBWlDjZVNPByxZHjPWEfSKo5X1s/XysExaGNeb89Y0cWSAnDNXVozY0ImP8=
X-Received: by 2002:ad4:56a7:: with SMTP id bd7mr30991502qvb.238.1580872937866; 
 Tue, 04 Feb 2020 19:22:17 -0800 (PST)
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
In-Reply-To: <a55f265e-71b2-5ebb-b079-6345007a442e@ghiti.fr>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Wed, 5 Feb 2020 11:22:06 +0800
Message-ID: <CABvJ_xjVLJEebCac_sb6-Yd_iHU1x8Daqw-iFqcGn11YKktm8Q@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_192222_182737_14142D32 
X-CRM114-Status: GOOD (  46.42  )
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

On Wed, Feb 5, 2020 at 3:07 AM Alex Ghiti <alex@ghiti.fr> wrote:
>
>
> On 2/4/20 9:03 AM, Vincent Chen wrote:
>
> On Tue, Feb 4, 2020 at 7:31 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Feb 4, 2020 at 4:16 PM Vincent Chen <vincent.chen@sifive.com> wro=
te:
>
> On Tue, Feb 4, 2020 at 5:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> On 2/4/20 8:19 AM, Zong Li wrote:
>
> Alex Ghiti <alex@ghiti.fr> =E6=96=BC 2020=E5=B9=B42=E6=9C=884=E6=97=A5 =
=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=882:50=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Hi Zong,
>
> On 2/3/20 10:55 PM, Zong Li wrote:
>
> Vincent Chen <vincent.chen@sifive.com> =E6=96=BC 2020=E5=B9=B42=E6=9C=883=
=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=886:04=E5=AF=AB=E9=81=93=EF=BC=
=9A
>
> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
> <romain.dolbeau@european-processor-initiative.eu> wrote:
>
> On 2020-02-01 14:59, Alex Ghiti wrote:
>
> Why restrict to 128M whereas we have 2GB offset available to the end of
> the kernel ?
>
> Isn't that 2 GiB offset to whatever the module requires in the kernel,
> rather than to the end of the kernel space?
>
> Is there some guarantee that symbols accessible by modules are at the
> end of the kernel? If so, wouldn't the maximum offset for this patch
> still be (2 GiB - <total size of accessible symbols>)?
>
> Cordially,
>
> --
> Romain Dolbeau
>
> It took me some time to find the root cause of this problem, please
> allow me to share some observations before the discussion.
> The root cause of this issue is that the percpu data is declared as a
> static variable. The "static" attribute will make the compiler think
> that this symbol is close to the .text section at runtime. Hence, the
> compiler uses "auipc" to access this percpu data instead of using GOT.
> In this case,  the access range is limited to + -2G. However, in
> practice, these percpu data are placed at a pre-allocated region
> created by the memblock_allocate() function. In other words, the
> distance between the pre-allocated region (>PAGE_OFFSET ) and the
> .text section of the kernel module (in VMALLOC region) is much larger
> than 2G.
> I agree that the original patch,
> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96=
e1589,
> can solve most cases. However, I do not think the patch still works if
> the kernel module region is determined by _end or <total size of
> accessible symbols>. The reason is that the pre-allocated region for
> module percpu data comes from the memblock function at runtime. Hence,
> we cannot know the actual address of this region at compile-time, and
> this issue probably may occur again in this case.
>
> By the way, I think maybe we can refer to the implementation of MIPS.
> 1. For general cases, we can use this patch to solve this issue.
> 2. For a large kernel image (>2G) or enabling the KASLR feature, we
> may need a new code mode to deal with this issue.
>
> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
> enabled. Unless we limit the randomized range in small area, the
> module region start address will be bigger than VMALLOC_END.
>
> Actually, the relocatable patch I proposed already moves "everything" up
> at the same
> time: the kernel itself but also all the "zones" below (vmalloc,
> vmemmap, fixup...etc)
> since all those zones are defined from PAGE_OFFSET that is now dynamic.
> So the modules
> ill remain at the same offset to the kernel, unless explicitly
> randomized in the vmalloc zone.
>
> OK, it makes sense. The module region moves along with kernel seems to
> stay away from the concern I mentioned.
>
> So now, the problem is that the pre-allocated region of percpu data is
> located after _end symbol as Vincent mentioned, the 2G distance seems
> to be too far for module region start address. (i.e. &_end - 2G).
>
> Actually, I don't understand this issue: we are limited to addressing
> symbols within +/- 2GB
> from PC. So as long as the percpu symbol exists in the kernel, it is
> below _end and then we don't
> care that its content is initialized dynamically, as long as we can
> 'compute' its address from PC,
> right ?
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
> As far as I know, the kernel module uses PIC as the code mode instead
> of medany. Therefore, I don't think most pointers in kernel modules
> have a 2GB limit. That is why the modules without static percpu
> variables do not encounter the 32-bit offset issue.
>
> Overall, Alex's suggestion will address most cases of loadable modules
> except modules having static percpu symbols and for such modules just
> convert these percpu symbols into dynamic percpu variables.
>
> Can you point out where I can take a look at this pre-allocated region
> for percpu data please ?
>
> In mm/percpu.c, you can find how the kernel allocates the percpu data
> region during the initialization phase.
> In kernel/module.c's simplify_symbols function, you can find kernel
> treats .data.percpu section as an exception when loading module.
>
>
> Thanks for your explanations, I was miles away from understanding the rea=
l problem,
> good finding Vincent.
>
>
> If I have any misunderstandings, please let me know. Thanks
>
> Please see above comment. We should prefer dynamic percpu variable
> in loadable modules over static percpu symbols. I am sure there will
> be very few kernel loadable modules having static percpu symbols.
>
> Thanks for your comments.
> I agree that Alex's suggestion can address most cases of loadable
> modules. The reason why I pointed out the static percpu variable case
> is that the percpu variable is declared as a static symbol in the
> reduced case provided by Romain in
> https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor=
-initiative.eu/.
> Also, I found two static percpu variables declared in openvswitch
> module. After removing the static attribute, the kernel can insert
> them successfully. Hence, I think the static percpu variable causes
> the issue.
>
> (According to the result of 'grep', very few kernel loadable modules
> use static percpu data, as you mentioned. However, I'm not sure this
> might be a reason to prohibit RISC-V users from using static percpu
> variables in kernel modules. Therefore, I have no comment on this.)
> If we can ignore the existence of static percpu variable in the
> kernels module, I agree with Alex's suggestions. The reason is not
> that we can use it to solve bugs, but that we can change the code
> model from PIC to medany by creating a specific kernel module region
> to improve the access performance.
>
>
> If I understand well, you mean that having this module zone at the end of=
 vmalloc zone
> does not allow to fix the bug regarding static percpu variables but allow=
s to have better
> performance than PIC which uses an additional redirection using the GOT, =
right ?
>

Yes. Currently, I think PIC model can resolve most of the pointer
reference except for the static percpu variables. However, as you
mentioned, It will lose some performance due to the additional
redirection using the GOT.

>
> (Maybe we can keep the current implementation for some corner cases
> such as the size of the kernel image is close to 2GB)
>
>
> Either we follow Anup's advice and we don't care about those static percp=
u variables and
> if ever they fall behind the 2GB limit, we can not load the module, or we=
 find a way to make
> sure that the module range comprises the area for module percpu variables=
 which is allocated
> in setup_per_cpu_areas. I'm taking a look at this solution and how other =
architectures with
> same code model handle that.
>
As far as I know, ARM64 and MIPS64 with CONFIG_KBUILD_64BIT_SYM32 also
use PC-relative way to access the static perpcu variables. I quickly
describe their implementation below, please correct me if I have any
misunderstandings, thanks.
1. ARM64
    When CONFIG_RANDOMIZE_BASE is disabled, they place the module
region at "(u64)_etext - MODULES_VSIZE(128MB)", and the range
limitation of PC-relative ( instruction adrp) is +-4GB. When
CONFIG_RANDOMIZE_BASE is enabled, the maximum access range between
module region symbol and kernel symbol is limited to 2GB. There is
still 2GB room to access the per-cpu data. Therefore, I think it is
also safe to access the per-cpu variables.
2. MIPS64 with CONFIG_KBUILD_64BIT_SYM32
     The VMALLOC region is placed after the kernel image. Therefore,
the start address of the kernel image is at the 0xfffffff80100000, and
the kernel module region is at 0xffffffffc0000000 which is the
beginning of the VMALLOC. They do not encounter this issue because the
range limitation of PC-relative is +-2GB.

Currently, I have three solutions to fix the percpu data problem, and
I list them below. Any feedback is welcome.

1. Create a specific module region locating at [PAGE_OFFSET-SIZE, PAGE_OFFS=
ET].
    I think this way can solve most cases because the general size of
kernel image is much smaller than 2G, and we still can change the code
model from PIC to medany. However, it will still encounter the same
problem if the kernel image is near to 2GB.

2. Request a new code model for kernel
    Maybe we request compiler guys to generate a new PIC mode for
kernel, which uses GOT to assess every static per-cpu data instead of
PC-relative. However, I am not sure whether this idea is accepted by
the compiler guys or not. If accepted, It may need a long time to
realize it.

3. Jump to a resolved function.
Zong and I came out with this rough idea to address the problem, but
we do not go to realize it.

The following is the current code pattern for accessing the percpu data.
64: 00000917 auipc s2,0x0
68: 00093903 ld s2,0(s2) # 64 <.L0 >

We plan to change the " ld s2,0(s2) " to "jalr xxx(s2)" to redirect
the code to the corresponding resolved function. Each static percpu
data owns a resolved function. These resolved functions will go to get
the variable content, and then it stores the variable to the target
register by decoding the auipc instruction. We think this method may
solve this problem, but it will drop the performance due to the
redirection.

I preferred the solution combining method 1 and method 2.
1. In general, users can choose method 1 to improve the performance of
data access.
2. For safety, users can use the new code model to access the static
percpu data without any limitation.
We can create a new kernel config that looks a bit like MIPS
CONFIG_KBUILD_64BIT_SYM32 for users to chose.

