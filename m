Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1593CC732
	for <lists+linux-riscv@lfdr.de>; Sat,  5 Oct 2019 03:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y146WK3ni6C7x7cekjymf8nqOsGOJtXmRP2LxXoXSs8=; b=Wf3kKV26HbTBcQ
	28NyXm1PKVVlt1uS0d9LdaU3f7O+Wqd7jcLuZDJtr4CpZxazUIDHQ9OxYhsb9Ce7iYvtwdPKgi67W
	6Z0QdNZ3ENoqg5qHLXvpfiOmq0RpeflDFYrpzu0GMNomQcCroOM6kGEU/zzZO67keT3eY+UnQrHq+
	DwGGYXQgPaBlBODXSWKMXRstyeRao1KmM0S9XECZZhfLKtMk02LMsOlSXu0TPR8TjyTAYBCyiJNVq
	EdOyUgzH7j7kqneWLdKGL5E8ypdl5Cvou36R5iRoYqPVmDutAVQiEbjGgjrbV0th1oDw6PXCLW34J
	h0ejeUECfIGZZqpuxRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGYnt-0003F4-O4; Sat, 05 Oct 2019 01:24:13 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGYnp-0003Ea-MA
 for linux-riscv@lists.infradead.org; Sat, 05 Oct 2019 01:24:11 +0000
Received: by mail-oi1-x243.google.com with SMTP id x3so7337745oig.2
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 18:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Gr3vPHhUUWGmUVhCZ83FOVrxuAp5M1FSUXsxEnqOUVw=;
 b=aNlQ5uVh9JxZHsH9PosFCQkAXOZbUVmDp4sYNIiyQWF7usjj7tYRWSXGvGeb+TKmQx
 /PKYmS1XWZi9z89cLQ8sCIOSbR9FlH6ncaopWkD+hcrjvRWSclilETaXt24XtrsjiYTW
 FcDmxdTcT38ukq9MY0VdtfU84Hpxq5kPDmMmxPxIUYlpICCR1J71ZFp8FcxLdMTuQ4O+
 0PciPfJdQ8/SgJA0QMK8CeGeuaSM+1WVBGkDGgs2dijunkUXtplNyQ7tYe0MLNEryPel
 sN28J2s2rF3qk1Js6Fl2vJo3uz3N3ajPuVP0SYKhSHp2NGk0frPPaNviNK6+V2Af1CQg
 AHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Gr3vPHhUUWGmUVhCZ83FOVrxuAp5M1FSUXsxEnqOUVw=;
 b=s9AMmkOmlkGGVR+sV9iCpyv9F3yZzBVQ+mMgQJq0jKpUVr8ertN2oL621aNxQRfDLe
 v/g3TLtKAKo4E0e1nHtIZqyf7C7uI1aigj3AoMiQc0UG4PWOdIMciKX5O1fXuur8QJyw
 ov/c91ETpAxq1z8kkvmJrFnkSx7UtQ0OPG0lPx++eoEWRASSoQmi6QGNLqmzVYjvbnK+
 eiB0oLU6UbqeGzflt5OkukS92Oge7YdsuNYYrWCoP5YVSXtgetXVqYGoRrdps3D4jziV
 B3D8GlZV3xEsv4gZldkOLld12YX0ixkyX2CivwHT9/Rdz9pY/Vujedgq/cI23n1kajog
 PbDg==
X-Gm-Message-State: APjAAAXIiL22m1sThL0m+OqP6CiUGh/GXqeagHplkuunnRUtRmeHJBeZ
 dm/qAFas82IJUEueeAKp7msmmw==
X-Google-Smtp-Source: APXvYqzgkJxuaT0woltjn4JGZ5HsgdZmLxkxcI/oHlVqnvxI9eGlw+q4m2LXamIq0+QDajNCtfMU3A==
X-Received: by 2002:aca:d07:: with SMTP id 7mr9442211oin.155.1570238649063;
 Fri, 04 Oct 2019 18:24:09 -0700 (PDT)
Received: from localhost ([2600:100e:b029:4ada:34fb:aeb7:d598:e51c])
 by smtp.gmail.com with ESMTPSA id a9sm2260524otc.75.2019.10.04.18.24.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 18:24:08 -0700 (PDT)
Date: Fri, 4 Oct 2019 18:24:07 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
In-Reply-To: <CAJr-aD=UnCN9E_mdVJ2H5nt=6juRSWikZnA5HxDLQxXLbsRz-w@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910041820560.15827@viisi.sifive.com>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
 <20190826145756.GB4664@cisco>
 <CAEn-LTrtn01=fp6taBBG_QkfBtgiJyt6oUjZJOi6VN8OeXp6=g@mail.gmail.com>
 <201908261043.08510F5E66@keescook>
 <alpine.DEB.2.21.9999.1908281825240.13811@viisi.sifive.com>
 <CAJr-aD=UnCN9E_mdVJ2H5nt=6juRSWikZnA5HxDLQxXLbsRz-w@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_182409_725447_2074F662 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 Yonghong Song <yhs@fb.com>, me@carlosedp.com,
 Albert Ou <aou@eecs.berkeley.edu>, Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Network Development <netdev@vger.kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 LKML <linux-kernel@vger.kernel.org>, Andy Lutomirski <luto@amacapital.net>,
 Vincent Chen <vincentc@andestech.com>, bpf <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 27 Sep 2019, Kees Cook wrote:

> On Wed, Aug 28, 2019 at 6:30 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > On Mon, 26 Aug 2019, Kees Cook wrote:
> >
> > > On Mon, Aug 26, 2019 at 09:39:50AM -0700, David Abdurachmanov wrote:
> > > > I don't have the a build with SECCOMP for the board right now, so it
> > > > will have to wait. I just finished a new kernel (almost rc6) for Fedora,
> > >
> > > FWIW, I don't think this should block landing the code: all the tests
> > > fail without seccomp support. ;) So this patch is an improvement!
> >
> > Am sympathetic to this -- we did it with the hugetlb patches for RISC-V --
> > but it would be good to understand a little bit more about why the test
> > fails before we merge it.
> 
> The test is almost certainly failing due to the environmental
> requirements (i.e. namespaces, user ids, etc). There are some corner
> cases in there that we've had to fix in the past. If the other tests
> are passing, then I would expect all the seccomp internals are fine --
> it's just the case being weird. It's just a matter of figuring out
> what state the test environment is in so we can cover that corner case
> too.
> 
> > Once we merge the patch, it will probably reduce the motivation for others
> > to either understand and fix the underlying problem with the RISC-V code
> > -- or, if it truly is a flaky test, to drop (or fix) the test in the
> > seccomp_bpf kselftests.
> 
> Sure, I get that point -- but I don't want to block seccomp landing
> for riscv for that. I suggested to David offlist that the test could
> just be marked with a FIXME XFAIL on riscv and once someone's in a
> better position to reproduce it we can fix it. (I think the test bug
> is almost certainly not riscv specific, but just some missing
> requirement that we aren't handling correctly.)

OK.  It might be nice to mark the seccomp_bpf.c test as flaky in the 
comments for the test.

> How does that sound?

Let's follow your plan.  Thanks for your review and feedback.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
