Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5549214EE38
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 15:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=li8d+Q/UkxErLC9qiGRYXTsOSgON/kTxtuAUPsoFeHw=; b=I9bEVjpWLW+0Eg0k/2/Q9l9Ox
	uPOZC5JGCrBMcUHol94XwhYGN2cRR/lc2mivk/24fUIk1foA4pXruD2luLZMORgZj6u5zWTXphmL2
	HtNgs9JpEU8+prBEfSwcWc4Dx6iRxLGV8QCWkDQ+JGfb+eDMgGpHz1QtwYc+DkN0TY25dNrgWCp5s
	+pb5Eq/2UUDk1skwteixUNqVJkWZOsENvEUfkkAI2YbBh1cqaqti3XLv47FHX1u0aKJZOc4m82vR1
	T76aT8Sl8YPA1OmA7sKjooXYrAyAEiP9WhMZ6SA7GWHr/zQTkmlMiK6yiaGf3oWMNBzHQILy9H+0C
	V4hwqdrUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixX2C-0006xa-Hq; Fri, 31 Jan 2020 14:12:36 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixX28-0006xH-SR
 for linux-riscv@lists.infradead.org; Fri, 31 Jan 2020 14:12:34 +0000
Received: by mail-ot1-x342.google.com with SMTP id g64so6610610otb.13
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 06:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=li8d+Q/UkxErLC9qiGRYXTsOSgON/kTxtuAUPsoFeHw=;
 b=fiHtp2J5UjPlrQpt5QxyEd6bRUIT4eBCP1VbHgPHpMFfEBKOj/mtBMF36rQuavuYV5
 HG9SFWKExk3wyXE/aCAr5VXm8jNmPwDdrOU7aG/6QmPoVz+rzOMsRfqzkVlGMxn41LLy
 bGXS+bcqQWu1BJsiEobQ5iLEItmkmqi1nzR3KnxY3t4QKihX1+kAHhGQeeiLi19iiNi7
 yqIbwBymaNycD6b9Qfmyb7S7HWvZxUFYtt9ynGGTMDjF7Umib1io/v6vs89QhNiWqHwR
 jD9L91XZePnzlpvfdTA2CqLc7K1U/W8Y1BSbkKEboAnpAboP6ho2uGhdfLlKq4oo3UMz
 iGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=li8d+Q/UkxErLC9qiGRYXTsOSgON/kTxtuAUPsoFeHw=;
 b=hf+BWogYlmH7qWVE1XnT8WStbcxpO9A3sWzmL2piaVKyEM4Btm8m6c7WbBKLtkAXoW
 f9l0zcJD2anDFZXv4xZEkTRdLgasiPH4sb1n464YHBTRLS+vmu31lAve9Vv8JZ9Sjp9k
 MQIqsI6aa5dyYHmr2yJoZ40At3JmbviUe7dpfs3dvcm9yer0wGq9UfWgoZjp7au4kwk/
 kF9j6SquPgWMFyHcaiFVu4b9+nb2uZeh5v0EcQ09JDrjn40W6+zhFf7XW4QEhHIFO/6R
 H+knzrxNhi+z+g3wTAIe6wJdu/AxVfuESueWNt53K/ohkfabEWyHKTsqlyJvVbueFval
 Q4WA==
X-Gm-Message-State: APjAAAWq88FFhjQdt7qBxIPDC23oklavCO+NsZ+G35EoVQKBQRxBA6qF
 AuVsgbiLO665QIyqmS8yq6CZqxJoEUBvvg==
X-Google-Smtp-Source: APXvYqz8A499ynW5TcIrhUjziHqHh+Z8O2WoCHLf7woaDPlsR7atbNugDFnMKLousWew9iRhEuy1VA==
X-Received: by 2002:a05:6830:1d55:: with SMTP id
 p21mr7723598oth.145.1580479951456; 
 Fri, 31 Jan 2020 06:12:31 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47])
 by smtp.gmail.com with ESMTPSA id x21sm3047459oto.5.2020.01.31.06.12.30
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 06:12:30 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id i6so6657002otr.7
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 06:12:30 -0800 (PST)
X-Received: by 2002:a05:6830:4b9:: with SMTP id
 l25mr7849788otd.266.1580479950078; 
 Fri, 31 Jan 2020 06:12:30 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
In-Reply-To: <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 31 Jan 2020 11:12:18 -0300
X-Gmail-Original-Message-ID: <CADnnUqdK2RriaCmLTGmFfiGx02qVgwWGae2nZApbeVcSVDsmQw@mail.gmail.com>
Message-ID: <CADnnUqdK2RriaCmLTGmFfiGx02qVgwWGae2nZApbeVcSVDsmQw@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_061232_920872_18CAA55C 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Vincent Chen <vincent.chen@sifive.com>, Paul Walmsley <paul@pwsan.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I just built v5.3-rc4 (tag I currently use) with the patch pointed by
David (https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589)
and report that it works fine.

I've been able to load network modules (nf_conntrack, openvswitch and
others) with no problem. Also tested with Docker that requires
netfilter and others, all working:

> lsmod
Module                  Size  Used by
xt_nat                  4371  4
veth                   21849  0
vxlan                  71685  0
xt_policy               4248  0
iptable_mangle          2375  0
xt_mark                 1510  0
xt_u32                  2272  0
xt_conntrack            4517  4
xt_MASQUERADE           1893  4
nf_conntrack_netlink    48190  0
nfnetlink               8648  2 nf_conntrack_netlink
xfrm_user              39665  1
xfrm_algo               6723  1 xfrm_user
xt_addrtype             4589  2
iptable_filter          2484  1
iptable_nat             2669  2
openvswitch           194024  0
nsh                     3693  1 openvswitch
nf_conncount           11932  1 openvswitch
nf_nat                 41006  4 xt_nat,openvswitch,iptable_nat,xt_MASQUERADE
nf_conntrack          146281  7
xt_conntrack,nf_nat,xt_nat,openvswitch,nf_conntrack_netlink,nf_conncount,xt_MASQUERADE
nf_defrag_ipv6         10727  2 nf_conntrack,openvswitch
nf_defrag_ipv4          2538  1 nf_conntrack
nbd                    39492  2
overlay               137654  0
br_netfilter           22333  0
bridge                221254  1 br_netfilter
stp                     2801  1 bridge
llc                     6044  2 bridge,stp
ip_tables              17472  3 iptable_filter,iptable_nat,iptable_mangle

Carlos

On Thu, Jan 30, 2020 at 1:21 PM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> wrote:
> >
> > On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
> >
> > > I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
> > > network features I need baked into the kernel instead of modules.
> > >
> > > I tried building a kernel with these network features as modules but
> > > when loading some of them I got this error:
> > >
> > > root@unleashed:~# uname -a
> > > Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
> > > riscv64 GNU/Linux
> > >
> > > root@unleashed:~# modprobe br_netfilter
> > > [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
> > > addressed by the 32-bit offset from PC = 000000003dfd6deb
> >
> > This is a known issue:
> >
> > https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/
> >
> > https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
> >
> > Vincent is looking into it and I expect there will be a fix soon.
> >
>
> Is this patch solving the problem?
>
> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589
>
> It was incl. into
> https://github.com/bjoto/linux/commits/rv64-bpf-jit-bcc (not posted
> upstream).
>
> david



-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

