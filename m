Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE9217D838
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 03:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fflz0dbF95SRLCJa9BmtjYe8dALMPFL3ixEaVuWgBTI=; b=n6VIFPa+T9613I
	2wkCvfEk7S81dPyIWlTVvB85wMfh2/yAm/y2XXJJmOD5/xEPw1zHbM1BoGOis8/9B2d/Y4TEpb5E/
	PL4U6gYnEpINqCbkxKQ6lU4ppi0KkV60cV/T70buQs3gHKqrFaMHV+prO9YrZgggpk0rpkeXpkkbz
	ass/cUDIul/izNP548TDrb4EhLPJDNrTfFo9dwuoMQv3N3DFejyBQTxQ7uLbDO9RxB+rdIeMVbBMQ
	ixupFuLCitpW7NZMMiz3qQhpbtqq98cRr/V+8S/cROtpqjks2IATjW/PIa7ASGwyE7gfb+Oj8uYb4
	pP+Jh/djKRhCc1i94wOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB8YF-0003oi-Lx; Mon, 09 Mar 2020 02:53:55 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB8YA-0003o7-UI
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 02:53:52 +0000
Received: by mail-qk1-x742.google.com with SMTP id m2so7911092qka.7
 for <linux-riscv@lists.infradead.org>; Sun, 08 Mar 2020 19:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fflz0dbF95SRLCJa9BmtjYe8dALMPFL3ixEaVuWgBTI=;
 b=Q+d4a/NwdOzmQTP9T/7u84gaYO2OTe+RMvgrwHSoAldhidVjAQndvpIbvk9g8J5OYA
 f9ci1dquiVpYLsJAdB7xbxOphEAcriMyalC9NB4Qx4JygUD1+8oGbnGH1zWqe4kYtECL
 rrpVFrs8hVnyNukDbQ2TsxBGfn48qhcDM0VKG/Yz/6uDSDzcZYl/AgZZ30P1wDOVINhO
 qiQWdLvi1mM8pW3J+Zcgj2kQfskcEtqYsVaPD+5VyIb25/DFs+avp3a5dJHtB0NeEVUE
 YDXly3BMBbzs3FMpvc45aD7yr5oJsm1ftsspfTRfk6RNtLie5l9DB53aFG1tZUzwFqYv
 SQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fflz0dbF95SRLCJa9BmtjYe8dALMPFL3ixEaVuWgBTI=;
 b=jnKOrt5jtEa1v6covpQWWrqS8/2OILhN/TZ2BgrxbfaRuE3Fevd0NBrUVRuPZUlaOI
 0igCHWLiRoyuNtaCdETPI3cqRsuZ/ryWJq9icSVI3xekLyd2B6k3by/OeWcjDgB30Fd7
 E9OhECz+RpH9SVdy7ceHZoymxUv3d7wxQNymM1C+rzMVYVgO8Lxr90WSHFXLIFYDA+Dr
 Ay+hI0pW7kRtszOdBv2XfK3PSsHifMrlc2NsI7uPFaB6gQd7/FMOa6ggKEXoUuEhjhY2
 ACiLf1W3pFPSxv24Je6/ycWFkKE+sstsxWbZtb6N9AmhBB67XMRkRef1LLzRRagwj46/
 y2Wg==
X-Gm-Message-State: ANhLgQ3WvdP2utJk4uOQhYWERqGGBJLIRHmtjfA03OoBG/qQHAHCUPzZ
 zKhTx9uKELOhXRl2Sd+foUcio7DSEzTP/feqAHw5LA==
X-Google-Smtp-Source: ADFU+vsJsag292BpHlNHbUSngaCqWX8YhLLt0zF71w+H1clhFtuHq4MA2iZjfJkNR6Jg9hYlcx6wEZBDfbYD/UZ9gqg=
X-Received: by 2002:a37:65d1:: with SMTP id
 z200mr13417705qkb.464.1583722428829; 
 Sun, 08 Mar 2020 19:53:48 -0700 (PDT)
MIME-Version: 1.0
References: <1572919114-3886-1-git-send-email-vincent.chen@sifive.com>
 <mhng-b7d41554-17f9-4303-82b7-6d576fc19a9a@palmerdabbelt-glaptop>
