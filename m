Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B4F1604B0
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 17:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZlY5jXxovnVpKhXenFIH3sYVC3V8sCSqoLKnbMBfrg=; b=LS3lYy2yuPKgwp
	pU1c6vcEnH3SsTZI8hm9GWybfyfSuwqyOtNot+FmCsvvrS78JpDuAMtFm70Tp7Ga5Iz2sPsWq6ozB
	Y60tO1wA4AhsmVaZdZgU+xCx3goIJV8UOI63VepmuRQQSTw0ODBq9wJTJLj/6/k6UoZfJKJkisbsE
	NsJj+tQhU5lTBNyn62gAzJxIW+dvbbHusehQUzirx1lsjmfxFcfnGBfZ1mEiIAzVJB3+0+dary/mj
	+hF+eeqdSRvhHdOwpFT0Din/jexbF676LIKG+k2UuB7FSFRijEyxDCCiAjvTiRclwyPC6jDxHA5Iu
	2GdOwoUOG5iYrSKgM2KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3MQq-0006iL-BE; Sun, 16 Feb 2020 16:06:08 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3MQl-0006hs-Lv
 for linux-riscv@lists.infradead.org; Sun, 16 Feb 2020 16:06:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1581869156;
 bh=MZlY5jXxovnVpKhXenFIH3sYVC3V8sCSqoLKnbMBfrg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=KMyaulILEc0ViK1SjeBPOF9a98z71AIW87x+3leMPx3lnAgzGJ9l/h1G3DMapurvr
 DP0fHiGoXftlHgzqMeJjBBp2nCeoHTTy5j84XSqavLH9x4nW/bmzLVuGh/I0ILEMN3
 ZzpNoX3i3CC8Gi5AazB9hKuvNtHe78hcPBeGEQ/g=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.10] ([95.157.55.156]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0M4lkz-1jO4FN2tjh-00ywOb; Sun, 16
 Feb 2020 17:05:56 +0100
Subject: Re: [PATCH v2 3/3] riscv: Fix crash when flushing executable ioremap
 regions
To: Alex Ghiti <alex@ghiti.fr>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <8a555b0b0934f0ba134de92f6cf9db8b1744316c.1581767384.git.jan.kiszka@web.de>
 <e721c440-2baf-d962-62ef-41a4f3b1333b@ghiti.fr>
From: Jan Kiszka <jan.kiszka@web.de>
Message-ID: <b63e5945-0e31-940f-5ff7-6754ef5c034f@web.de>
Date: Sun, 16 Feb 2020 17:05:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <e721c440-2baf-d962-62ef-41a4f3b1333b@ghiti.fr>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:4IYkYoTip6rhKbBbR3p45GwgeQBDPssEbOY75DgUV5s0zWnKyf0
 /xbkS6vPCX50+OITwD3eb3uAo87TZJvAW3LpnZXgsALeRQfWGvJHoU6LUBLgJI7bjbzFoSv
 qVOUmoJr7OI59ePFab4bMeymQ8p/fZFDG9pIq0dzd5fCPpVrjlxo8RQHkbaMl7cRTaApIvn
 ggBPQKU+Rd9hUusHBcXYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+wWHqJLZyLs=:6QTPINZQciCeoWt1mjpoif
 U0g4M0oP+tuEm0imgfgwvi+9PJsPduQv1+os4sPFys5GYlx22fgSjghLYtewimO19gTUj++Ze
 vFYGKdCMmh8c0CwowbhJ6vv5kxVRObsvoWdGJ2v/0dO6Wxtf8136fOtSNd6gPJbQz3vheannA
 s31KAgPiF8M5LSKv/4vkiIgpANe08i2+JOFHS+X1XfZX9HLe3bQrnRnns2H6zVBzaH0vl1X/F
 IegofJz+Y/WqBsDLVT95hyGVBrkuhotjHpTfOEWFU2o5DxmEMG/k0NgmlIDaub4pdBGVX8i8d
 Kaq471l4qrlCoRdU/gBWWbM863QsnaK/IsVZRrmN18fz+SBdxZzCDiErkkMqFq7jca8vL8OXf
 aSs/o9OcxNGsFDgRzMDFv0H/2Ke7Z0mSVSZ4thoPOMSX6JlFpfw62kbIfUJCinAXVhn4Kv4gq
 bFdl5KVmDZuteLEsWKSYaqEQJk8yjYYsu6jW9cJ+j3yHF+Q+7OF8+Nx7ABQqZMISdpjBhS6NE
 ZxTQQCs17ET6UnHjfwm98cG3xh1MOJC6CBuDJvKP71Z57fQ95eDvPgH8o0M5v8CChWIAm61fZ
 vb8S3Yw6iXamhgDyafgIX9omDeih/OpJ9OWLeXi1jLQrKR01vOe7plN/S91ypR3/HCE56piJZ
 y0UKbMnmkwqS72OmAvNKnE6uJMteWfvngp74RhMHbrMZ/+jLGRM+pyiWpeBtTs+Fe0q3oGv21
 BIegb++mAf141DNIW5MJ7RnfSLrXSBScbFjGN/9g/9uaXy8di2NoNZ03v7mWaxzQtrh2dnwhs
 //bFXJud+4U6AKZiouQmQzZ/PRqr8Ylj6/FgieoD3jLIILgtCc2uaUxxqertGOXccCIQkRoJH
 mwB9RnCfTrgodaU8yaLD0ulKHtRE94MA32Zp4JBkZnCyU7oaqnjZY5fZWrzcDJ58p5X1eJmbK
 giJsp0ramTrp08SE7Zda26mRnSaNTOsDT/yoYlUuCS+gH4JFUniGmUOHhh2gObTcldodWc9R6
 GADiM9NJwBKXXqhaQ5ia4DgyPuti30oR5xQ9KHNFz3Waz+J6fbmgdjlh341pMkKJQk3GK52mw
 /3odEAfk2fq+7XNl+Wn/ubLONRXgYr6zIScH+0GmKWds49hS1AJq5WMHRbk8xo2sxZertduj1
 hvuouF+o6zXkCAXdLGopYaW4G5EiWZ9u+HJze6eeCxdaMgcVYrSYz0svCU4XUtXwgUulSIX3g
 c/wzbauloWjIWvmENOgeFVFIDCIlfzxtT5rHtvgMmrzUWW1s0JDuVQ4OGfwgwbddQdSTdYiw3
 Gs0R5gAf3MVoK7jf4pPxEoAB9uFtirYWuJzI5yJ7xUn9qDi2yJpPO904u0E+i7ww/ELI/pAu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_080604_052859_AED47B77 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.3 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jan.kiszka[at]web.de]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 16.02.20 15:41, Alex Ghiti wrote:
