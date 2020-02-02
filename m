Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D8414FDC7
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 16:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:
	Mime-Version:Content-Type:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7nSp0k/1jVaYYSKgX75sR8Vc+QaNuVPC+j+fqymJNBE=; b=YpnXBC2VkXDoiRiW/wKQwVsDO
	q+9XCGk4bQqE0DB2lDQl3hF3Q/rm8CM0aqw3OSEkJ9gFc1FOHxh43/UKobhuByp4aDSAY2KNBvRCP
	5VuFSgVQoWJe08/TdnQCYZlARPOB84+mWTEjxqkdUaKhb3LW3mXTRM36OjBN+XEIAFrgNiNvsJp60
	PiF7DQtU7E+L/ebtUgoe+HwIac4j/h169jv6HYzVmIYDjLVN+V/TEuvdp4uMPT9Foxw8Cc3FS9FgU
	PVXxpgt9H1NVv7Tg0PsebJgs0R58PiR8EdJM9TYJBdK4PLQu1PdDShaSLbh503gDBE9WJEqShf19h
	q6kGnEgIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyH3j-0007cN-RC; Sun, 02 Feb 2020 15:21:15 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyH3g-0007bx-5m
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 15:21:14 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 10so10776830ywv.5
 for <linux-riscv@lists.infradead.org>; Sun, 02 Feb 2020 07:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=7nSp0k/1jVaYYSKgX75sR8Vc+QaNuVPC+j+fqymJNBE=;
 b=ZV4xzG3nBQbtgCMUSe/OglDZnvaJj6LP07dJb8Gtp64T2JPOPON4uZRgLsnG5Wbs3B
 nNitEEhLOs8sW1r+uvmlcfl7eQLkI1PD1rWYoP3SckiM08KyUQh3Mew2SovigoLYZ89L
 NYkXarQQFl6HPNEzUTKKT8mLKYJAO0DOcyq7vqZbrxPh9lGsxH2WOrCzJyMucYhalar+
 1u/zv1kIP2zIQ+T7vebimTYtgiBT4rnI6pzTs0HX5qbXkopYFFv9Ff78/gldXde+wFFs
 +BWS2916KUfvJGIeVU7d0knsruL6YjzCGaDdaAwH1XNZofraAWPgNeWqkIpsX8fJCp1z
 dMhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=7nSp0k/1jVaYYSKgX75sR8Vc+QaNuVPC+j+fqymJNBE=;
 b=glxcU8OIIJU2cqRf3RGPejiHPLeRgUcK7q6oY+MHZf83hI5ssG99lhBbI5MvnVGRvv
 wfpe7Mc2+/jBZTBawSXKfgBqcM2PAqgx3/Rn+H7CPcnn48Neli+VYkTUUuvIqguD0ZEV
 kE73diaSaeM4xUa+WenzmE0eRv/4TkjYHXkxAyLOCotyWTHsj+i9ks0IXfwLSf7ikvgT
 vVcNlvIJ+gAehhxt/KQ2dO4U0nCmyJq9cI3r6ev/vKxnWeEVBtXHiWyNERSxA9RSgxkU
 Op8HKLRpnmnNOeYkGfFbV5WX++USRQ07/QVNu8YjA++yAp5US6uJMOwMF9nTbBtps6g3
 YVxw==
X-Gm-Message-State: APjAAAXWNkG5w5ZLKyTSaQ25qil6/hafQrj0c0DWv+/cLBP6P6iTXNRS
 IwYiH4lhX2UAcyL0fEaFQHMiOA==
X-Google-Smtp-Source: APXvYqyq5bTO9juDHovRjSeadmpDxJp7/hBJBNgA8g2lMZMvu7xtK9xi8V+p65wMI/J5Olu/SZ9PdQ==
X-Received: by 2002:a25:b213:: with SMTP id i19mr4916997ybj.63.1580656869479; 
 Sun, 02 Feb 2020 07:21:09 -0800 (PST)
