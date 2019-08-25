Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C62A089E
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 19:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9adY70CEcz6Fnq+nTj4ml/lRJTgmWSkjMCFuHCtcsQc=; b=oiUYG5apJExk8s
	yYdWFO/g747MmSVDsf2oHsHIUrReGes5kjmddDr2+/bGE1oDjP4dyBeJDlr/jlsWunRq4leEGmBtG
	vg04sTxVEmg/bRIspUilAvyNvJeYZJX/iz5wnpSzGst1g/K8o3Sy53wUb/sVzplL7d4EOecHDnvlh
	h9JzfF5SSTAk1We0tWoHAKEQL0zPabFivRLEN3Sww3Sk+ikOrJ6KFEcm4it5WASbYcyWUA0Fyt6Em
	a9AuPlJox2MioEgpS+oznB72bh8/KxnaN56toohbc4WEOjooEFOeZ/z+1c2fmI0Fe6bdHMx8zweKQ
	Uraz/Px0a4mMSNkiXErw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31s2-0001CD-Fj; Wed, 28 Aug 2019 17:36:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31rw-0001BI-35
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 17:36:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id g2so267342pfq.0
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 10:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=m0Ol9KiCJuTthVJpNdqXavAOI9ULv3o3m1zh5s9b1As=;
 b=oFW8k5shx9dzTZCg4oYfKxxrESLsvpAIA5QCO3DOe5JfSNX5ICxHFKvHATbc9VgD3w
 5+rVewSkK5+kiL+7lS0d7oAaUMKOuRqjYZaH4CxrLhIbqdMKdMJyL9TmnRR+lSFDhS+9
 H/J3m1QfdE0eP7mou/vg7EAYza9c0CwIYY860=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m0Ol9KiCJuTthVJpNdqXavAOI9ULv3o3m1zh5s9b1As=;
 b=D+aJtHthg106klMvi/hTYEW+AolJ28i0tfxwmct7iDvLkS5A4VROcFd2wCmuTR3j/S
 CJL9HchBEcea570okCF6FLj74qca5liwJwgutOXNqmZFo9R03KVoBkkxJOdnd+ik5XXC
 mduguQRSYb9uR/Y1J0bYjfFSaejk/1mr9MscqOIuoOxfnUtHJ/PzujbO3wI6M2anwidb
 slBTiuvBfiltvR5+cK/akj2ulyVfWszFVTEfN+QTjdhaqcG0IWZ8wmUywo20GEeggYRk
 sZjHEFC0LEI1jZh0UJ2ihvunUSgSSBVUoPQhe0OEyvbkckPxr2O73sxzI5pM5SCws8ea
 dbOQ==
X-Gm-Message-State: APjAAAUj65jk1TeEpZSHUFl0LCDbmNHrd4og2G8a3UAKZ/IAusgtxNEg
 I29EZ1+aZhMGB+z6FmXWFgtJbA==
X-Google-Smtp-Source: APXvYqyH/WYT3nu0TOtBHExVMlqdFHVZ7R0fY91sEAf7okZikcnLyqTOEJjyRHLyXhLgGQXRNGz22Q==
X-Received: by 2002:a63:f13:: with SMTP id e19mr4496092pgl.132.1567013786692; 
 Wed, 28 Aug 2019 10:36:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d11sm4397723pfh.59.2019.08.28.10.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 10:36:25 -0700 (PDT)
Date: Sun, 25 Aug 2019 14:59:37 -0700
From: Kees Cook <keescook@chromium.org>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
Message-ID: <201908251451.73C6812E8@keescook>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103628_133226_A938E6CF 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 01:55:22PM -0700, David Abdurachmanov wrote:
> This patch was extensively tested on Fedora/RISCV (applied by default on
> top of 5.2-rc7 kernel for <2 months). The patch was also tested with 5.3-rc
> on QEMU and SiFive Unleashed board.

Oops, I see the mention of QEMU here. Where's the best place to find
instructions on creating a qemu riscv image/environment?

> There is one failing kernel selftest: global.user_notification_signal

This test has been fragile (and is not arch-specific), so as long as
everything else is passing, I would call this patch ready to go. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
