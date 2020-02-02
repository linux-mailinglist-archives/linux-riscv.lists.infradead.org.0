Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DCE14FD76
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 15:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lt9jcHZg3lPKTbC/3Qk38lHjOjn1foRUIyFUaewdeRQ=; b=P2s1uh2V3MJTSbIW1j5x3x63e
	sDU8fRIX+o8dhy7D/joVurVItIfL3RI+beNyu/qwh+9WilOTwn3BDt0fGvNA+4HcpRA8YtmfjE159
	VZo3aV6kvQtoW4Ikc95XRbWtNtJoROSVvvVdMx1XBECSbTg3xO0ej4yQWEJeaNtN1zWsMYEoRkbLM
	0VRhSgq7WRE60u4u7TecnqPx5r+Xo2tT5B5hNIErOktw7NUHvMOjEeUyWJfquFLYkShN+67V+Lz32
	QGem1JS1W+i57lhyEcFL//P97hzdWSjFphai2pBBRZu1ZEeB09rfS50iEl7pWf5OVFx2zL/pVstVJ
	M5UtuTUpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyFxA-0003kw-Ku; Sun, 02 Feb 2020 14:10:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyFx6-0003kS-Pn
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 14:10:22 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so14010179wmi.5
 for <linux-riscv@lists.infradead.org>; Sun, 02 Feb 2020 06:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lt9jcHZg3lPKTbC/3Qk38lHjOjn1foRUIyFUaewdeRQ=;
 b=wlXFym4DLgRQqTmF32X/MztWxwABOaWpalbZjc668wkxaroX9xdDsop3DzM5h95C+s
 lz4lB0Iqkx8D8ovIrL8VTf1RbjPNuHIwKiOgfzrY+22Ga/cLUloHiXHHIR98arwO6ljm
 tI459F62REmOawJxZSX4AmDPgdlHpoNtD+YKYCPhI+neoAyGyYFWGj9XuIgvEWE/oBgs
 3de9i4tdRrzcwAae31pnvipSKGFaMY0foLm7WqVPUV5QU4oF/8+GmhfrEL88bcM5bJbb
 pcK+p35zq+vsM1smg6uAMkKrw7Q5a99hgnQlChNIFCEgPCrFdz2JjZda0HMgs2tRhXrD
 Vi1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lt9jcHZg3lPKTbC/3Qk38lHjOjn1foRUIyFUaewdeRQ=;
 b=aJiTHRBH1ZExEwnyYSHvh53m2NbWCPaAkLZmWNbgCjcZr0nReGiON90EeVNxG4OcaX
 Hp8gtixYwJfPoG5PdwYrJlKA4Qt1nTsDuj3B382KoOL7r6Ve92nz2bs3jvA8xeLQrGQ1
 mlBt7AonocMOu6SaYyarpUH6kJSOsUJCWYqsYkjRkSjqA6dr2wExdMd1Ac9sz52Nmd3H
 tNY/3mYG6qcQDuRdiDD4aB5GtrAtbct3rJ+Lafix8OThMJx2WbpnYLD0ttKoUPdYuDIA
 /qDMo78JpwOBtyIBPjJLfbtXry4/w2Fx4CMim/OwtaeiYPZ/7ZvTgdFbSSAjkW1GEQDw
 pnrg==
X-Gm-Message-State: APjAAAXIWpVLfOOBRyCMOCpED1X8pGEwcejBfDnPKMnnjugfl+k59IYB
 m+wuZpgzzLxpJ2+82HfK6I47cAEsJnEvEZ6yRdNriQ==
X-Google-Smtp-Source: APXvYqx1BdyR7bBXu1qfw44p0Bv7bNHkh04fp8J8P2yw/8eCCcWwqR6GTbWM5+ZDWuhToCNt4LH5so0CSB0h0ZOhrW4=
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr24931336wme.26.1580652618727; 
 Sun, 02 Feb 2020 06:10:18 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
In-Reply-To: <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 2 Feb 2020 19:40:07 +0530
Message-ID: <CAAhSdy2skCD4NEt2i7Df5VVO6T+Uz1YmeRfXLN9KTreu45Z9ng@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_061020_976229_C1D94EF4 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul@pwsan.com>, Vincent Chen <vincent.chen@sifive.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 1, 2020 at 7:30 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> On 2/1/20 2:52 AM, Anup Patel wrote:
> > On Sat, Feb 1, 2020 at 1:41 AM Aurelien Jarno <aurelien@aurel32.net> wrote:
> >> On 2020-01-30 17:20, David Abdurachmanov wrote:
> >>> On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> wrote:
> >>>> On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
> >>>>
> >>>>> I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
> >>>>> network features I need baked into the kernel instead of modules.
> >>>>>
> >>>>> I tried building a kernel with these network features as modules but
> >>>>> when loading some of them I got this error:
> >>>>>
> >>>>> root@unleashed:~# uname -a
> >>>>> Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
> >>>>> riscv64 GNU/Linux
> >>>>>
> >>>>> root@unleashed:~# modprobe br_netfilter
> >>>>> [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
> >>>>> addressed by the 32-bit offset from PC = 000000003dfd6deb
> >>>> This is a known issue:
> >>>>
> >>>> https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/
> >>>>
> >>>> https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
> >>>>
> >>>> Vincent is looking into it and I expect there will be a fix soon.
> >>>>
> >>> Is this patch solving the problem?
> >>>
> >>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589
> >> I have just tried that patch on top of a 5.4.13 kernel, and I confirm it
> >> fixes the issue. Thanks!
> > I guess this patch was lost over time.
> >
> > First of all we need to rebase this patch on latest kernel.
> >
> > The MODULES_xyz defines are totally redundant and create
> > confusion because with these defines it seems we are creating
> > separate virtual memory region for modules which is not true.
> > In fact, the patch only tries to ensure that modules are allocated
> > from the end-of VMALLOC region.
> >
> > I suggest to drop all MODULES_xyz defines and implement
> > module_alloc() as follows:
> >
> > void *module_alloc(unsigned long size)
> > {
> > return __vmalloc_node_range(size, 1, VMALLOC_END - SZ_128M,
> > VMALLOC_END, GFP_KERNEL,
> > PAGE_KERNEL_EXEC, 0,
> > NUMA_NO_NODE,
> > __builtin_return_address(0));
> > }
>
>
> Why restrict to 128M whereas we have 2GB offset available to the end of
> the kernel ?
>
> I think the cleanest solution is to use the following range [&_end - 2 *
> SZ_1G; VMALLOC_END].

I agree we should not restrict to just SZ_128M.

You can go ahead and send a patch this (if you want).

Regards,
Anup

