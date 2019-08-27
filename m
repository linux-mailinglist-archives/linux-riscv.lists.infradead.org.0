Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E809DD0C
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 07:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p87m+UPn8998/enQtjAtSski6NQvOhHziwBicf5g+JM=; b=e/Vsm8NdjzaKla
	is1MHG65W9JX3YH/j+AKney9c5HNGUucfZOmtZNGluiKV6NF9gYARK3KVUkf8q3hNW0cCF1MJph77
	BzHtpAN1djvWk8qHUCCLvMzexwnMg6EyU1w1+riTHL1Lli9Kppy/1Zd2z9+oYgr1HCQEqTUq/WiM8
	BNarI+aS1YsZkigXogSGHFWBxJMgtvLqslDt12Smy4bhCN1Jd4T0aiqKOyo5oH6UJo3EbB8h9QmNv
	BIg9vdlqAFrzBIljoER0w9p+dO8jR7Yzce7j5SJ2IDrH222tEUKLZZPWA9/ry0/92QamrRIm3FZub
	KSBa1CQl/DOf/Ywyko9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Tpu-00021w-7U; Tue, 27 Aug 2019 05:16:06 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Tpp-00021M-EC
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 05:16:03 +0000
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x7R5Fa6M032764
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 14:15:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x7R5Fa6M032764
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566882937;
 bh=zeAycLLY1+YwZS+X2e0YqPWel6Z800aRLRMBYLbHzjc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QthS0PTXWF5aBM+m7e1UvVbvlMqry/Rqocy8p7BOjVAsh3YG7fXpSvAJOTH+trtQV
 ThzxsmWaCM5IYVDckq79nclpCwzP5KLhAfrNCBIzPB0lkKT/xFcaqPDIyAXXLhi+ZK
 FasB5AzWFwEerSy9yysA1paGNQqbzgU6Bj4ghKePZtccCfkkBzupFqOR64KyxddEsA
 +DjHYFnNtkdQQ/P9E5QeA5tGSqhW4MQorW7lggHr80fG8TJmhiXjp1ZO0G9CBGAjJW
 YkYUJS+cPrpBl3i8DgeE82aU37/DrrUaPu0vsWWCWm2WeImXOKkBgfknaI3EbHlD7N
 3AmnrLjbLD1gw==
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id j25so12572353vsq.12
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 22:15:36 -0700 (PDT)
X-Gm-Message-State: APjAAAWAIl6dUUZIYFIMm1SFmFAtt/xQTImjZdY0u+H+n5O21KjtOdjJ
 5eHP1aE0kZ+WIk9OR4FIn2CIVheoPO+43x06ZYw=
X-Google-Smtp-Source: APXvYqwP0GzvRul07oVJT4KEY7/gNx4mfEnLfUfHczL8h8K2KZo6T88R3SmwojkurNLRCWeIE1hR1si3oTLM73bFypc=
X-Received: by 2002:a67:fd97:: with SMTP id k23mr12661548vsq.179.1566882935496; 
 Mon, 26 Aug 2019 22:15:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190821092658.32764-1-yamada.masahiro@socionext.com>
 <20190826113526.GA23425@infradead.org>
In-Reply-To: <20190826113526.GA23425@infradead.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 27 Aug 2019 14:14:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ_5Hz_CXAdx8W0bLjMWQ08KDWK3gG2pfDZOEE+cr0KEw@mail.gmail.com>
Message-ID: <CAK7LNAQ_5Hz_CXAdx8W0bLjMWQ08KDWK3gG2pfDZOEE+cr0KEw@mail.gmail.com>
Subject: Re: [PATCH] riscv: add arch/riscv/Kbuild
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_221601_703103_2AA190C9 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 8:35 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Wed, Aug 21, 2019 at 06:26:58PM +0900, Masahiro Yamada wrote:
> > Use the standard obj-y form to specify the sub-directories under
> > arch/riscv/. No functional change intended.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> Do you have a document what the grand scheme here is?

There is a small documentation about "Makefile" vs "Kbuild"
in Documentation/kbuild/modules.rst section 3.2

It is talking about external modules, but the benefit applies
to arch/$(SRCARCH)/Kbuild as well.

arch/$(SRCARCH)/Makefile is included by the top Makefile
to specify arch-specific compiler flags, etc.

On the other hand, arch/$(SRCARCH)/Kbuild, if exists, is included
when Kbuild actually descends into arch/$(SRCARCH)/.

This allows you to hierarchize the sub-directories to visit
instead of specifying everything in flat in arch/$(SRCARCH)/Makefile.

Major architectures are already doing this.

See
arch/x86/Kbuild
arch/sparc/Kbuild
arch/powerpc/Kbuild
etc.

(and arm64 also adopted this recently)


The trick is "Kbuild" has precedence over "Makefile".

If you are interested in the actual code,
see line 41 of scripts/Makefile.build




>  Less of the magic
> in arch/$(ARCH)/Makefile sounds like a good idea, but unless we have
> a very specific split between the kbuild makefile and various override
> I fear just splitting things up into two files doesn't really help much.

Why not?


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
