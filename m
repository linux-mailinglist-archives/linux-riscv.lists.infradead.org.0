Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D916BEF2
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jul 2019 17:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9V/l1GUV36JxT0wOiqRbkSM3rqFpEufQAsCw4YxaOI=; b=WvL70RsUkc14+3
	Sdz+TgW3v/0erDh9rNgRqwAyh1vux92oo9WbjnXRN6/jtOnInnXkonsNlaPzua3AETU3NlRMHmAfN
	TE4jlrHJq/gnrx4La/wEpGVhHzNwGOXOUUDakupPsO1BSoc8m0MGUqOafbsGQFh9FSkwtZvG5EQhy
	G/5N++HNbt/lHg3JKgn56sd98+kEDHXtt8hhncddzZulBDRQs9NGejTglOdCwV+RGmSHD+uDbw5Gp
	AziVv79CEtc6bFwr6rDF4hyKTfP/LDSEcb5QV3MxzNO/m5ISorKR5X8lyIp+AD2DpW08SvmghkjOO
	y/2b/vTgoxPnUH17pXiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlmR-0000FS-6g; Wed, 17 Jul 2019 15:23:43 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnlmM-0000Eh-6C
 for linux-riscv@lists.infradead.org; Wed, 17 Jul 2019 15:23:40 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com
 [104.133.0.99] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6HFNQK1019058
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 17 Jul 2019 11:23:27 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 5AE86420054; Wed, 17 Jul 2019 11:23:26 -0400 (EDT)
Date: Wed, 17 Jul 2019 11:23:26 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Subject: Re: [PATCH 4/4] debian: add generic rule file
Message-ID: <20190717152326.GC31412@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Robo Bot <apw@canonical.com>, Joe Perches <joe@perches.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-riscv@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
 <20190715191245.GD3068@mit.edu>
 <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
 <20190716123431.GB2999@mit.edu>
 <77f82ca2-f89b-e8e2-507a-c37bce1343a5@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77f82ca2-f89b-e8e2-507a-c37bce1343a5@metux.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_082338_639746_1B87EE81 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Robo Bot <apw@canonical.com>, Joe Perches <joe@perches.com>,
 linux-riscv@lists.infradead.org, "Enrico Weigelt,
 metux IT consult" <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 04:16:39PM +0200, Enrico Weigelt, metux IT consult wrote:
> 
> > In practice, that's not going to be a problem for most distributions.
> > The traditional way Debian-derived systems have done builds is
> > completely outside of git.  So there will be a linux_5.2.orig.tar.gz
> > and a linux_5.2-1.debian.tar.xz.  dpkg_source -x will first unpackage
> > the orig.tar.gz, and then the debian.tar.xz, and if the second
> > overwrites the first, it's no big deal.
> 
> ACK. IIRC they already filter out debian/ directories when generating
> upstream tarballs - other upstreams already provide their debian/
> stuff, too.

Well, no, actually they don't.  That's because as much as possible
they want the upstream tarball to be bit-for-bit identical to the one
published on the official upstream distribution site.  That allows
them to include the detached PGP signature from the upstream
maintainer, if one is provided.

If there are files in the upstream debian/ directory that they don't
need, they can delete in the distro's debian/rules file.  Ideally, so
we shouldn't include files in the Linux kernel's debian/ directory
willy-nilly.  But the debian/rules file will *always* be present, and
so it will be overwritten by the <package>_<ver>.debian.tar.xz file,
and so it's no big deal.

					- Ted

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
