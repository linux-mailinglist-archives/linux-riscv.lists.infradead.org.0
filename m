Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B479414F71F
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Feb 2020 08:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AGB/mXvOb7ukYOCivTjRHRgyQgTwClXYxdHAD9jeTIk=; b=k5vEOxk/HKFGR0WEJIirvC344
	KR5p0A/vF3HwNRXEgbe5rMZnIViBT+BSwW7xrayQtszTwFZS60KFLg1vCcxPcg2uLdrkYZZerisoI
	666QPNQRsdEvZY4vh3dcfu8FBqRrrEtgzZnsCbpiIC61A3wx6o77rznRksCCNWJLRtUyTfNCeRxJC
	PqkBJGvtAmw3EMZT+EihLRvHiWODiVGBaqYacwA4oW4H6mn8jKXAP4pO714aWv4O2RA6RUvVRPWMS
	LtMWt4deEDAGnIcfWD6UIeRe40b+g3l9scKTuqismk1tkWkrWY6U/9xejeJbN/JCDKduLR4o+FeCy
	fd/V2tkgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixna4-0000ue-8R; Sat, 01 Feb 2020 07:52:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixna0-0000uB-7a
 for linux-riscv@lists.infradead.org; Sat, 01 Feb 2020 07:52:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id m16so11294020wrx.11
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 23:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AGB/mXvOb7ukYOCivTjRHRgyQgTwClXYxdHAD9jeTIk=;
 b=m9hWeVeD9AYMvdCeVDrcebrzuh2/l+lw2Oh7NhyMI2Qk6HRShl9q+D6kW8FHxA73Aa
 7OGf8ARoSSpf1XM/H3We8Lk0B/W4rHWfwLfaqNaAJRIs+crbMmh9ez1dnli28ePLGPY2
 s4x5Iwa+wEmbwPSE67hhYgWBUh05PsEJLWEeDMzBNU6/+m4Gfvl8oPx9L/WSRhIYUwUb
 kuVw4HZP9RsQA9qOoj9f5trSiXQ0K+TJLaIcTPsb9MUaTO7zsj+fyf9oc5nIteIryos5
 JZjS0t7ymOfqWKCrDvLMYdINLuzxLQSPJj81uI9m7YmsKOa52M7kaHH8RbIh2Ardvdwf
 egrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AGB/mXvOb7ukYOCivTjRHRgyQgTwClXYxdHAD9jeTIk=;
 b=B9UBzQF4gG0wCSLd/HBsVMz+oFI35ZvyBcwl8n36YbX6aFNyTKHweqX7Wo2Tuk1ELY
 kfQT6ZJK6EeyKtmhRiHhs9jiMycMhZZVu2HsXEF/76f/1J7cEvqeNrpdGi5NMn8baEAW
 xEZE0DpluST6rfQEmuhg+0UCElofdvV+BBag29WMMWuam+wYMYzp8t/UwCo7PYcyfFDy
 8s0P46w9nqHdpWIa3qe/VUJFhVQN+AON5mYC2OvVW27A6bXxRLgVSVTdKCvqFztDqlhE
 gaIumSVlE4/2M6uE1hqLrH5LqXpMCQdf3kX2JAeVaviD40i5fIftjsJemiWbgF15ddoW
 z4yw==
X-Gm-Message-State: APjAAAX4roUulwiimHXgTTkIHtKwcQ8E/QkNcpijtVQ3UDvLgKmP2pre
 /LSqyHyvY1d3LhW7GxUteNIcbHs5lucAyJ9YgX9R8A==
X-Google-Smtp-Source: APXvYqxjXOP7xKONmv7dLv+EKBBe2bhzNTjEppCavYbYtQITXZH8Z0EkX47CJ4Zv7Njo/T+wMNinjj62x9lN6YDIRl8=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr3412086wrv.358.1580543553633; 
 Fri, 31 Jan 2020 23:52:33 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
In-Reply-To: <20200131201118.GA4121429@aurel32.net>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 1 Feb 2020 13:22:22 +0530
Message-ID: <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_235236_299110_9E210BDE 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
 Paul Walmsley <paul@pwsan.com>, Vincent Chen <vincent.chen@sifive.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 1, 2020 at 1:41 AM Aurelien Jarno <aurelien@aurel32.net> wrote:
>
> On 2020-01-30 17:20, David Abdurachmanov wrote:
> > On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> wrote:
> > >
> > > On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
> > >
> > > > I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
> > > > network features I need baked into the kernel instead of modules.
> > > >
> > > > I tried building a kernel with these network features as modules but
> > > > when loading some of them I got this error:
> > > >
> > > > root@unleashed:~# uname -a
> > > > Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
> > > > riscv64 GNU/Linux
> > > >
> > > > root@unleashed:~# modprobe br_netfilter
> > > > [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
> > > > addressed by the 32-bit offset from PC = 000000003dfd6deb
> > >
> > > This is a known issue:
> > >
> > > https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/
> > >
> > > https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
> > >
> > > Vincent is looking into it and I expect there will be a fix soon.
> > >
> >
> > Is this patch solving the problem?
> >
> > https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589
>
> I have just tried that patch on top of a 5.4.13 kernel, and I confirm it
> fixes the issue. Thanks!

I guess this patch was lost over time.

First of all we need to rebase this patch on latest kernel.

The MODULES_xyz defines are totally redundant and create
confusion because with these defines it seems we are creating
separate virtual memory region for modules which is not true.
In fact, the patch only tries to ensure that modules are allocated
from the end-of VMALLOC region.

I suggest to drop all MODULES_xyz defines and implement
module_alloc() as follows:

void *module_alloc(unsigned long size)
{
return __vmalloc_node_range(size, 1, VMALLOC_END - SZ_128M,
VMALLOC_END, GFP_KERNEL,
PAGE_KERNEL_EXEC, 0,
NUMA_NO_NODE,
__builtin_return_address(0));
}

Maybe we can even have a kconfig options for MODULES_SIZE
which can be used in-place of SZ_128M in above code.

Should I send a patch on latest kernel ??

Regards,
Anup

