Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE19C14F687
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Feb 2020 06:08:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T0x1iM9fR0jnbNkMOH1xHcB8BtCK5spl8sEVcNzW7Po=; b=fi59VIwRaUp3uf9cCRfRuYDLU
	/mfDL3XpAWDJSFDKBtpgEum6p9jUXymIU/cOjDMCfBHWVQ9aQp3ZdfOJA3pChn7bt4Lyi8/q1QSGw
	XZJVbWHdOFYTP7ek8qvIWcnIJ1CasXK24QJS0o4Vkm1WAtTQq48NbsOLQMZczpYmmkf9qFF3QGkbF
	x355wHrLyYxl/GmxPryfP/RmvnK9ZQGn7np/9InfXbGiVgQj35BjWw95b5V7+HpTitEmf7zHZr3st
	yNlqK4npzivgXoB+T3FZKWsQPXpAOc/SUL6lCzIit7tByXJhB/TJeoowCH+iqWvujHFdmrCxSipFe
	4LS9H3chw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixl14-00039s-Le; Sat, 01 Feb 2020 05:08:22 +0000
Received: from golgafrincham.0x100.net ([74.207.242.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixl10-00039N-PG
 for linux-riscv@lists.infradead.org; Sat, 01 Feb 2020 05:08:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by golgafrincham.0x100.net (Postfix) with ESMTP id 69448E9D83;
 Sat,  1 Feb 2020 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 williamgrant.id.au; h=content-type:content-type:in-reply-to
 :mime-version:user-agent:date:date:message-id:from:from
 :references:subject:subject:received:received; s=2009; t=
 1580533694; x=1582348095; bh=uC3KFYUtW/BIHvOXb2KWcJswfFS/gIwlfcf
 J3bAL8QQ=; b=KeCcED5ZdTz74SsxZEHHGfpttlqcqBzC8nQNcQ4xrN4PHk67iQ5
 294GY9WN9IPbr+A0jo/PdUaUWRCv55gZnsk53XjoWtsqhberWNLiHPFSJT+SSnQF
 2NOcsMBzQnBETDtoJ7S+8m3IRzMGkAAM6c3qmCV9DTUhuRYCRnyjXSbM=
Received: from golgafrincham.0x100.net ([127.0.0.1])
 by localhost (golgafrincham.0x100.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id CQHFlo_CfUT8; Sat,  1 Feb 2020 05:08:14 +0000 (UTC)
Received: from [IPv6:2403:5800:3100:5a00:c9db:6448:1d30:6cb]
 (2403-5800-3100-5a00-c9db-6448-1d30-6cb.ip6.aussiebb.net
 [IPv6:2403:5800:3100:5a00:c9db:6448:1d30:6cb])
 (using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested) (Authenticated sender: wgrant)
 by golgafrincham.0x100.net (Postfix) with ESMTPSA id 012A7E9D82;
 Sat,  1 Feb 2020 05:08:11 +0000 (UTC)
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: Atish Patra <atishp@atishpatra.org>,
 Carlos Eduardo de Paula <me@carlosedp.com>
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
 <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
From: William Grant <me@williamgrant.id.au>
Message-ID: <94ee0543-e0e6-2be4-9168-e0c8a55ca92a@williamgrant.id.au>
Date: Sat, 1 Feb 2020 16:08:04 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="FAweicYNqnAAAbiUcdRiwlb1tqqs1L6e1"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_210818_882175_4C64BFF5 
X-CRM114-Status: GOOD (  27.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--FAweicYNqnAAAbiUcdRiwlb1tqqs1L6e1
Content-Type: multipart/mixed; boundary="OO2k7CBaKmHExyDa5TzfyXEXkM9a7Z1sf"

--OO2k7CBaKmHExyDa5TzfyXEXkM9a7Z1sf
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/2/20 3:58 pm, Atish Patra wrote:
> On Fri, Jan 31, 2020 at 8:32 AM Carlos Eduardo de Paula
> <me@carlosedp.com> wrote:
>>
>> Updating this issue, I've built the same Golang tree (master) on Qemu
>> using the same kernel Image v5.5.0 I have on Unleashed and it built
>> successfully:
>>
>> root@qemuriscv:~/go/src# time ./make.bash
>> Building Go cmd/dist using /root/go-linux-riscv64-bootstrap. (devel
>> +a858d15f11 13 hours ago linux/riscv64)
>> Building Go toolchain1 using /root/go-linux-riscv64-bootstrap.
>> Building Go bootstrap cmd/go (go_bootstrap) using Go toolchain1.
>> Building Go toolchain2 using go_bootstrap and Go toolchain1.
>> Building Go toolchain3 using go_bootstrap and Go toolchain2.
>> Building packages and commands for linux/riscv64.
>> ---
>> Installed Go for linux/riscv64 in /root/go
>> Installed commands in /root/go/bin
>>
>> real    43m19.946s
>> user    120m34.147s
>> sys    66m34.964s
>> Linux qemuriscv 5.5.0-dirty #3 SMP Fri Jan 31 00:13:59 -02 2020
>> riscv64 GNU/Linux
>> root@qemuriscv:~/go/src# ../bin/go version
>> go version devel +6e592c2 Fri Jan 31 14:46:05 2020 +0000 linux/riscv64=

>>
>>
>> Also tried updating to latest opensbi commit as of today and still
>> seeing same error on Unleashed.
>>
>>
>=20
> Resending it as 1st one did not seem to go through for some reason
>=20
> You might be hitting the tlb flushing hardware errata on unleashed.
> IIRC, anything other than full tlb flush
> is broken on unleashed. I don't have the exact errata number or a link
> that I can point to. May be Paul or somebody else from sifive
> can share that so that we can document it as well.
>=20
> Can you try this patch in OpenSBI? This forces OpenSBI to do a full
> flush every time for HiFive Unleashed.

I've separately been trying to track this down for a couple of days, and
indeed, adjusting OpenSBI to always do a full flush is the easiest
workaround. I haven't seen any public reference to TLB errata on the
SoC, but it would explain a lot.

For now I've found that existing kernels with OpenSBI patched to always
do a full flush, or kernels patched to do a full flush at the end of
wp_page_copy, get Go building stably. I don't know if there's something
special about wp_page_copy that tickles the bug, or if it's just called
often enough that it papers over incomplete flushes elsewhere.

> diff --git a/platform/sifive/fu540/platform.c b/platform/sifive/fu540/p=
latform.c
> index c8ead9dede23..e36338d2903f 100644
> --- a/platform/sifive/fu540/platform.c
> +++ b/platform/sifive/fu540/platform.c
> @@ -218,5 +218,6 @@ const struct sbi_platform platform =3D {
>         .hart_count             =3D FU540_HART_COUNT,
>         .hart_stack_size        =3D FU540_HART_STACK_SIZE,
>         .disabled_hart_mask     =3D FU540_HARITD_DISABLED,
> +       .tlb_range_flush_limit  =3D 0,
>         .platform_ops_addr      =3D (unsigned long)&platform_ops
>  };
>=20
>> On Fri, Jan 31, 2020 at 11:20 AM Carlos Eduardo de Paula
>> <me@carlosedp.com> wrote:
>>>
>>> My board is running:
>>>
>>> SiFive FSBL:       2018-03-20
>>> OpenSBI v0.5-44-g049ad0b
>>> U-Boot 2020.01-dirty (Jan 08 2020 - 18:05:52 -0200)
>>>
>>> All build on january 8 using the guide I've wrote here
>>> (https://github.com/carlosedp/riscv-bringup/tree/master/unleashed)
>>> after our talks.
>>>
>>> Haven't tested newer versions on Qemu, might build it to give a try. =
I
>>> have v5.4-rc3 built for Qemu and it works fine.
>>>
>>> Carlos
>>>
>>> On Fri, Jan 31, 2020 at 10:32 AM David Abdurachmanov
>>> <david.abdurachmanov@gmail.com> wrote:
>>>>
>>>> On Fri, Jan 31, 2020 at 2:14 PM Carlos Eduardo de Paula
>>>> <me@carlosedp.com> wrote:
>>>>>
>>>>> Golang has been recently upstreamed and I've been building multiple=

>>>>> versions on my Unleashed board successfully with kernel 5.3-rc4 and=

>>>>> previous.
>>>>>
>>>>> I noticed that after I updated my Kernel from v5.3-rc4 to v5.5-rc5,=

>>>>> Golang doesn't build anymore failing on multiple points and
>>>>> segfaulting as well.
>>>>
>>>> Could you also mention what version of OpenSBI you use?
>>>> Does it also fail on QEMU (avoid 4.2.0) or only on Unleashed?
>>>>
>>>>>
>>>>> I've captured a few logs with the error building here:
>>>>>
>>>>> I've bisected the versions between v5.4-rc3 and v5.4 and it pointed=

>>>>> out that the commit below is the starting point.
>>>>>
>>>>> eb93685847a9055283d05951c1b205e737f38533 is the first bad commit
>>>>> commit eb93685847a9055283d05951c1b205e737f38533
>>>>> Author: Paul Walmsley <paul.walmsley@sifive.com>
>>>>> Date: Wed Aug 7 19:07:34 2019 -0700
>>>>>
>>>>> riscv: fix flush_tlb_range() end address for flush_tlb_page()
>>>>>
>>>>> The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SM=
P
>>>>> is set is wrong. It passes zero to flush_tlb_range() as the final
>>>>> address to flush, but it should be at least 'addr'.
>>>>>
>>>>> Some other Linux architecture ports use the beginning address to
>>>>> flush, plus PAGE_SIZE, as the final address to flush. This might
>>>>> flush slightly more than what's needed, but it seems unlikely that
>>>>> being more clever would improve anything. So let's just take that
>>>>> implementation for now.
>>>>>
>>>>> While here, convert the macro into a static inline function, primar=
ily
>>>>> to avoid unintentional multiple evaluations of 'addr'.
>>>>>
>>>>> This second version of the patch fixes a coding style issue found b=
y
>>>>> Christoph Hellwig <hch@lst.de>.
>>>>>
>>>>> Reported-by: Andreas Schwab <schwab@suse.de>
>>>>> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
>>>>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>>>>
>>>>> :040000 040000 1a4ee20b3614c93de2a925bba2df6f2e1518f227
>>>>> 6b4ffd3e1a2245912cf734a8a3f61db7eb0ccd67 M arch
>>>>>
>>>>>> git bisect visualize
>>>>> eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end addr=
ess
>>>>> for flush_tlb_page() HEAD, refs/bisect/bad
>>>>>
>>>>>
>>>>>> git diff eb93685^!
>>>>>
>>>>> ```diff
>>>>> diff --git a/arch/riscv/include/asm/tlbflush.h
>>>>> b/arch/riscv/include/asm/tlbflush.h
>>>>> index 687dd19..4d9bbe8 100644
>>>>> --- a/arch/riscv/include/asm/tlbflush.h
>>>>> +++ b/arch/riscv/include/asm/tlbflush.h
>>>>> @@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct
>>>>> cpumask *cmask, unsigned long start,
>>>>> }
>>>>>
>>>>> #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
>>>>> -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
>>>>> +
>>>>> #define flush_tlb_range(vma, start, end) \
>>>>> remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))=

>>>>> -#define flush_tlb_mm(mm) \
>>>>> +
>>>>> +static inline void flush_tlb_page(struct vm_area_struct *vma,
>>>>> + unsigned long addr)
>>>>> +{
>>>>> + flush_tlb_range(vma, addr, addr + PAGE_SIZE);
>>>>> +}
>>>>> +
>>>>> +#define flush_tlb_mm(mm) \
>>>>> remote_sfence_vma(mm_cpumask(mm), 0, -1)
>>>>>
>>>>> #endif /* CONFIG_SMP */
>>>>> ```
>>>>>
>>>>> I was not able to revert this change from recent v5.5.0 so I don't
>>>>> know if this is the problem or some close commits:
>>>>>
>>>>>> git log 2b245b8b..2f478b60 |grep riscv
>>>>> 2f478b6 N 6 months ago Linus..Merge tag 'riscv/for-v5.3-rc5' of
>>>>> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
>>>>> 69703eb N 6 months ago Vince..riscv: Make __fstate_clean() work cor=
rectly.
>>>>> 8ac71d7 N 6 months ago Vince..riscv: Correct the initialized flow o=
f FP register
>>>>> eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end addr=
ess
>>>>> for flush_tlb_page()
>>>>>
>>>>> Carlos
>>>>> --
>>>>> ________________________________________
>>>>> Carlos Eduardo de Paula
>>>>> me@carlosedp.com
>>>>> http://carlosedp.com
>>>>> http://twitter.com/carlosedp
>>>>> Linkedin
>>>>> ________________________________________
>>>>>
>>>>
>>>
>>>
>>> --
>>> ________________________________________
>>> Carlos Eduardo de Paula
>>> me@carlosedp.com
>>> http://carlosedp.com
>>> http://twitter.com/carlosedp
>>> Linkedin
>>> ________________________________________
>>
>>
>>
>> --
>> ________________________________________
>> Carlos Eduardo de Paula
>> me@carlosedp.com
>> http://carlosedp.com
>> http://twitter.com/carlosedp
>> Linkedin
>> ________________________________________
>>
>=20
>=20



--OO2k7CBaKmHExyDa5TzfyXEXkM9a7Z1sf--

--FAweicYNqnAAAbiUcdRiwlb1tqqs1L6e1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoIn7Nqr72tWswTJQafeQFxohCYQFAl41B7QACgkQafeQFxoh
CYTl/g/9HbYyGzeYTGqvOyFSCcGVS4xuJQhF/ogqQajWVgV/eaPKjsTOAfgvCVrc
ri8gquzRqUe4O12uMzOreFFi7SojS19Q8kFAlc137JqT45C4gVKTxgfMQ1jum43r
uGEzx1nVMKjBUqnAiNtWWmFfp2AP1JBN9WJI3m3soEJF3hxflWYZHnYfZxuV+V88
5JoBZbXPBOzX/coqI9B21nizptzMVGlDFxuCfffwPqWQBtrnTSqf7zy7zY6T+Lm9
ku+Yl2FfhM9hnIJuos7cs8hgnA4sfxSydMc0Pn35f64zk4Q1s+qxyFJ4nHlS4llt
GwsCFVOXcKcP6VI9a8FRUppez9BbxRcxGFhfpYYty5jUEtttBYmY2E29ab7joSpo
qOKnX4W+smxHK9vNXnLnX6qSexRr5LrQMPmH0OvfQZZQEGaY7Y1uLrcIEwnIwII6
8T5v9lvM4ksi3vsX4OWDaUQfdgoD/uRoLvCG4DiHi7yeW+C5wILvdFM5jEDh+E6R
424RZYaEHm8Oa1pOKroeE4LUofUs4RM6ozYzbl9D1i89rCbukcK7WBx0XaaeOciR
7ROdzq/1wkLMPhMvGIZLxdNuKcdoKkJw3vyJu0Phzs/wyjV6NlKJSn+j+E/9Rd5s
oSPkRDpfGDbBI3fMA4cGJANt5jcntw+oDwBrBgbsEbkGg9uuOwE=
=PnUn
-----END PGP SIGNATURE-----

--FAweicYNqnAAAbiUcdRiwlb1tqqs1L6e1--

