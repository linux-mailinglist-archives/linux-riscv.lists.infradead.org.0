Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92190113A1C
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 03:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wx2vN1sbfR2KEWh0Q5FWJVtfVEAyeU1xy6cPm3pYEkQ=; b=Wwc0rUiHT0c2lyw/BOjIT/oWG
	1eKAfdCOlwhNKghsU8kdPxMWy9R4CIS393m8CcfyqG4b3dMAfEo2ckfyDzEEtNUk/K0DiD1WQtHgU
	81x1uJ6frd176j8navYObokINa6wOW9aT2n2dK4xN3XhTyc1TDo48EoCSu5TWjK++m6cLQCPtjQYT
	rWqnFbYwzvMlKUQa+MTkBtOBdUTr29NQoUVE7AF1erVRXCXZpjQgq+yQORM4z61K1iCX/ZZOojnhZ
	s0gHbp80vMITqb+2kVFcNOdzypjSwvhmKoL+nIbkDpoRl/gQNSqb6JGDDXAYsXoaeTDpkfjvQU+XV
	zkbtWjOxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ichIJ-0007TE-UV; Thu, 05 Dec 2019 02:55:07 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ichIE-0006ng-Oi
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 02:55:04 +0000
Received: by mail-io1-xd43.google.com with SMTP id v18so2037914iol.2
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 18:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Wx2vN1sbfR2KEWh0Q5FWJVtfVEAyeU1xy6cPm3pYEkQ=;
 b=Sn3hzJMiBhlnjlbDl3cQWnmVZn3CKfHiaMjRRohBzk3ad1ubx5myEHE8f2QM61tgz1
 9Wo2SESO3K+sTUNvQVRtIPk51yS67iY2jEx/b0nJL3TvixsrowhcaPdgl8xMHFzdsPJF
 /i4d1G/txICC2FzkyZQeWxpLu+Vu4F5lbBwlkDPPYPxs7AQsh/+XUZCEd8343JT/784t
 DFTEfO+yxhRX+PwnmnnjMXBKWV86dHq0RGjig4YZqYr8t7F6216CqhQUlsrN32q7OG30
 217adLUW6AwwGwX6eyEoPMcAzfcrpo71jpzu2op/iSAxe3onXnvhZKlrFxnGdF6gE1sK
 SLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Wx2vN1sbfR2KEWh0Q5FWJVtfVEAyeU1xy6cPm3pYEkQ=;
 b=pDhy8GABhYmLOgO5F4naXEz8DeNFkpcpNZVhZQUwuDzNPBoZbhR6s5Wp1Yb+wAmNhH
 T4Fh22t/0edHylUB8VWxnkgDtZTPX9+XKJpMwkHtC2kPx/uLDuHoIvTnbesDYELWVQ3w
 YRAGcKhXjN48ASqRhgfRU2lKPhW/XnF4KUD1z8HVmaAvQV3EdN/8l1jjRtsp64wHvPEE
 xs/g39rpX+meDnKbUg9mn3ffscH8pUgfdfwBYWOODjMqh338ZfdBdlH0Has20yMzbm7a
 OYqjr/0ReqMEz5mTauV3YEGTeiV3rOjmMtIhLqPwioro4doGHZOZit1YBjtS4lRXuqZ/
 NFsw==
X-Gm-Message-State: APjAAAVNP+4DlKrk3kUmcB//CakbUWGT1kpqJW6JgU+J6sIygofzfdU0
 xBB47BGFDEISsFc7sf4X6UJD0g==
X-Google-Smtp-Source: APXvYqxMpDQEvRh6dSHWsRJucpfP+RiNSViXrITtQiMiUtuG1U9XPcXXFNqowIIqL7RSH3bqzLRZjQ==
X-Received: by 2002:a5e:d50a:: with SMTP id e10mr4935722iom.83.1575514497748; 
 Wed, 04 Dec 2019 18:54:57 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id k16sm2377507ila.12.2019.12.04.18.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:54:57 -0800 (PST)
Date: Wed, 4 Dec 2019 18:54:56 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <Alistair.Francis@wdc.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
In-Reply-To: <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1912041644170.206929@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_185502_814413_B81A91B9 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 4 Dec 2019, Alistair Francis wrote:

> That is just not what happens though.
> 
> It is too much to expect every distro to maintain a defconfig for RISC- 
> V. 

The major Linux distributions maintain their own kernel configuration 
files, completely ignoring kernel defconfigs.  This has been so for a long 
time.

> Which is why we currently use the defconfig as a base and apply extra 
> features that distro want on top.

As you know, since you've worked on some of the distribution builder 
frameworks (not distributions) like OE and Buildroot, those build systems 
have sophisticated kernel configuration patching and override systems that 
can disable the debug options if the maintainers think it's a good idea to 
do that.

You've contributed to both Buildroot and OE meta-riscv RISC-V kernel 
configuration fragments yourself, so this shouldn't be a problem for you 
if you disagree with our choices here.  For example, here's an example of 
how to patch defconfig directives out in Buildroot:

  https://git.buildroot.net/buildroot/tree/board/qemu/csky/linux-ck807.config.fragment#n3

I'm assuming you don't need an example for meta-riscv, since you've 
already contributed RISC-V-related kernel configuration fragments to that 
repository.

> Expecting every distro to have a kernel developers level of knowledge
> about configuring Kconfigs is just unrealistic.

I think it's false that only kernel developers know how to disable debug 
options in Kconfig files.  As far as the underlying premise that one 
shouldn't expect distribution maintainers to know how to change Kconfig 
options, we'll just have to agree to disagree.

> > distros and benchmarkers will create their own Kconfigs for their
> > needs.
> 
> Like I said, that isn't true. After this patch is applied (and it makes 
> it to a release) all OE users will now have a slower RISC-V kernel.

OE doesn't have any RISC-V support upstream, so pure OE users won't notice 
any change at all.  Assuming you're talking about meta-riscv users: as 
noted above, it's simple to automatically remove Kconfig entries you 
disagree with, or add ones you want.

> Now image some company wants to investigate using a RISC-V chip for
> their embedded project. They use OE/buildroot to build a quick test
> setup and boot Linux. It now runs significantly slower then some other
> architecture and they don't choose RISC-V.

The best option for naive users who are seeking maximum performance is to 
use a vendor BSP.  This goes beyond settings in a kernel config file: it 
extends to compiler and linker optimization flags, LTO, accelerator 
firmware and libraries, non-upstreamed performance-related patches, 
vendor support, etc.

> Slowing down all users to help kernel developers debug seems like the
> wrong direction. Kernel developers should know enough to be able to
> turn on the required configs, why does this need to be the default?

It's clear you strongly disagree with the decision to do this.  It's 
certainly your right to do so.  But it's not good to spread misinformation 
about how changing the defconfigs "slow[s] down all users," or 
exaggerating the difficulty for downstream software environments to back 
this change out if they wish.


- Paul

