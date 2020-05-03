Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD361C2D1B
	for <lists+linux-riscv@lfdr.de>; Sun,  3 May 2020 16:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GyoGOzeD/a39cCWOQMMMe9JJ2IxthRQrhCJp6EhH6sw=; b=QB5iDFdqd/Lo1lKEfjcGMZHyT
	7aQYOeb0XFu8sY6wxaKqInnGA9IHcQVwwhZXHVooVY4BQvL1Vxj1hpljZimovkWjKX+p3EYqVesGt
	Vfod2Z2PDb3E2Y+Gd8LxDha8jxLGAkp/OyMCoItVE1/icIxoAF3I54t9q8dyNkIAL9SGzndydFEbr
	nFeAHIQJttEMCx3Xtf1D/6Wi5qHjXKZI2xKBe64tdcTLkqIwMoD/gqtWD9w8CVs7GLwFZnTB4Z+Kj
	rD7HL7SuMvQfuxUDFq0jbU8/bG9JuEGnYb1/AzVJ0ilG8MVLVenxhe/PUEnHfS1pWuClP1ebanAPL
	zfNLeQCpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFwn-00046L-FI; Sun, 03 May 2020 14:50:25 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFwj-00044W-8I
 for linux-riscv@lists.infradead.org; Sun, 03 May 2020 14:50:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id h11so5736766plr.11
 for <linux-riscv@lists.infradead.org>; Sun, 03 May 2020 07:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GyoGOzeD/a39cCWOQMMMe9JJ2IxthRQrhCJp6EhH6sw=;
 b=ujlgKrQf5btOCO6PolxwyEVhyNozCdLOhTU/xCGHbmnPKLTfSgTNMBBIdE0gSX8OCG
 Ofm0JPJqx28y/LinlsX4uamV7kHkGJH/6on+zgn7Gyj1+9uN0lWyRxLx7EK93DLZMLEW
 LUx7HhaILJLARKsg8X3+ENZm7stknFaBDqmsVtywNtF9YyUYUK0bBVvzEKOiSvKfsTx1
 7Up5g6xBOyY/2cevb5B28L3epRJggDc6PnM5AHfuRQYajNlsDo7HNgu5whz1QSDcI402
 0xaF4IUiAttPZ9KNw28KKxiH2I19TvPIUgk4mxyKudJPYFaroz6fWoqT2UVhrTacl6p2
 BFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GyoGOzeD/a39cCWOQMMMe9JJ2IxthRQrhCJp6EhH6sw=;
 b=DN+EGeXPqHt6dS0NSpaVK/nNJ7gk5U+DSJXCLTHVsKAAU4mHeCkTUdBcgpPdIl12JO
 n6ZxkCtayNuE0g97v7xEs7RjUilLDbtX9KSWXE4h1D+N+dslYSPhPFOYHM/H8kKomMqu
 D8pt/IcMxdKFCGpu0Rqrr43QJciYwa68Qi7Xs1QRy9lR3Ymkvs2cLrMQJ0P14F/SSfg/
 2MSQZ2B+NvRGSpaCyCFcOvdYWUB2uUIGiUVHaPUeqKCS6J0cFkltTwhC6/mjH5lHtZAI
 ghXzavBOM9zDrAy0fJcnuz0lAOqF2KDn+fzH5RqyUUyfErqGqgVVNVTHcV5RwlaeB2Wm
 95DQ==
X-Gm-Message-State: AGi0PuZtI5RP+tbvINXLKWpKX7wl2oznaSXTrLPkUx4rJ6B4uPMq341U
 9a9BZss0FUD3eoRQP9h8V10=
X-Google-Smtp-Source: APiQypLYm1usbcTW1iyjm1GtL5I5xK4c6Ln/FpiQ2309PIozohJP0Ky/7RTsQY1knxwBKNVHF29h5Q==
X-Received: by 2002:a17:90a:1941:: with SMTP id
 1mr11565348pjh.65.1588517420237; 
 Sun, 03 May 2020 07:50:20 -0700 (PDT)
Received: from localhost ([183.82.183.160])
 by smtp.gmail.com with ESMTPSA id w2sm6547666pfc.194.2020.05.03.07.50.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 May 2020 07:50:19 -0700 (PDT)
Date: Sun, 3 May 2020 20:20:17 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
Message-ID: <20200503145017.GA5074@afzalpc>
References: <20200331093241.3728-1-tesheng@andestech.com>
 <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
 <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200415135407.GA6553@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_075021_291002_A9C2FC1A 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Borislav Petkov <bp@suse.de>, Eric Lin <tesheng@andestech.com>,
 alex@ghiti.fr, Alan Kao <alankao@andestech.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Logan Gunthorpe <logang@deltatee.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Steven Price <steven.price@arm.com>,
 atish.patra@wdc.com, yash.shah@sifive.com, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greentime Hu <green.hu@gmail.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 zong.li@sifive.com, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Arnd,

> On Tue, Apr 14, 2020 at 09:29:46PM +0200, Arnd Bergmann wrote:

> > Another thing to try early is to move the vmlinux virtual address
> > from the linear mapping into vmalloc space. This does not require
> > LPAE either, but it only works on relatively modern platforms that
> > don't have conflicting fixed mappings there.

i have started by attempting to move static kernel mapping from lowmem
to vmalloc space. At boot the execution so far has went past assembly
& reached C, to be specific, arm_memblock_init [in setup_arch()],
currently debugging the hang that happens after that point. To make
things easier in the beginning, ARM_PATCH_PHYS_VIRT is disabled &
platform specific PHYS_OFFSET is fed, this is planned to be fixed once
it boots.

[ i will probably start a new thread or hopefully RFC on LAKML ]

Regards
afzal

