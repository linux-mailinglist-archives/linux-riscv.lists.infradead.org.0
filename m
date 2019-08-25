Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3DAA08AE
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 19:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0rpUJirHNlDyG2G07VM15bbaLwFZyDhbhk1WoRtEK0=; b=P6mOLoTGw/ZXWy
	VyW2cRYHPWwUmes3vcd29UQhnZw+98i5GLkcgkXcs7bk+zlCKYUz+aXHtes2MAY4Jjy1OAbi0LULA
	5adVakp6f9bBfsrZ1PygBTgNydKIllkVmT58oqrQaGM62U7ryF5LfVqb08BDR0e0is7WXtS4e5PZF
	y+8EZ2VqN6s2rOXM/pTk4cermE+RY8oIBW3hAgZywYwNufeu+KRgt8Q67FL89GyJ1Fih3Ksk9R1tX
	80gE21rBG9DP7NY0iWik13XniHCCSkCUriw+FmGpZ4RlhDcyA5ANm5JDvcBi+ZGv2oW23HCkk177X
	U5ThYog8jeDCz2kE8+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31sR-0001iD-6i; Wed, 28 Aug 2019 17:36:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31sL-0001ew-1z
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 17:36:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id y9so254610pfl.4
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 10:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=M47pTZiAE3Wr8BbtgIHsQv1k4WtO4wX2CZjP2HeXAjI=;
 b=LS7sDUBjIS1Uff386cu0zqhDdYqMUwYYKZKmEjwIsi9QTzN89/DsKYkhHeAzX+HiWz
 XUGR2aF5xzEjpRru0i1N004SQj75D1ew2JaMZGVGSMb1w0/XqTl0B3R7YnrgYSZbcJln
 64EK3Y0c7M9n+gQt3BqNXH4dE9RFbDkXKcD/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=M47pTZiAE3Wr8BbtgIHsQv1k4WtO4wX2CZjP2HeXAjI=;
 b=MtA7OhZB4mWmHl08WKtKKZFV+ezYannFtQgDYKljCIdEIJAGcDMI/FA//O8uEvCe7X
 lLQYi/cQlFrboUB+UyJWFVH2xUqKJddDlHtG0ofMR6o7ETjOkturkIhapGlYD496EHZj
 ROzCu0Q/qBtNmf0wB46QjGkrwlNgkyVdz9hKUUNh8Rl8CI5z8ixyFP2e+qOqwN18rd/y
 Vqc0X/9LWrf9Ub3LnnpP6O/ms0u+55/yhhNvF+1VJGDHe5QX2HDHZE0+r6CIhiAahdF3
 F9AOcZ4lZkKYSah+otpEHPZCbLkE/VlsBSoi33sc+lVcXr4rW1zN6f8ddqdCA8Upcqds
 Qn5Q==
X-Gm-Message-State: APjAAAWYwQAv8y5EHAPkw/atj0m4n37y/GK/SXBD4fMWJYDS6IfGiap+
 6jTsZm4d8yBNdqmz9jEmop9VKQ==
X-Google-Smtp-Source: APXvYqw01wf5KpqvU0SBLWBJjcZSJTFTWWCu5dmEtVFN/KxdMMnVgA4WZSzYIDlb53k7Xqylep0gCg==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr4431758pgc.20.1567013812543; 
 Wed, 28 Aug 2019 10:36:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w207sm3832866pff.93.2019.08.28.10.36.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 10:36:51 -0700 (PDT)
Date: Sun, 25 Aug 2019 14:51:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
Message-ID: <201908251446.04BCB8C@keescook>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103653_117683_A7A3F950 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 Yonghong Song <yhs@fb.com>, me@carlosedp.com,
 Albert Ou <aou@eecs.berkeley.edu>, Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 05:30:53PM -0700, Paul Walmsley wrote:
> On Thu, 22 Aug 2019, David Abdurachmanov wrote:
> 
> > There is one failing kernel selftest: global.user_notification_signal
> 
> Is this the only failing test?  Or are the rest of the selftests skipped 
> when this test fails, and no further tests are run, as seems to be shown 
> here:
> 
>   https://lore.kernel.org/linux-riscv/CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com/
> 
> For example, looking at the source, I'd naively expect to see the 
> user_notification_closed_listener test result -- which follows right 
> after the failing test in the selftest source.  But there aren't any 
> results?
> 
> Also - could you follow up with the author of this failing test to see if 
> we can get some more clarity about what might be going wrong here?  It 
> appears that the failing test was added in commit 6a21cc50f0c7f ("seccomp: 
> add a return code to trap to userspace") by Tycho Andersen 
> <tycho@tycho.ws>.

So, the original email says the riscv series is tested on top of 5.2-rc7,
but just for fun, can you confirm that you're building a tree that includes
9dd3fcb0ab73 ("selftests/seccomp: Handle namespace failures gracefully")? I
assume it does, but I suspect something similar is happening, where the
environment is slightly different than expected and the test stalls.

Does it behave the same way under emulation (i.e. can I hope to
reproduce this myself?)

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