Received: from [10.44.0.110] (c-66-41-4-123.hsd1.mn.comcast.net. [66.41.4.123])
 by smtp.gmail.com with ESMTPSA id j68sm6952856ywg.6.2020.02.02.07.21.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Feb 2020 07:21:08 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Error on loading some network Kernel modules
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <CAAhSdy2skCD4NEt2i7Df5VVO6T+Uz1YmeRfXLN9KTreu45Z9ng@mail.gmail.com>
Date: Sun, 2 Feb 2020 09:21:07 -0600
Content-Transfer-Encoding: quoted-printable
Message-Id: <E675ABCB-5733-4BB3-9357-A384B7E94EAE@sifive.com>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <CAAhSdy2skCD4NEt2i7Df5VVO6T+Uz1YmeRfXLN9KTreu45Z9ng@mail.gmail.com>
To: Anup Patel <anup@brainfault.org>, Paul Walmsley <paul@pwsan.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_072112_251230_7478BD70 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Alex Ghiti <alex@ghiti.fr>,
 Vincent Chen <vincent.chen@sifive.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Do we have a good place to put a community-supported =E2=80=98riscv-stable=
=E2=80=99 tree somewhere that we can put stuff like this we need for =
basic functionality so we don=E2=80=99t lose it again?

I also feel like there=E2=80=99s a need to backport some patches like =
this to a -stable/lts kernel series, and 4.19 seems a little old to keep =
maintaining..

> On Feb 2, 2020, at 8:10 AM, Anup Patel <anup@brainfault.org> wrote:
>=20
> On Sat, Feb 1, 2020 at 7:30 PM Alex Ghiti <alex@ghiti.fr> wrote:
>>=20
>> On 2/1/20 2:52 AM, Anup Patel wrote:
>>> On Sat, Feb 1, 2020 at 1:41 AM Aurelien Jarno <aurelien@aurel32.net> =
wrote:
>>>> On 2020-01-30 17:20, David Abdurachmanov wrote:
>>>>> On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> =
wrote:
>>>>>> On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
>>>>>>=20
>>>>>>> I currently run stock Kernel 5.5.0-rc7 on my Unleashed board =
with most
>>>>>>> network features I need baked into the kernel instead of =
modules.
>>>>>>>=20
>>>>>>> I tried building a kernel with these network features as modules =
but
>>>>>>> when loading some of them I got this error:
>>>>>>>=20
>>>>>>> root@unleashed:~# uname -a
>>>>>>> Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 =
2020
>>>>>>> riscv64 GNU/Linux
>>>>>>>=20
>>>>>>> root@unleashed:~# modprobe br_netfilter
>>>>>>> [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
>>>>>>> addressed by the 32-bit offset from PC =3D 000000003dfd6deb
>>>>>> This is a known issue:
>>>>>>=20
>>>>>> =
https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-=
initiative.eu/
>>>>>>=20
>>>>>> =
https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
>>>>>>=20
>>>>>> Vincent is looking into it and I expect there will be a fix soon.
>>>>>>=20
>>>>> Is this patch solving the problem?
>>>>>=20
>>>>> =
https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e=
1589
>>>> I have just tried that patch on top of a 5.4.13 kernel, and I =
confirm it
>>>> fixes the issue. Thanks!
>>> I guess this patch was lost over time.
>>>=20
>>> First of all we need to rebase this patch on latest kernel.
>>>=20
>>> The MODULES_xyz defines are totally redundant and create
>>> confusion because with these defines it seems we are creating
>>> separate virtual memory region for modules which is not true.
>>> In fact, the patch only tries to ensure that modules are allocated
>>> from the end-of VMALLOC region.
>>>=20
>>> I suggest to drop all MODULES_xyz defines and implement
>>> module_alloc() as follows:
>>>=20
>>> void *module_alloc(unsigned long size)
>>> {
>>> return __vmalloc_node_range(size, 1, VMALLOC_END - SZ_128M,
>>> VMALLOC_END, GFP_KERNEL,
>>> PAGE_KERNEL_EXEC, 0,
>>> NUMA_NO_NODE,
>>> __builtin_return_address(0));
>>> }
>>=20
>>=20
>> Why restrict to 128M whereas we have 2GB offset available to the end =
of
>> the kernel ?
>>=20
>> I think the cleanest solution is to use the following range [&_end - =
2 *
>> SZ_1G; VMALLOC_END].
>=20
> I agree we should not restrict to just SZ_128M.
>=20
> You can go ahead and send a patch this (if you want).
>=20
> Regards,
> Anup


