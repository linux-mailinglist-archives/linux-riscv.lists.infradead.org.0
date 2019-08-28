Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E121AA0E63
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 01:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtCM+HHJ7KUjCYpqd+4P3zNstnTbTU64I3hG7DNS6z8=; b=UL9s9fNtksvCMy
	ZSDSeh27/hM5SBkflxAjhhn21NstRtnSYXoimPn086h9KD8xf4bJUgTQECCU/unNOUNz36dWpnLS+
	K/eWYV79K/0c6MbZG7xS2fPp1GQ/F1o6KE3N6ueICtDKOyR4oXhKebMX+0r1bUa+zfSBhnj6TUhdD
	V4ajKu6vDTsdruz3C2klcu8GMo6tlV1v9M1aKow1fU7Vu2lnAk+1pTKqKMRiBULjvoptbgigwQZ2z
	9IrG2J/IsUfHpl2tVRdvoXpcMEwolMmvShglmc2w/EBIVQ69GYpsr1LPJh5tHcAwX2fPOi6oFUSZQ
	ikO+DuJ0vhlIGT+U/fpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i37Zq-00059T-TT; Wed, 28 Aug 2019 23:42:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i37Za-0004zv-Le; Wed, 28 Aug 2019 23:41:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so528431pgl.11;
 Wed, 28 Aug 2019 16:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LEwbl1nqNHBHcJacD9dfeICHgcsBE/f/ceNiyU0uO2c=;
 b=kWxS12FOGo7kRO8bUZisQdbdPaD7m90liBO1DJILGgor5och3M3Y8ixQUrLiOlvUAQ
 KSCAKzPOIhK4qh4mkp723yecDQTzrNvHfSo5O2PLFMUzPr9tFIvttGdACmQk3GcLv9I5
 cjYvi8Gr7ER3JMRMI2IeaYoSEzfDVilJaC9VvUum/aPr5t4C5xA5idz5lFsS5zANKFcg
 337AY91x4TvIwnn1y9efIs3f4w9SNmURv9K2dvAIcHu0ypgbd+SQV2CIW7BfJIlZApXq
 u8dQIG+K1EEA2/INmvvXiOQePA1oy0eoOgbrzRogC4V4vLfCANYJbRnPt4/hj/mnM9HJ
 IDqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LEwbl1nqNHBHcJacD9dfeICHgcsBE/f/ceNiyU0uO2c=;
 b=tEFtvqfeCxP95IhaK+TZPSVfjuHejDr9LmUgX2K57nXJ1m/zxlGuRzZQ4n5UQQl0od
 13buXO0HWKsGR+qPx8aFl1swBbWBxJH4iph8YdDBK3oeXoZIcz0EomZiUtBbHMCediw/
 tvznUN8aVqyIFJiGqaSwXYysa9k+MbdA81QPfw3bN+2pSTy4giWbDNujjvA7wHNQHRfj
 hOr7agMco+Ps1CQ7uXET27dtTYcatihEaCBtH0Qc6yD5wxHRmMBQSgR0mTdobwFkL7D2
 FTB4UbV8yQ2xgjgWPFpVyhPM3EfqSNUg0W/mBT0RgQBvgdFytaocq8eJ0hCPAtw/erA5
 VZeg==
X-Gm-Message-State: APjAAAW70pUJ5kSyJeIEEV9zEH3+nQ3vZAhpkKP93WJnjuzxH/c6jbEI
 QRjXed+mR5kwYo3Yqo7fHx4=
X-Google-Smtp-Source: APXvYqyltBUmIDPff9MzOKVsnLKdLLLDhQKStB24jbwVvtjezQpxtP9BLXnDENuon3HqazilZSGjqw==
X-Received: by 2002:a17:90a:32a3:: with SMTP id
 l32mr7061863pjb.14.1567035708956; 
 Wed, 28 Aug 2019 16:41:48 -0700 (PDT)
Received: from mail.google.com ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id g1sm270497pgg.27.2019.08.28.16.41.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Aug 2019 16:41:48 -0700 (PDT)
Date: Wed, 28 Aug 2019 23:41:34 +0000
From: Changbin Du <changbin.du@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 01/11] ftrace: move recordmcount tools to scripts/ftrace
Message-ID: <20190828234133.quir3ptl4kidnxud@mail.google.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
 <20190825132330.5015-2-changbin.du@gmail.com>
 <20190826184444.09334ae9@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826184444.09334ae9@gandalf.local.home>
User-Agent: NeoMutt/20180716-508-7c9a6d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_164154_713591_283AD695 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, "John F . Reiser" <jreiser@BitWagon.com>,
 x86@kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Matt Helsley <mhelsley@vmware.com>, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 06:44:44PM -0400, Steven Rostedt wrote:
> On Sun, 25 Aug 2019 21:23:20 +0800
> Changbin Du <changbin.du@gmail.com> wrote:
> 
> > Move ftrace tools to its own directory. We will add another tool later.
> > 
> > Cc: John F. Reiser <jreiser@BitWagon.com>
> > Signed-off-by: Changbin Du <changbin.du@gmail.com>
> > ---
> >  scripts/.gitignore                   |  1 -
> >  scripts/Makefile                     |  2 +-
> >  scripts/Makefile.build               | 10 +++++-----
> >  scripts/ftrace/.gitignore            |  4 ++++
> >  scripts/ftrace/Makefile              |  4 ++++
> >  scripts/{ => ftrace}/recordmcount.c  |  0
> >  scripts/{ => ftrace}/recordmcount.h  |  0
> >  scripts/{ => ftrace}/recordmcount.pl |  0
> >  8 files changed, 14 insertions(+), 7 deletions(-)
> >  create mode 100644 scripts/ftrace/.gitignore
> >  create mode 100644 scripts/ftrace/Makefile
> >  rename scripts/{ => ftrace}/recordmcount.c (100%)
> >  rename scripts/{ => ftrace}/recordmcount.h (100%)
> >  rename scripts/{ => ftrace}/recordmcount.pl (100%)
> >  mode change 100755 => 100644
> 
> Note, we are in the process of merging recordmcount with objtool. It
> would be better to continue from that work.
> 
>  http://lkml.kernel.org/r/2767f55f4a5fbf30ba0635aed7a9c5ee92ac07dd.1563992889.git.mhelsley@vmware.com
> 
> -- Steve
Thanks for reminding. Let me check if prototype tool can merge into
objtool easily after above work.

-- 
Cheers,
Changbin Du

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
