Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972B55877B
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 18:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JalcO8zvrMlDCbMqGlpY2nwbsaJPNNGKnT2Y1eYEvk=; b=PUXN+teD/REP3F
	f9YQfNElxr5/8ZSN09V+UErG9s6LtYlNbpzFBLtqm7zurHRMNprR8mCoKTxqiChJxQWU2qE1NCWA9
	kSAxpIhMSSUy7KzHwSMIPN6pSE6WWDOskbTq2KhC8szV3agrJOe9YTLcZ7+rpbDTyM1ApgK0frZ6C
	SO3wtKG0XDOTNNx3nNuOO6AjFDhtlgmNLznNiU9PYOYyBrv/UufiN1t/9WfmjErkCkhKaU8dYolHf
	ZTYy55zPdssmDVwCCd0UcZewc5Lhx4/wb9sEel2MKm8rB1MwiaIefALSt9C7sZnjyTX9ILYxEoKlp
	g6jIM534IHtz60fCELcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXUY-0004o4-LP; Thu, 27 Jun 2019 16:43:22 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXU9-0004YB-Ok; Thu, 27 Jun 2019 16:42:59 +0000
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com
 [209.85.221.178]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x5RGgai7008040;
 Fri, 28 Jun 2019 01:42:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x5RGgai7008040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561653757;
 bh=mjVQLrBPdJBnHT5c+yqrverpI3gXoSHt0lyoRtZKVh8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=x+YPmK0dx6bvhLMCzmvcqEyTBzJ07PFO64KYLQ74sqFFOoUlR1PyfsGFuN0jYBibn
 O39lAZa08boANWu8MEfBwP451cGoa/Tz+5I/Rk7hzelPDmzuaDR14JRisQ3mqsBPAt
 uM9eYwpD/KHv6Oyzf5cQHYLfY9q+5fi0xLq1cqBsP/yr0r+L/gmVGToMjhTLHIuWnx
 X+L4EFRivPXsfzDii0vitYHy8FD8geSIJZ1GJ2JQc7yIsP2imS4vMZpe8U+41e/bBa
 WtUEyGQ2VqCf+8ntswPHaQ1w9YNkqgWSiXyvvLAIMtfnBorZ+W4/y4R+4UTE3fr/Nf
 cz4e1mtKIkk0A==
X-Nifty-SrcIP: [209.85.221.178]
Received: by mail-vk1-f178.google.com with SMTP id y130so638164vkc.0;
 Thu, 27 Jun 2019 09:42:37 -0700 (PDT)
X-Gm-Message-State: APjAAAXPrTFKr4BV63EbXhGoJsOUutvcbA1wYBJZdo0CYmF28JR8+Aqk
 mTARArH+qjnF0aXPemnt4usQ1gvbs10hCV7FKbQ=
X-Google-Smtp-Source: APXvYqzEikgizt6Sw+DCd4k5FOnO+SppEPTSGT3JzOTu5C6ZNp4faFBLQFiM9RKT4r3KAmi9gcOpHh0nyzlDZNjlMnQ=
X-Received: by 2002:a1f:ac1:: with SMTP id 184mr1898318vkk.0.1561653756253;
 Thu, 27 Jun 2019 09:42:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190627014617.600-1-yamada.masahiro@socionext.com>
 <87y31np89f.fsf@intel.com>
In-Reply-To: <87y31np89f.fsf@intel.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 28 Jun 2019 01:42:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS=Uhyq9AitSqRR2aKOg18aae8Ce9FXTufgJq3KNhmsUg@mail.gmail.com>
Message-ID: <CAK7LNAS=Uhyq9AitSqRR2aKOg18aae8Ce9FXTufgJq3KNhmsUg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Compile-test UAPI and kernel headers
To: Jani Nikula <jani.nikula@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_094258_020873_E53FA60A 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Kees Cook <keescook@chromium.org>, xdp-newbies@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 Yonghong Song <yhs@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tony Luck <tony.luck@intel.com>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Colin Cross <ccross@android.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 8:36 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Thu, 27 Jun 2019, Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
> > 1/4: reworked v2.
> >
> > 2/4: fix a flaw I noticed when I was working on this series
> >
> > 3/4: maybe useful for 4/4 and in some other places
> >
> > 4/4: v2. compile as many headers as possible.
> >
> >
> > Changes in v2:
> >  - Add CONFIG_CPU_{BIG,LITTLE}_ENDIAN guard to avoid build error
> >  - Use 'header-test-' instead of 'no-header-test'
> >  - Avoid weird 'find' warning when cleaning
> >   - New patch
> >   - New patch
> >   - Add everything to test coverage, and exclude broken ones
> >   - Rename 'Makefile' to 'Kbuild'
> >   - Add CONFIG_KERNEL_HEADER_TEST option
> >
> > Masahiro Yamada (4):
> >   kbuild: compile-test UAPI headers to ensure they are self-contained
> >   kbuild: do not create wrappers for header-test-y
> >   kbuild: support header-test-pattern-y
> >   kbuild: compile-test kernel headers to ensure they are self-contained
>
> [responding here because I didn't receive the actual patch]
>
> This looks like it's doing what it's supposed to, but I ran into a bunch
> of build fails with CONFIG_OF=n. Sent a fix to one [1], but stopped at
> the next. Looks like you'll have to exclude more. And I'm pretty sure
> we'll uncover more configurations where this will fail.

Thanks for testing.

I did more compile-tests, and excluded more headers in v3.

Thanks.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
