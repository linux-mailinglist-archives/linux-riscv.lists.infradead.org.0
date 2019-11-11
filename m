Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCFEF8039
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 20:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkv+2EW66ClcleaKYIj5isAKEes+RjYYWA201IlSY4I=; b=hFE+ySA0T6nHn/
	j6QqDZG1K3kCgwGnjY6dq6kQpt3zVU6IYTlRd1LRjVtSeT9fyKKQF9xDvlMigyE36eHqeoha4riYy
	UhSn511N+g0U5T00UeiRUY8HRBQa6TYhCjBTi9J+Xt/xI7D7RVOLVpcyTdflvEz5AYoVEn/Y49WH2
	yIyrxZeQl0NDZrJRYJrWkJRFe7nPEykSWnD4MtLKArwbKtv0lW6F/Of9z5U8AEByKhviMbzAP37/u
	U4jOqcwD21cVvb6q8FHPErjESmy6GbV7E+wQUDks69js00vfRPriGGf2NywrSslG+jM2m/sRG8qzZ
	I8/x6BuK3iCWj5SCE3lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFRh-0001oG-AU; Mon, 11 Nov 2019 19:33:53 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFRR-0001bu-ST; Mon, 11 Nov 2019 19:33:39 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mqal4-1i83mp1JtQ-00mcRG; Mon, 11 Nov 2019 20:33:35 +0100
Received: by mail-qk1-f174.google.com with SMTP id m4so12200354qke.9;
 Mon, 11 Nov 2019 11:33:34 -0800 (PST)
X-Gm-Message-State: APjAAAUm3OaeNlMLxZh4h+rF2AdeGNqTwJXQgTl8xCPDO7o4LT4RRTm8
 8p5KtOrc30b7BGOFsR1BG4Qs7tDPFLDV4Rew8pQ=
X-Google-Smtp-Source: APXvYqzRT3LvGe5JvZLYKm1upZpHxk2xc9ns43ZUwTpi/JlFXD7dYhA8+4Mt4XVDG2f3/qLjEL/Ms2I9EThmbgvV8Jg=
X-Received: by 2002:a37:58d:: with SMTP id 135mr2321779qkf.394.1573500813881; 
 Mon, 11 Nov 2019 11:33:33 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-11-hch@lst.de>
 <CAK8P3a2o4R+E2hTrHrmNy7K1ki3_98aWE5a-fjkQ_NWW=xd_gQ@mail.gmail.com>
 <20191111101531.GA12294@lst.de>
 <CAK8P3a0rTvfPP2LUMw8EC0xz5gfZP5+NUkoaZBJrtYYfr6YRig@mail.gmail.com>
 <20191111102923.GA12974@lst.de>
In-Reply-To: <20191111102923.GA12974@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 20:33:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2b=td4JhYOcK1jUshh8Mp-5_w4v+dAr_JjnH783=ptBQ@mail.gmail.com>
Message-ID: <CAK8P3a2b=td4JhYOcK1jUshh8Mp-5_w4v+dAr_JjnH783=ptBQ@mail.gmail.com>
Subject: Re: [PATCH 10/21] asm-generic: ioremap_uc should behave the same with
 and without MMU
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:XqHvjXsTTLtCO1MpI1zIKe4xvKa1W75U4RDv5wuFKa5vFjZF7zX
 /7s73j13+MeM4CjCKt/eYQRCZUZVo2r9fgvnwdypXYpe1KdjU9CsBMye7u3ZHnKUw4LdiPM
 p9RJZgDPhyJcatrsTpqAvldTCqGTMbGeyadWqu+kasaAR8q4NCxDu5X8q2btAhm+0GYU/Om
 iZk2U2rOrRWgF6vU+tu1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bYY3orYqOrE=:nQHsC0DpcC1tRug8l8pvFN
 1c0IydG+fsazx53qmPZqfmQzUDxunp18MLCV8p+RyUlwCpCv9HqM4UUwxi0wuse4UhvAQsBcW
 WTUaJNq3DcWnGxi30SSbM1GwPh1vlAoEfyLz0es6J3dd2sC59oW75tz4iuzewB0MOGyTl2NH/
 S/8Aliy03a/3kwxUOhyu5EyCJ4AUEC9KCugDu+51+2cpYDC7AE8ptPvfY8boJFXN6CQ8AOKNz
 U0GjPJPHbShNr3zxTfPl97c6poUzGQu0tOvqjFr08gaxRrqOPpL6O504S6+WbGYOo9/WqcBOe
 0dqg9/11+mrU3WN3ZIPyMuH/qyC+gjkNsAwZG1L2yd68vDJ6FibpaS3VKEKz+/ZrM/RzELVcw
 Y2X5ySGqxOVPktw9/bDam1HQpCNQfsXCTlJ4ILQtrkCIU6KoulRiXcldSp7MZT4+T/4IyvJLF
 m5T7wtBNZHcbGoxKdhHsIUxtlPeBzJ+Y6x+C65a2KKXnfM3u3IjCD5kGion3qwu2NU641fctp
 hOPmr6CzDl89lhZbem6t18cYq1cC5EsTj7NrdO1euqVHOZ4werx1B1AKPNWT2+ZUoHpdvmPSr
 IDMsvpIL2QfPFk8hzODlCILNQOaubWogzPDWvz2ymxDCH7tz9hHOFKfxnH1ulyOLb0PhP6O3W
 +6P9zjyvnRtzTSFShtNTGjYW5NTvNe9ZrJaPzwuh5XOMJ9H3nWYE9sdNU977njphP1X9+GtYp
 HO0Ac/b4RSdDdSUbltp2rWDTXv8hS4Snp4RNisRMAo74T0RhEy4vny1G3o8SBeANVQ+744pJN
 8fFEnrCQaerY0gfh2z1UKVh0j3oJCJRs5WRQyRBCpusTD8uCjS+trr+si2xoSHgYbWHss8lMa
 2/6c7pjsjoZjzu8snTzQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_113338_216645_269634E5 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
 linux-xtensa@linux-xtensa.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 "moderated list:NIOS2 ARCHITECTURE" <nios2-dev@lists.rocketboards.org>,
 Guan Xuetao <gxt@pku.edu.cn>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 linux-mips@vger.kernel.org, alpha <linux-alpha@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 11:29 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Nov 11, 2019 at 11:27:27AM +0100, Arnd Bergmann wrote:
> > Ok, fair enough. Let's just go with your version for now, if only to not
> > hold your series up more. I'd still suggest we change atyfb to only
> > use ioremap_uc() on i386 and maybe ia64. I can send a patch for that.
>
> I don't think we even need it on ia64.  But lets kick off a dicussion
> with the atyfb, x86 and ia64 maintainers after this series is in.
> Which was kinda my plan anyway.

I missed your reply and already sent my patch now. I guess it doesn't
hurt to discuss that in parallel. Anyway I think that this patch is the
last one you want an Ack from me for (let me know if I missed one), so

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
