Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95691CD2B6
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 09:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l3VY/12wWR1zHjOHzyqluXVdqy0F7FQQDSlqPm2Zx5o=; b=ZHkNlTHUi0qCUQy3+yQH0lOqt
	/Umt5C7Q9AqfXP7iaSVszDrLxOhoAlwR4aDMQqI4s+d9bYgOZkEn/DOJiaCWtLgooeWTq7q6/UveD
	Q4E9JphYWy1w7ax43jsSN4NNhk9bTyAYsU3WzIDyUeZxU4jugQApE666/nRvqKxQo7+otQCiHzE/D
	+3lr1ywMwprXQc5JNHfC7+wHr8jfSBQAdhlSe07MFtZABHJfUXVhOoFSeIsWK7PiIZNBoZeEikRUQ
	tRSDzcKSbj7gUCEZKTt34cNFB7rK1ZnUFVNrqvvMXK87oaTUYlN4qYSyF2jUp06AhTELqh148u4MO
	Jb9PM7GpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2zL-0002G2-LH; Mon, 11 May 2020 07:36:35 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2z7-00025O-8l; Mon, 11 May 2020 07:36:23 +0000
Received: by mail-ot1-f68.google.com with SMTP id z17so6777561oto.4;
 Mon, 11 May 2020 00:36:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l3VY/12wWR1zHjOHzyqluXVdqy0F7FQQDSlqPm2Zx5o=;
 b=KSGDcYdiBYZz7evOekAOKlx/fZe3EIdjvVF1d/KQ7rBA8d9Gw1ykLcxt1rmwQ7v8gb
 8O9ry/64xy74PbBU7sahPrSLh/xh07nhlId/d2h2LU7mNQCj6/mmdLZbHem1krpTKVPZ
 1ohcNUefWbHK4q8awCBQmGVng5F4KyDl+vjkPTgpJSNVlpA0EigwU3dIocGbZ+sVLSL3
 DxU5VxaWvwmEXg8Iw5nYfwf3HipGJDx6dbz8DNmxd9/xNv7iCoZCKTs8G83iJxp3Uuwh
 MLLgFCdbfTZkrilPi/iSb53zWW7UiaYo1dtFCYSfxHXE3jnsZITmwl0hzcpP/QMscjTO
 tFHw==
X-Gm-Message-State: AGi0PuYOzXIVx7X8NL+L2F7T5V+XMPvidgFudxfgfNRu9Gq+httcp3r2
 Mq0bTA4ANvriRV33u7uRv5yMdKzv0JYSGKAeK6o=
X-Google-Smtp-Source: APiQypLU+moEt/plrIiBoDJtx6y9Ecp1jwHNmsr5IHgDhGkXTabpMRQH56iYz7dU/N/BpO7atrGAmOYhZDTTv1TixAM=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr11274742otm.145.1589182577008; 
 Mon, 11 May 2020 00:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-22-hch@lst.de>
In-Reply-To: <20200510075510.987823-22-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2020 09:36:05 +0200
Message-ID: <CAMuHMdXS-ygT01KfhS0y9WcYbi9HKdQL7Q1HXgUZdayzQb_qSA@mail.gmail.com>
Subject: Re: [PATCH 21/31] mm: rename flush_icache_user_range to
 flush_icache_user_page
To: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_003621_308048_B373C3B0 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Sun, May 10, 2020 at 9:57 AM Christoph Hellwig <hch@lst.de> wrote:
> The function currently known as flush_icache_user_range only operates
> on a single page.  Rename it to flush_icache_user_page as we'll need
> the name flush_icache_user_range for something else soon.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

>  arch/m68k/include/asm/cacheflush_mm.h  |  4 ++--
>  arch/m68k/mm/cache.c                   |  2 +-

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

