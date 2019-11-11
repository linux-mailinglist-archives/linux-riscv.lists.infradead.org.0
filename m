Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7FEF71E8
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 11:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oz9ua9eL+MeoBF7oqit4iLb//2ioR1K9SoNAdiHxwnA=; b=eKSX6mHTtUAeWl
	JnIme8g+Qju2X0QSMeNu+oRn0ZFHFNNJs1mPR+aRbxAmUkaUFbhtrKzxouGuRNR4zmSKQPguk86JC
	jVVnaLVxDUKWVDjpI59kos1naIR0P4xl10ObANQviqfscvtGq+yTCRJ1XwMw8OQ1XbNOzOIBfMyPL
	a2iR0Kwsty44xks0XjGEi0YiiDsOO5AT8WJxN/En8EkgXEqhzRvwUixbn6vRaxetZBd1ivIQXYDgF
	Ujf9t/xZHNLLidNBY3Lpi5BAQT5BXJoyGsAQBX9DTgRYXYPANUSL7T+cOb1XAu4/0Mu8XLl55yfma
	YKZE6+ZAzQOHji7SiqDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6vn-0002WH-I1; Mon, 11 Nov 2019 10:28:23 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6vD-0002Mi-Ug; Mon, 11 Nov 2019 10:27:53 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MAwsT-1iaPNJ4BL7-00BMOw; Mon, 11 Nov 2019 11:27:45 +0100
Received: by mail-qk1-f180.google.com with SMTP id m4so10676129qke.9;
 Mon, 11 Nov 2019 02:27:44 -0800 (PST)
X-Gm-Message-State: APjAAAVOcaIXowaYWV26OnNq7OfHeOnLV2fRtEIOO0GSew5a98ZTMHYh
 mE+WuWLHN4Sxip34FD94sW/A42YP4l0l/bAyvOY=
X-Google-Smtp-Source: APXvYqyGcZLqyAcsV/LYDmC4LmwcrdvTKQ+w9XPWbssEa676VSOvhgPE+TuvbqMkbxFWBQMzT6WHPBHBJZYF9AVQbpE=
X-Received: by 2002:a37:4f0a:: with SMTP id d10mr9711437qkb.286.1573468063366; 
 Mon, 11 Nov 2019 02:27:43 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-11-hch@lst.de>
 <CAK8P3a2o4R+E2hTrHrmNy7K1ki3_98aWE5a-fjkQ_NWW=xd_gQ@mail.gmail.com>
 <20191111101531.GA12294@lst.de>