> Hi Jan,
>
> On 2/15/20 6:49 AM, Jan Kiszka wrote:
>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>
>> Those are not backed by page structs, and pte_page is returning an
>> invalid pointer.
>>
>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>> =3D2D--
>> =A0 arch/riscv/mm/cacheflush.c | 3 ++-
>> =A0 1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
>> index 8930ab7278e6..9ee2c1a387cc 100644
>> =3D2D-- a/arch/riscv/mm/cacheflush.c
>> +++ b/arch/riscv/mm/cacheflush.c
>> @@ -84,7 +84,8 @@ void flush_icache_pte(pte_t pte)
>> =A0 {
>> =A0=A0=A0=A0=A0 struct page *page =3D3D pte_page(pte);
>>
>> -=A0=A0=A0 if (!test_and_set_bit(PG_dcache_clean, &page->flags))
>> +=A0=A0=A0 if (!pfn_valid(pte_pfn(pte)) ||
>> +=A0=A0=A0=A0=A0=A0=A0 !test_and_set_bit(PG_dcache_clean, &page->flags)=
)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 flush_icache_all();
>> =A0 }
>> =A0 #endif /* CONFIG_MMU */
>> =3D2D-
>> 2.16.4
>>
>>
>
> When did you encounter such a situation ? i.e. executable code that is
> not backed by struct page ?
>
> Riscv uses the generic implementation of ioremap and the way
> _PAGE_IOREMAP is defined does not allow to map executable memory region
> using ioremap, so I'm interested to understand how we end up in
> flush_icache_pte for an executable region not backed by any struct page.

You can create executable mappings of memory that Linux does not
initially consider as RAM via ioremap_prot or ioremap_page_range. We are
using that in Jailhouse to load the hypervisor code into reserved memory
that is ioremapped for the purpose. Works fine on x86, arm and arm64.

Jan

