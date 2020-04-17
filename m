Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95BA1AD768
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 09:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CAlxRW45me+SFTqp2fMa5KvZpf6cMRTo76EH5fkTTvc=; b=SHjYkuh2ZRRL/PqzM0mN1dpWn
	Wvym1tafHSy+MALeeio8Lcidc4p5+VU4hIT3PBOkx2vzalZhrdDC7WqBJ6U48J1cvRnxQMqJQhPXy
	ix5IRs88UejCIOecDZXI3pefdUW8bl4s10BmWgQrysYN0YAzR2kgetdRML70DPUBCHghtbTJNxAxE
	X9yyWvAOOZD6npLcAj0Fg+wDuY7heMMFdkooRMP7ar4X4hoElP3SZLu81jk42atgcUYXTCDsqiryy
	w2V36jSJlKPBrQiZbV6SutEejgovQ356x8hQVKX7ydlz5UONKAcz9wPb29BwfXu6n/irFS2xawBrU
	Lcq5qujSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLQM-0008Gz-HD; Fri, 17 Apr 2020 07:28:30 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLQI-0008GZ-Ny
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 07:28:28 +0000
Received: by mail-ot1-f68.google.com with SMTP id k21so696995otl.5
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 00:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CAlxRW45me+SFTqp2fMa5KvZpf6cMRTo76EH5fkTTvc=;
 b=sTshC3+nxnzJyO61XVp6F9NRC4RAm5GdRIjQDm0AKsqAd7JaszQOSh6yAFFFetREu7
 jjhLMmVdd8w47zn6LJoqxKDZQs1bbV5bToZR2Q+GbE153dipB0YliXpgupPftq97Xulw
 +Fxoyzj4pQvHC9f3PjeDaYGRn757J1J10SIhNEAf6EC/KybOkMGdUaVywwsV4Ed3T07T
 4w9/6GS1K1YIfxdKsJt8k4Lk6d0jqQoLRid0lz3PgwuzWfvkNsowuUCX4AUms5rS0BP3
 inHz8U0np0UXF02WErqy2wjxPcR79r/fSwhluenNs9b0wRWsrgs0MFF5SCKYfwcQGayy
 B/fg==
X-Gm-Message-State: AGi0PuZd1lU2LhddsnSEo++oQy/zg3h2MPPimgDo9z+tMlYlWBqtd2Xo
 TI0t7f9Wq/9ClRSUvlS0MIr+RCgWIjL5Njevtxw=
X-Google-Smtp-Source: APiQypK7KuRAoPktsLMQh2Me8mfNzHEYpwL9p+AMo7Mc+i20vMVMtApNzN65ngvXei2FszcvDlo15xrOTNLy+/p43Ec=
X-Received: by 2002:a9d:7590:: with SMTP id s16mr1548442otk.250.1587108505576; 
 Fri, 17 Apr 2020 00:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200416220130.13343-1-willy@infradead.org>
In-Reply-To: <20200416220130.13343-1-willy@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 17 Apr 2020 09:28:14 +0200
Message-ID: <CAMuHMdWxhVoPCZ5+=Pf1LFpdE9vPv9GGTqTYMQP9oFz7eCxDaQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/11] Make PageWriteback use the PageLocked
 optimisation
To: Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_002826_778523_625402DE 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: linux-s390 <linux-s390@vger.kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Matthew,

On Fri, Apr 17, 2020 at 12:01 AM Matthew Wilcox <willy@infradead.org> wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> PageWaiters is used by PageWriteback and PageLocked (and no other page
> flags), so it makes sense to use the same codepaths that have already been
> optimised for PageLocked, even if there's probably no real performance
> benefit to be had.
>
> Unfortunately, clear_bit_unlock_is_negative_byte() isn't present on every
> architecture, and the default implementation is only available in filemap.c
> while I want to use it in page-writeback.c.  Rather than move the default
> implementation to a header file, I've done optimised implementations for
> alpha and ia64.  I can't figure out optimised implementations for m68k,
> mips, riscv and s390, so I've just replicated the effect of the generic
> implementation in them.  I leave it to the experts to fix that (... or
> convert over to using asm-generic/bitops/lock.h ...)
>
> v3:
>  - Added implementations of clear_bit_unlock_is_negative_byte()
>    to architectures which need it

I have two questions here?
  1. Why not implement arch_clear_bit_unlock_is_negative_byte()
     instead, so the kasan check in asm-generic is used everywhere?
  2. Why not add the default implementation to
     include/asm-generic/bitops/instrumented-lock.h, in case an arch_*()
     variant is not provided yet?

Note that you did 1 for s390.
Thanks!

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

