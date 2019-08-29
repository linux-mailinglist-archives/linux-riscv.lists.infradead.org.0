Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480D8A0EEC
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 03:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qnmjnjD/ZWa6E32JLNKL8i+okcF3rkbKaaV/3EcOmg=; b=kqZ2x8+Zk7/b73
	nXZtJNpfpsXv0fNHhenGbM2nYWBdf1vASUy8YrsYI5gmRru1bmeP8+pW5fuNTSitbjTfxPgyFxUL7
	fZJga2/zvNU8nAoCSTLfRNFFfmVPRQEyt/zNy/TBnLKHzuq48Kh/HNjZ83mSH8bRZryNBiLDYBfZn
	hRv3wLz7gpUDlpcIwJUILv48iwlMzYq16ABE6Wzr8h3ZwURHTk5xHB1EaF55reTYpICwDroAMpQox
	qJTHgB2RAnKuMWfJdtQ1L6ngaY+Tyc/odlNJiTRBSVHSm3B6Rvwt1ypA/DYBymWoW9pIO1OmJSlWQ
	oSCDogLEBKBztZOyJBGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i39GV-0003To-Uc; Thu, 29 Aug 2019 01:30:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i39GT-0003TP-6E
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 01:30:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so662123pgg.8
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 18:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=oNuMQ0k3tolgyGaRQrF7TXZFayppiTIHnhst6LSZzgM=;
 b=N0Tiu7A4E04tZ0bGKbShdzjcMamCLdZF8w9OOQK6PqJNfA15z95T1h2MEkAr1QGrkv
 MTmnaoNxMhluJ+2QIg5wgRlKZG4ebI1krbhI2gFwPGhzgjl3Mo9eYwmeXkS342XWdvW2
 6o8joBVW/w2HTRLZcmWXJgsyKzxaDVdpZopFc+IAFxfJItzbjS6MQxV8iMzvMh+wCbxD
 Jlu+YvTpNL5xNRiykc69s779w7U0EiJlNB8fL9OGeoCN3UhQ1qRDkxoOPgj2e9fdO+nP
 rUwqW2dh56+pi8vTJEXJED0sq/nTmn2tjeRp9FDE/GII0XdAAqqoM5RIQmupCWDxlq+V
 rHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=oNuMQ0k3tolgyGaRQrF7TXZFayppiTIHnhst6LSZzgM=;
 b=aJWmwjRVVQJDUzcJUDwn44Ui2SXSaZUX9+ryZAcqAtakb6IDHUC8hJdpk1AJA2o5ai
 OZlRGnRsd1kbzPoQOGGNbEGrlSW/a/LW/AE/wXoSUneX106j/lEqEkrrbfy2WihFAzVc
 pVMbdsoTxU6H6zeANyZeMd9RjCfNnbAjBBZe0zVewn4J2RfQ09XK5p8m+wk0Gd5I8KlQ
 84fkyz3VTcJpLn8wQkTJFhm1r/rnxr4ek04h1fVBrgVb5BllE0+PomBPH/aEI3Xvsdgf
 X0BgSJOKYsd5xHYpKxvpwi7kPeov1VZP5lj/4Sgz8J58TW5PkmeE5+hLSxv5vDgj6iyI
 Vpyw==
X-Gm-Message-State: APjAAAUZELX/Yb+fYtAqya4UDkQXYGCYubBSmZs3afIDcbUhWVMgXpYR
 MN8LapMqV8EHEFzmNAq3g3sYUA==
X-Google-Smtp-Source: APXvYqzneWTer11an0OtynaQ0NdmFFtoQFTgNrY29fSA6ajAUSOjqiO56Ptl9fWn/+Jpt6o1LcWHIg==
X-Received: by 2002:aa7:8602:: with SMTP id p2mr8123966pfn.138.1567042216270; 
 Wed, 28 Aug 2019 18:30:16 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id y13sm669451pfm.164.2019.08.28.18.30.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 18:30:15 -0700 (PDT)
Date: Wed, 28 Aug 2019 18:30:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Kees Cook <keescook@chromium.org>, Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
In-Reply-To: <201908261043.08510F5E66@keescook>
Message-ID: <alpine.DEB.2.21.9999.1908281825240.13811@viisi.sifive.com>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
 <20190826145756.GB4664@cisco>
 <CAEn-LTrtn01=fp6taBBG_QkfBtgiJyt6oUjZJOi6VN8OeXp6=g@mail.gmail.com>
 <201908261043.08510F5E66@keescook>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_183017_264150_CA8367FA 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
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

Hi Kees,

On Mon, 26 Aug 2019, Kees Cook wrote:

> On Mon, Aug 26, 2019 at 09:39:50AM -0700, David Abdurachmanov wrote:
> > I don't have the a build with SECCOMP for the board right now, so it
> > will have to wait. I just finished a new kernel (almost rc6) for Fedora,
> 
> FWIW, I don't think this should block landing the code: all the tests
> fail without seccomp support. ;) So this patch is an improvement!

Am sympathetic to this -- we did it with the hugetlb patches for RISC-V -- 
but it would be good to understand a little bit more about why the test 
fails before we merge it.

Once we merge the patch, it will probably reduce the motivation for others 
to either understand and fix the underlying problem with the RISC-V code 
-- or, if it truly is a flaky test, to drop (or fix) the test in the 
seccomp_bpf kselftests.

Thanks for helping to take a closer look at this,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