In-Reply-To: <20191111101531.GA12294@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 11 Nov 2019 11:27:27 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0rTvfPP2LUMw8EC0xz5gfZP5+NUkoaZBJrtYYfr6YRig@mail.gmail.com>
Message-ID: <CAK8P3a0rTvfPP2LUMw8EC0xz5gfZP5+NUkoaZBJrtYYfr6YRig@mail.gmail.com>
Subject: Re: [PATCH 10/21] asm-generic: ioremap_uc should behave the same with
 and without MMU
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:g9LlT8Z1JHlzLB6SNSfcO5sWp/l6U2N6RVGHBkyacWeU05aoYIN
 +hFxshQYDzrPC6c18BQZJc3mfAQTSf6iou6ij8jkt0ce+cDXyArfGGaE6XP6nLN/rvoq+TE
 mrEWISxLedZq5md78FxyL7YlCAtM4ljyuq3ZGLXtLTCOvAaoa5FyPWZDSLRuk4SG7Tvn3rh
 gITCvRxDQjCsF4+8CP09g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ra7eKRFULgs=:181SuxpQ2oHpLjUgLQ4Ikm
 OJ7kslICPvSPsSnnTLGheLfQwX5N96Rz1y69ZV1rtdkrUYppn2dw81yioagcbX0M9oXcxptFb
 gygm4EQ62RCWfRmIenWLs2MbL6pybRE2cdMCNntZ8E/JGFIIQkAhTNoUpDlJROPNrZgLo9Qwd
 +hEKo4TfaVkItYcOxBN/nTgZWv7qLd9lBJ4f50+5/FM7Et6dOcFtEVm+Q7z/2lq783K4tWF/r
 5L8K1oKhGqTNU7/k9DonTPwJ7HPSgOEessSxeFHd/BNqDJ8o+jWEVP6LGhJguLrx+Fxf6EXS3
 kWS2vLPwmC5pWMo7z9mJM3CTSzx35XoQOzxrE1hqjoeOwG5p6VTDeUFXWlMqEpqqzHlSii3Zz
 CrI0VOb02ijsDx6BrKUJaJuBZ0d2BHC5Tyax+LDjSxknYxp/lu63IRnTy2bM/uIipPZnqZ5hk
 CMpAfUD/1RsgshLrXCqG8A0yj+src+zL4k6AVHIDcuKoneQaNjFXkLA2AgjOwg9Wb9v0roR3s
 3hRCPBKTUl++7OPGBw14iPl3EgqXrcCGgg5r/6Kv3f7n+b3OjbY/lEwSKlHmYEc2mP0cJMhRo
 qi3918i4z4N3AeTuIe2jLG1qeF6UKMe2l70dxCDL6X7YMPryIje6dmPmvUG/chdsLZCh5udql
 3rtiVI0K0DI/uhUIferGIvR7dzHdZNjctrWroMej4uhqmxa/aTbdYwGsyXNTXCYoOWQiKHWk8
 6LodxYsLgI9YuRBxvfh5fFSWDumV/EyAtXb5hl/F6cbGYTPVkKx1G1de69gou5/jvVpsDixZA
 LmRgz3FeqARcuWLO3wQu7mtbUo4RymSgy9fC9GsWnvOfE/Wt84TAs5+dAo1xYS1S8PTOeakuA
 rVDLtiTX1KikAag1X1Ug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_022748_290080_0BBA46D6 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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

On Mon, Nov 11, 2019 at 11:15 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Nov 11, 2019 at 11:09:05AM +0100, Arnd Bergmann wrote:
> > Maybe we could move the definition into the atyfb driver itself?
> >
> > As I understand it, the difference between ioremap()/ioremap_nocache()
> > and ioremap_uc() only exists on pre-PAT x86-32 systems (i.e. 486, P5,
> > Ppro, PII, K6, VIA C3), while on more modern systems (all non-x86,
> > PentiumIII, Athlon, VIA C7)  those three are meant to be synonyms
> > anyway.
>
> That's not how I understood it.  Based on the code and the UC-
> explanation ioremap_uc always overrides the MTRR, which can still
> be present on more modern x86 systems.

As I understand, the point is that on PAT-enabled systems, the
normal ioremap() *also* overrides the MTRR, citing from
Documentation/x86/pat.rst:

  ====  =======  ===  =========================  =====================
  MTRR  Non-PAT  PAT  Linux ioremap value        Effective memory type
  ====  =======  ===  =========================  =====================
        PAT                                        Non-PAT |  PAT
        |PCD                                               |
        ||PWT                                              |
        |||                                                |
  WC    000      WB   _PAGE_CACHE_MODE_WB             WC   |   WC
  WC    001      WC   _PAGE_CACHE_MODE_WC             WC*  |   WC
  WC    010      UC-  _PAGE_CACHE_MODE_UC_MINUS       WC*  |   UC
  WC    011      UC   _PAGE_CACHE_MODE_UC             UC   |   UC
  ====  =======  ===  =========================  =====================

> In fact I remember a patch
> floating around very recently adding another ioremap_uc caller in
> some Atom platform device driver that works around buggy MTRR
> tables.  Also this series actually adds a new override and a few
> callers for ia64 platform code, which works very similar to x86
> based on the comments in the code.  That being said I'm not sure
> the callers in ia64 are really required, but it was the safest thing
> to do as part of this cleanup.

Ok, fair enough. Let's just go with your version for now, if only to not
hold your series up more. I'd still suggest we change atyfb to only
use ioremap_uc() on i386 and maybe ia64. I can send a patch for that.

      Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
