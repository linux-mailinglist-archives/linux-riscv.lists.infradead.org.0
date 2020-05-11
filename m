Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59761CD32E
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 09:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2yJ6ElOmiCSyE9da4JBaYJBkgTCIAd7AfbCRMY3E6sk=; b=olmfilv1cotTXSQTr7ds4s2CB
	MQu6NBlx/Z9/RpaDjjnoKYGq1Tnn00rbpylhNJyxMxLUg1cOVjNMeIuHf0y5WQbrX06U/ZSiSpgCJ
	RBqPw6d5ioWM/bu+ohysVg4LBideFXzFb3KTfl8aUFq5nX4CM/jnj9ApinBf9OPKHcQbsfOKyXbTC
	UAiaq5Uiy/QzpA8FRNCri2OSZhiP5qKSIvMBSnhrfonfgA+kkb6ypSeSsvtHOaIZ1aa0VRxLWVi2O
	7muYxrKGpHPqzWEgLfpwaxFDuUNS1SC8vY3+mJ8lrrh/I7OsjwVlYtOp3AL86HPVVWPrluG8tZ0AU
	GBAA0dwKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY390-0002R2-HF; Mon, 11 May 2020 07:46:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY38w-0002Q4-5O; Mon, 11 May 2020 07:46:31 +0000
Received: by mail-oi1-f196.google.com with SMTP id o7so14342742oif.2;
 Mon, 11 May 2020 00:46:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2yJ6ElOmiCSyE9da4JBaYJBkgTCIAd7AfbCRMY3E6sk=;
 b=DfOVC2gbxPs9o0tfQDBpTLM1p3/8/sEYjiQLa3Zqdoe/KZ7MhQI3pVIiReZJIlDZml
 NpQwUhGIXNXFVVgtLqiauWOIkLHCjZ08y0HS4oyon3gquvcUj9Y7o4Airbf/klGcNTB7
 X/ChgohflMuHqgBkdllvPIhqIL1mV9QMEyj7SA7GOL0HngCedjCTaUlZpwjlqwYqrbvr
 G4fTZW9t+4Jq/75sNDuXF+GowQaskQm1RhxaW5BO1dVQvTmGrUdVGt/UOR7gbrEIMDEb
 lCjTp0E1i8S8OsbEctcA29kBcdj7D6CoRwKlchpKbjsKjFPzX8Q1YKNGnisSfpre3L0H
 iRnQ==
X-Gm-Message-State: AGi0PuYjy5T3Ubo3hPrVBEvgcR3InSY3kVNH+kgxge/tSgVIlvj563U0
 uw2aNkv1V8RGUrHxbY9kiFCDi5eUu0pSSliGRao=
X-Google-Smtp-Source: APiQypIoFxa7a3EUthZ/8xx0aZ//Vc0pDLpqFY6DB0zkXv6WP4wkoKn8ne3ghzK30RcpwYDHtmi30TMFV3MiIELEMLg=
X-Received: by 2002:aca:895:: with SMTP id 143mr18042949oii.153.1589183188927; 
 Mon, 11 May 2020 00:46:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200510075510.987823-1-hch@lst.de>
In-Reply-To: <20200510075510.987823-1-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 09:46:17 +0200
Message-ID: <CAMuHMdXazsBw0mjJd0uFHQud7qbb5-Uw-PTDB3+-M=huRWOfgQ@mail.gmail.com>
Subject: Re: sort out the flush_icache_range mess
To: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_004630_205832_9D4CAD87 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Roman Zippel <zippel@linux-m68k.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Linux-Arch <linux-arch@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, Jessica Yu <jeyu@kernel.org>,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Sun, May 10, 2020 at 9:55 AM Christoph Hellwig <hch@lst.de> wrote:
> none of which really are used by a typical MMU enabled kernel, as a.out can
> only be build for alpha and m68k to start with.

Quoting myself:
"I think it's safe to assume no one still runs a.out binaries on m68k."
http://lore.kernel.org/r/CAMuHMdW+m0Q+j3rsQdMXnrEPm+XB5Y2AQrxW5sD1mZAKgmEqoA@mail.gmail.com

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

