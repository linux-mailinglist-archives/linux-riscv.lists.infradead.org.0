Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03339109F3D
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 14:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S4ZjxtwEGxXIQzpMtSPqQRk7Bhv4LBzAkY2LHNz5Yh0=; b=Hs9wSsNkgreYzpkVppM2Uez/e
	YlEDpQu3FWyulZfN1d3tQq25WFgY5kgtX+1vRlZaJ7ise3i9dwmHWA5v7ETVM2gwKLG+zrbwVuA0Z
	7tPsJOW5CyGO3uYIkrAjIMXxNtgSxTCVtJh2boj6S36C0Q0fCVLW7DfxU3CflfBO77RGUWYWcAPqK
	H5DxBVIJTfKs6x4VXnzCTO5qKKw8ovCL+Y7G6H+7Kqju+C3XSijipilysLzDm85qYAWXQhFC/njB7
	qp4+d7WZcUhWnwJkNtAC6rBFZ9K+gTF2sUoSUCl13KfefG3AkUWxklnmP2KxptB9iKOFYIUceEJT6
	EpP26FLUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaqW-0001pE-SD; Tue, 26 Nov 2019 13:25:36 +0000
Received: from smtprelay0081.hostedemail.com ([216.40.44.81]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaqR-00017b-Fc
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 13:25:33 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 5A9C41800BEAB;
 Tue, 26 Nov 2019 13:25:24 +0000 (UTC)
X-Session-Marker: 7368656140736865616C6576792E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, shea@shealevy.com, :::::::::::::,
 RULES_HIT:41:152:355:379:599:800:871:960:973:988:989:1000:1260:1313:1314:1345:1359:1431:1437:1516:1518:1535:1544:1575:1594:1605:1711:1730:1747:1777:1792:1801:1981:2194:2199:2393:2553:2559:2562:2693:2901:3138:3139:3140:3141:3142:3865:3866:3867:3868:3870:3871:3872:3873:3874:4117:4250:4321:4362:4605:5007:6117:6119:6261:6506:6747:7281:7514:7875:7903:7909:8603:8660:9036:9040:10004:10848:11026:11232:11233:11473:11657:11658:11914:12043:12296:12297:12438:12555:12663:12740:12895:12986:13148:13230:14180:14181:14721:21060:21080:21325:21433:21451:21627:21740:30025:30054:30056:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: actor99_69506a9204f19
X-Filterd-Recvd-Size: 6817
Received: from localhost (unknown [75.112.159.170])
 (Authenticated sender: shea@shealevy.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Tue, 26 Nov 2019 13:25:23 +0000 (UTC)
From: Shea Levy <shea@shealevy.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Subject: Re: [PATCH] RISC-V: Load modules within relative jump range of the
 kernel text.
In-Reply-To: <CAJ+HfNhoJnGon-L9OwSfrMbmUt1ZPBB_=A8ZFrg1CgEq3ua-Sg@mail.gmail.com>
References: <mhng-0a2f9574-9b23-4f26-ae76-18ed7f2c8533@palmer-si-x1c4>
 <87d0yoizv9.fsf@xps13.shealevy.com> <87zi19gjof.fsf@xps13.shealevy.com>
 <CAJ+HfNhoJnGon-L9OwSfrMbmUt1ZPBB_=A8ZFrg1CgEq3ua-Sg@mail.gmail.com>
Date: Tue, 26 Nov 2019 08:25:21 -0500
Message-ID: <87o8wyojlq.fsf@xps13.shealevy.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_052531_668452_744A6C2D 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, albert@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0015582529216391555=="
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--===============0015582529216391555==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Bj=C3=B6rn,

Unfortunately I'm not sure what more is needed to get this in, and I'm
in the middle of a move and won't have easy access to my RISC-V setup
for testing. I don't think you can count on me for this one.

Thanks,
Shea

Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com> writes:

> On Wed, 9 May 2018 at 13:22, Shea Levy <shea@shealevy.com> wrote:
>>
>> Hi Palmer,
>>
>> Shea Levy <shea@shealevy.com> writes:
>>
>> > Hi Palmer,
>> >
>> > Palmer Dabbelt <palmer@sifive.com> writes:
>> >
>> >> On Sun, 22 Apr 2018 05:53:56 PDT (-0700), shea@shealevy.com wrote:
>> >>> Hi Palmer,
>> >>>
>> >>> Shea Levy <shea@shealevy.com> writes:
>> >>>
>> >>>> Signed-off-by: Shea Levy <shea@shealevy.com>
>> >>>> ---
>> >>>>
>> >>>> Note that this patch worked in my old modules patchset and seems to=
 be
>> >>>> working now, but my kernel boot locks up on top of
>> >>>> riscv-for-linus-4.17-mw0 and I don't know if it's due to this patch=
 or
>> >>>> something else that's changed in the mean time.
>> >>>>
>> >>>> ---
>> >>>>  arch/riscv/include/asm/pgtable.h |  9 +++++++++
>> >>>>  arch/riscv/kernel/module.c       | 11 +++++++++++
>> >>>>  2 files changed, 20 insertions(+)
>> >>>>
>> >>>> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/=
asm/pgtable.h
>> >>>> index 16301966d65b..b08ded13364a 100644
>> >>>> --- a/arch/riscv/include/asm/pgtable.h
>> >>>> +++ b/arch/riscv/include/asm/pgtable.h
>> >>>> @@ -25,6 +25,7 @@
>> >>>>  #include <asm/page.h>
>> >>>>  #include <asm/tlbflush.h>
>> >>>>  #include <linux/mm_types.h>
>> >>>> +#include <linux/sizes.h>
>> >>>>
>> >>>>  #ifdef CONFIG_64BIT
>> >>>>  #include <asm/pgtable-64.h>
>> >>>> @@ -425,6 +426,14 @@ static inline void pgtable_cache_init(void)
>> >>>>  #define TASK_SIZE VMALLOC_START
>> >>>>  #endif
>> >>>>
>> >>>> +/*
>> >>>> + * The module space lives between the addresses given by TASK_SIZE
>> >>>> + * and PAGE_OFFSET - it must be within 2G of the kernel text.
>> >>>> + */
>> >>>> +#define MODULES_SIZE              (SZ_128M)
>> >>>> +#define MODULES_VADDR             (PAGE_OFFSET - MODULES_SIZE)
>> >>>> +#define MODULES_END               (VMALLOC_END)
>> >>>> +
>> >>>>  #include <asm-generic/pgtable.h>
>> >>>>
>> >>>>  #endif /* !__ASSEMBLY__ */
>> >>>> diff --git a/arch/riscv/kernel/module.c b/arch/riscv/kernel/module.c
>> >>>> index 5dddba301d0a..1b382c7de095 100644
>> >>>> --- a/arch/riscv/kernel/module.c
>> >>>> +++ b/arch/riscv/kernel/module.c
>> >>>> @@ -16,6 +16,8 @@
>> >>>>  #include <linux/err.h>
>> >>>>  #include <linux/errno.h>
>> >>>>  #include <linux/moduleloader.h>
>> >>>> +#include <linux/vmalloc.h>
>> >>>> +#include <asm/pgtable.h>
>> >>>>
>> >>>>  static int apply_r_riscv_64_rela(struct module *me, u32 *location,=
 Elf_Addr v)
>> >>>>  {
>> >>>> @@ -382,3 +384,12 @@ int apply_relocate_add(Elf_Shdr *sechdrs, cons=
t char *strtab,
>> >>>>
>> >>>>    return 0;
>> >>>>  }
>> >>>> +
>> >>>> +void *module_alloc(unsigned long size)
>> >>>> +{
>> >>>> +  return __vmalloc_node_range(size, 1, MODULES_VADDR,
>> >>>> +                              MODULES_END, GFP_KERNEL,
>> >>>> +                              PAGE_KERNEL_EXEC, 0,
>> >>>> +                              NUMA_NO_NODE,
>> >>>> +                              __builtin_return_address(0));
>> >>>> +}
>> >>>> --
>> >>>> 2.16.2
>> >>>
>> >>> Any thoughts on this?
>> >>
>> >> The concept looks good, but does this actually keep the modules withi=
n 2GiB of
>> >> the text if PAGE_OFFSET is large?
>> >
>> > It's been some time since I wrote this, but I thought PAGE_OFFSET was
>> > where the kernel text *started*? So unless the text itself is bigger
>> > than 2G - 128 M, in which case we're SOL anyway, it seems like this
>> > should work. Is there something better we can do, without a large memo=
ry
>> > model?
>> >
>> > Thanks,
>> > Shea
>>
>> Any further thoughts on this?
>>
>> Thanks,
>> Shea
>
> Shea,
>
> Waking up the dead (threads)!
>
> I'm hacking on call improvements for the RISC-V BPF JIT.
> module_alloc() is used under the hood of bpf_jit_binary_alloc(), which
> in turn is used to allocate the JIT image. The current JIT
> implementation has to to "load imm64 + jalr" to call kernel syms,
> since the relative offset is >32b. With your patch, I can use regular
> jal/auipc+jalr instead. IOW, it would be great if it could be merged.
> ;-) I'd prefer not having the patch in my BPF JIT series, since that
> will go through a different tree than Paul's RV one.
>
> Wdyt about brushing of the dust of the patch, and re-send it?
>
>
> Thanks!
> Bj=C3=B6rn

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE6ESKvwKkwnxgMLnaXAvWlX2G/icFAl3dJ8EACgkQXAvWlX2G
/iegUw//RFoBh407tMvoG6prgim8nj0qW2gGKFCKiCAaVK0h2XP/oQmMFT9LKQf+
ZjzdWx6TStG29g+JPBnHPgdIaXHDmFB6DK4z4rZkBgufog1k6kkIBsWaEu6q7/lP
cOX31sGO+r4yljFg2f5KLQV0qkyd1sFFDxNwLTjwBLPV3PsGw2fjfMxCiLYgPg9N
G1mcp/7PscyZErrgaysfBUOZ2sYyhjM9xFh8BJxq3vIVXEqf94zMgHD63mgVC1x8
gcv/3Fbe1pN/nXr7otX0XR16h04xIOojrnKnuZlDPqqppv4ywao4yci7SYQvM0lL
xeuy7nTdu7CGNd+o8icrvQia8K5Hcbb5OqeESRKUg7z+TrftdK1r5Khny+fLIa1r
QqK+at8W2t4JDkli+45IkL9KYPkPkdf1I/xEvksADLOjXFYKL1bwYAE7iyPdds37
uvXqWGOdio4pOyq34UM95AdDjbG0CrO4aTeTQBSDGTcSwfEPoVpPrF5zIsqQtmHr
VULez79njycJMJaIsIABp2gpkFM5GvY3iFPudqbtcHOs/z2vTO/zVE8MwTP/AhAV
l8PZ2dsD4csFAk0IHLoqLw4LERAtA9sT0veDJEcU2ikOwHe5a+6Br3zU7hvjNkR9
OOLJHeVePytK4GR3yJjDjZ1/B+9ihhOeKfqPefCLV3Dht7vmUAk=
=thWq
-----END PGP SIGNATURE-----
--=-=-=--


--===============0015582529216391555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--===============0015582529216391555==--