In-Reply-To: <mhng-b7d41554-17f9-4303-82b7-6d576fc19a9a@palmerdabbelt-glaptop>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 9 Mar 2020 10:53:38 +0800
Message-ID: <CABvJ_xizO8p8uWj9D4R0LbjFYD9ChZJi9e_XyavTpGhOoDO=Vg@mail.gmail.com>
Subject: Re: [PATCH 0/3] riscv: add support for restartable sequence
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_195351_037081_6460E972 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-kselftest@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 2:47 AM Palmer Dabbelt <palmerdabbelt@google.com> w=
rote:
>
> On Mon, 04 Nov 2019 17:58:31 PST (-0800), vincent.chen@sifive.com wrote:
> > Add RSEQ, restartable sequence, support and related selftest to RISCV.
> > The Kconfig option HAVE_REGS_AND_STACK_ACCESS_API is also required by
> > RSEQ because RSEQ will modify the content of pt_regs.sepc through
> > instruction_pointer_set() during the fixup procedure. In order to selec=
t
> > the config HAVE_REGS_AND_STACK_ACCESS_API, the missing APIs for accessi=
ng
> > pt_regs are also added in this patch set.
> >
> > The relevant RSEQ tests in kselftest require the Binutils patch "RISC-V=
:
> > Fix linker problems with TLS copy relocs" to avoid placing
> > PREINIT_ARRAY and TLS variable of librseq.so at the same address.
> > https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3Dcommit;h=
=3D3e7bd7f24146f162565edf878840449f36a8d974
> > A segmental fault will happen if the Binutils misses this patch.
> >
> >
> >
> > Vincent Chen (3):
> >   riscv: add required functions to enable HAVE_REGS_AND_STACK_ACCESS_AP=
I
> >   riscv: Add support for restartable sequence
> >   rseq/selftests: Add support for riscv
> >
> >  arch/riscv/Kconfig                        |   2 +
> >  arch/riscv/include/asm/ptrace.h           |  29 +-
> >  arch/riscv/kernel/entry.S                 |   4 +
> >  arch/riscv/kernel/ptrace.c                |  99 +++++
> >  arch/riscv/kernel/signal.c                |   3 +
> >  tools/testing/selftests/rseq/param_test.c |  23 ++
> >  tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++=
++++++++
> >  tools/testing/selftests/rseq/rseq.h       |   2 +
> >  8 files changed, 783 insertions(+), 1 deletion(-)
> >  create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h
>
> This, with Paul's updated patch 1, isn't building on my end:
>
> In file included from <command-line>:
> arch/riscv/kernel/ptrace.c:137:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sepc=E2=80=99; did you mean =E2=80=98epc=
=E2=80=99?
>   REG_OFFSET_NAME(sepc),
>                   ^~~~
> ././include/linux/compiler_types.h:129:57: note: in definition of macro =
=E2=80=98__compiler_offsetof=E2=80=99
>  #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
>                                                          ^
> arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro =E2=80=98o=
ffsetof=E2=80=99
>  #define REG_OFFSET_NAME(r) {.name =3D #r, .offset =3D offsetof(struct pt=
_regs, r)}
>                                                    ^~~~~~~~
> arch/riscv/kernel/ptrace.c:137:2: note: in expansion of macro =E2=80=98RE=
G_OFFSET_NAME=E2=80=99
>   REG_OFFSET_NAME(sepc),
>   ^~~~~~~~~~~~~~~
> arch/riscv/kernel/ptrace.c:169:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sstatus=E2=80=99; did you mean =E2=80=98st=
atus=E2=80=99?
>   REG_OFFSET_NAME(sstatus),
>                   ^~~~~~~
> ././include/linux/compiler_types.h:129:57: note: in definition of macro =
=E2=80=98__compiler_offsetof=E2=80=99
>  #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
>                                                          ^
> arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro =E2=80=98o=
ffsetof=E2=80=99
>  #define REG_OFFSET_NAME(r) {.name =3D #r, .offset =3D offsetof(struct pt=
_regs, r)}
>                                                    ^~~~~~~~
> arch/riscv/kernel/ptrace.c:169:2: note: in expansion of macro =E2=80=98RE=
G_OFFSET_NAME=E2=80=99
>   REG_OFFSET_NAME(sstatus),
>   ^~~~~~~~~~~~~~~
> arch/riscv/kernel/ptrace.c:170:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98sbadaddr=E2=80=99; did you mean =E2=80=98b=
adaddr=E2=80=99?
>   REG_OFFSET_NAME(sbadaddr),
>                   ^~~~~~~~
> ././include/linux/compiler_types.h:129:57: note: in definition of macro =
=E2=80=98__compiler_offsetof=E2=80=99
>  #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
>                                                          ^
> arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro =E2=80=98o=
ffsetof=E2=80=99
>  #define REG_OFFSET_NAME(r) {.name =3D #r, .offset =3D offsetof(struct pt=
_regs, r)}
>                                                    ^~~~~~~~
> arch/riscv/kernel/ptrace.c:170:2: note: in expansion of macro =E2=80=98RE=
G_OFFSET_NAME=E2=80=99
>   REG_OFFSET_NAME(sbadaddr),
>   ^~~~~~~~~~~~~~~
> arch/riscv/kernel/ptrace.c:171:18: error: =E2=80=98struct pt_regs=E2=80=
=99 has no member named =E2=80=98scause=E2=80=99; did you mean =E2=80=98cau=
se=E2=80=99?
>   REG_OFFSET_NAME(scause),
>                   ^~~~~~
> ././include/linux/compiler_types.h:129:57: note: in definition of macro =
=E2=80=98__compiler_offsetof=E2=80=99
>  #define __compiler_offsetof(a, b) __builtin_offsetof(a, b)
>                                                          ^
> arch/riscv/kernel/ptrace.c:133:51: note: in expansion of macro =E2=80=98o=
ffsetof=E2=80=99
>  #define REG_OFFSET_NAME(r) {.name =3D #r, .offset =3D offsetof(struct pt=
_regs, r)}
>                                                    ^~~~~~~~
> arch/riscv/kernel/ptrace.c:171:2: note: in expansion of macro =E2=80=98RE=
G_OFFSET_NAME=E2=80=99
>   REG_OFFSET_NAME(scause),

Sorry, I really missed this email. I will fix these errors and resend
this patch set. Thank you

