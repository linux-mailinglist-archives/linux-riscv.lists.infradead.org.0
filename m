Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE4F1657D8
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 07:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IoF/TErrL3EvjRvBCzhTAIChqkOtbepfRoZzDkdVq10=; b=jp3JcLrCR8/4oW
	VqbSFAhxw+In6SvFWBdxjETCbU9w6sVVBgFQ3o/VqZJktq7Xixxa8Jj4z0MpF3Qw66/6Kgl+NYTL/
	v/p+zLtpAEVOT4/wUluly+z86paQaVPe2MEkPX+DH36/W3AVu64dQHeQfW1XLTxlZbzVRftfSkJem
	3THzEHqP0T4aukWQkpDyazm2oJIMXvjYG79e6ij0jOtcMMzBU5IlrOhrWdNZ3OvNYIbBTjpHUHHth
	i51Y7xrRuywisyXQlcscCMnZfo6hJdPz1BuH0oX6rk7NSCadvd0LQSYeuSxKqtpRm3iZ7qBExw0lS
	r4eXf+wgDa433TS6POaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fU0-0001l0-89; Thu, 20 Feb 2020 06:38:48 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fTw-0001kW-6N
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 06:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1582180714;
 bh=IZaF9lIz08KRl/asqd3u9HOCkvtSARv23F0zrhNrOPk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=iTWg9aiZSsYBwDYHCJpNt913iCI+2S7NWD6IECUv4ioFi0oR8hvWh8QKWIbw7HNIT
 oKMmrHWadXxDrKoqVTlpF+VZx3m/Ygf6t1wYYLAZk6LnvsJs/jlnjII9bdYN0u1Xwd
 mdAFwSMCblW8yFyud2BnFJJMjZcZTsiijt4uYEb8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.10] ([95.157.55.156]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MCImL-1jDht52du5-009AyQ; Thu, 20
 Feb 2020 07:38:34 +0100
Subject: Re: [PATCH v2 3/3] riscv: Fix crash when flushing executable ioremap
 regions
To: Alex Ghiti <alex@ghiti.fr>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <8a555b0b0934f0ba134de92f6cf9db8b1744316c.1581767384.git.jan.kiszka@web.de>
 <e721c440-2baf-d962-62ef-41a4f3b1333b@ghiti.fr>
 <b63e5945-0e31-940f-5ff7-6754ef5c034f@web.de>
 <441527ef-1fd4-ed98-8381-8902c4e05fc5@ghiti.fr>
 <74bd5c0c-cdeb-5498-2948-35f40600a8bc@ghiti.fr>
From: Jan Kiszka <jan.kiszka@web.de>
Message-ID: <2022e386-7a61-1efe-f56e-6489e84278b1@web.de>
Date: Thu, 20 Feb 2020 07:38:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <74bd5c0c-cdeb-5498-2948-35f40600a8bc@ghiti.fr>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:sOhBoOsdqWvbGkGda1fGNNbb8HNJHRq1u693UZUU9eBxlXqyuXj
 bbk8/lz7Qkvbr15E8LCP12FYdDDhM1aeYOeyhUWZQyzzR+1uzLj5pc9CWJMm2fAcLjSnTLz
 aonABNAjq6MPpZUqTtuuBqfFtZ1iNXQsjeYGCBo/aynu964zWYoadlOX7ECyuKUwRsEu4Cg
 nrzcjZHOOjMIJXN+3JCxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UYggpccX+yw=:0z8UlQR8MTttYMPMZqt4Fh
 iqIswOi94OnESMa8BXkCJr7qicCQ+x6TiVhwAXKXw8VlBqhQjNYEpZD8WybpWv9XN0dvd6op1
 PwOVAoJ5WJNnmn1etaLkT0qnz7QlYDZb9oaiZpsxSEdJ+Au168jS8yKZ2CUAKvEcJ9bqFX3s0
 u6szJfq3iK33+/JlZ9De6PVjt3HgiEAS3DMOHohJtkr/6Zs/cafNk+kffI8p3iW32JW8djp9q
 1GwmbA2YrwmKNzqTuow0f6Kb5ZiZf/qpDwJ5XNhlW5ZHABwIzwAo5Vt/d/wqsuTQVw3Ore+df
 RzfdaUW69ocgRglv3gyDsEFx1YRzQjcgppT9JNsytwJFXXw2kwyYXVjye2nQ7B3a9J1YipIe8
 x5oSDnqSTbNiKHD3vEO2mAnHU3ssB/xXHCpoNC3j3ip54KfnqSPV/pOiWjqtp4Dvmt4z5FzP1
 t+XB8V49ocWhxAPJ0g85yfPU+d8iUoCYtDeM3lfT2b3Wny/tIU3iIeB1JjlOFckZNLoNey48t
 zwuMpp2FuX7jncR5JQAKV92b06aQ2SrPZ5hyG2NCYN+R4T2mCKUDOXBNiTMC/9PXeVohKor0V
 nMwYqFJ2GmUfom4ZrNbILI+WC+h+RmAXxmBSLHYfsRIuyq4aQ0rj862B7KQ2xJeeLruZE94+q
 Vd78VzRXCF4Tw4885z98KjpiwOTV2pnX2K/qcuAgWqBkejpdAhlCgQHrt+JJRPtb3sq5ESbmw
 ubWCnCtQv7mEM3F4dRPO+eelhsFiEcE1v++u6fW/vseO8KaGzpi07L4us51oP2jr1VPhtY6dE
 72Z7MMNHZgVpaGDXQS52vYXQ5jUdZ5bzk2pUqnvIlGGigXu6B7Cj83gX+R4hjkDcrOVmvYz3x
 b2E+uu0lh/Ls8JNgsbSGI+VjbrytdB+spKB+P3T2LxCIOQdp1/2crpo546WiDHambE6muc0Li
 XoPxh/0YADpDtzVcnwwv/zMppUsYIlK7J/LDQXeQ0wyQIS4x28LCtLxveF8UNWwnYFQDRkB4I
 bB20OnYYl4Z3wsSxJ/oi7AjzIavFpHsSpggrWuzHZbEr371Sx1zgzWmRXGoZl8MWke453vEra
 eiR362dUGV1E1hHJ0Qa8lZmzMQKAlduSvDgbNk3w/HnZLhusUs3miv8obOYO8U96cYtf3EkMw
 Bh4wD5SIdtXxDW1JYVIr208HLoBsaFE1LYKNEOEX+hxJ4uXmWA+1yCdzXweWw9tMdphf+9q4k
 20eOKyknyaUxhJDlm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_223844_580183_F8F37B2D 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.kiszka[at]web.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 20.02.20 06:49, Alex Ghiti wrote:
> Hi Jan,
>
> On 2/16/20 2:56 PM, Alex Ghiti wrote:
>> On 2/16/20 11:05 AM, Jan Kiszka wrote:
>>> On 16.02.20 15:41, Alex Ghiti wrote:
>>>> Hi Jan,
>>>>
>>>> On 2/15/20 6:49 AM, Jan Kiszka wrote:
>>>>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>>>>
>>>>> Those are not backed by page structs, and pte_page is returning an
>>>>> invalid pointer.
>>>>>
>>>>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>>>>> =3D2D--
>>>>> =A0 arch/riscv/mm/cacheflush.c | 3 ++-
>>>>> =A0 1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
>>>>> index 8930ab7278e6..9ee2c1a387cc 100644
>>>>> =3D2D-- a/arch/riscv/mm/cacheflush.c
>>>>> +++ b/arch/riscv/mm/cacheflush.c
>>>>> @@ -84,7 +84,8 @@ void flush_icache_pte(pte_t pte)
>>>>> =A0 {
>>>>> =A0=A0=A0=A0=A0 struct page *page =3D3D pte_page(pte);
>>>>>
>>>>> -=A0=A0=A0 if (!test_and_set_bit(PG_dcache_clean, &page->flags))
>>>>> +=A0=A0=A0 if (!pfn_valid(pte_pfn(pte)) ||
>>>>> +=A0=A0=A0=A0=A0=A0=A0 !test_and_set_bit(PG_dcache_clean, &page->fla=
gs))
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 flush_icache_all();
>>>>> =A0 }
>>>>> =A0 #endif /* CONFIG_MMU */
>>>>> =3D2D-
>>>>> 2.16.4
>>>>>
>>>>>
>>>>
>>>> When did you encounter such a situation ? i.e. executable code that i=
s
>>>> not backed by struct page ?
>>>>
>>>> Riscv uses the generic implementation of ioremap and the way
>>>> _PAGE_IOREMAP is defined does not allow to map executable memory regi=
on
>>>> using ioremap, so I'm interested to understand how we end up in
>>>> flush_icache_pte for an executable region not backed by any struct
>>>> page.
>>>
>>> You can create executable mappings of memory that Linux does not
>>> initially consider as RAM via ioremap_prot or ioremap_page_range. We a=
re
>>> using that in Jailhouse to load the hypervisor code into reserved memo=
ry
>>> that is ioremapped for the purpose. Works fine on x86, arm and arm64.
>>>
>>> Jan
>>
>> Ok thanks, I had missed this API.
>>
>> Regarding your patch, I find it weird to do anything if the pfn is
>> invalid, we could have garbage in pte pointing to an invalid region
>> for example (I admit that the effect of flushing the icache would not
>> be catastrophic in that situation).
>>
>> I'm not saying I will come with a better solution but I'll take a
>> deeper look tomorrow.
>>
>> Alex
>>
>
> I took a look at the Jailhouse driver. After loading the hypervisor into
> the ioremapped region, it explicitly ensures icache/dcache consistency
> by calling flush_icache_range here:
>
> https://github.com/siemens/jailhouse/blob/master/driver/main.c#L505
>

Yeah, the arm64 port needed this.

> There seems to be an implicit (?) rule that states that in-kernel code
> modification must handle icache/dcache consistency:
>
> In arm64 set_pte_at definition, they do not sync icache/dcache when the
> pte is kernel:
>
> https://elixir.bootlin.com/linux/latest/source/arch/arm64/include/asm/pg=
table.h#L271
>
>
> In mips, they do the same:
>
> https://elixir.bootlin.com/linux/latest/source/arch/mips/mm/cache.c#L137
>
> So funnily, I'd do the contrary of what you have done, the mips way:
>
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 8930ab7278e6..c90c8bb49109 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -84,6 +84,9 @@ void flush_icache_pte(pte_t pte)
>  =A0{
>  =A0=A0=A0=A0=A0=A0=A0 struct page *page =3D pte_page(pte);
>
> +=A0=A0=A0=A0=A0=A0 if (unlikely(!pfn_valid(pte_pfn(pte))))
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> +
>  =A0=A0=A0=A0=A0=A0=A0 if (!test_and_set_bit(PG_dcache_clean, &page->fla=
gs))
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 flush_icache_all();
>  =A0}
>
> What do you think ?
>

I wouldn't mind doing it like above. I suspect that became the common
simple pattern because no one expected a use case like with Jailhouse.
But I'm by far not an expert in mm topics in the kernel.

Jan

