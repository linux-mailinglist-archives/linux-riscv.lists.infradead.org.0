Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549246A8D0
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jul 2019 14:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E50UojnAIcVoCouWbsQ9bzeyB/Na3eQGZ1Syn03LN1c=; b=HB+H2dsqK5XbM1
	MHW8/V/3SGDJmQbMQIFFcKpNfNSGiW/LqMCoeMSIdPQusGqy9vT8DjiBzbvrUrWG0UywIGGgvPfft
	Vg7/dJzjXNk19669WW0V3qG3abJJIv/OqiTJ/kOZh2KjygvbjwIowhAXRePFU66Ck7WGy6v77u9XB
	NdG5tngZdUks8VBagVctikpJ9dqqCSiLCPItKiByBgAPkmoT1QNKbqP6Gg47tSlA+B18un/V0ir68
	hmJeIxJlLR45pae760J1JalwEb9thUzSphfM+nRXtnazfrgQCvZdT4GGhl2Pq1WZTTLiOZ8Nden49
	oHQoG+OFA6ko1es4CfDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMfN-0004a8-Nz; Tue, 16 Jul 2019 12:34:45 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMfI-0004ZV-FT
 for linux-riscv@lists.infradead.org; Tue, 16 Jul 2019 12:34:42 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com
 [104.133.0.99] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6GCYWYd026006
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jul 2019 08:34:33 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id EBB74420054; Tue, 16 Jul 2019 08:34:31 -0400 (EDT)
Date: Tue, 16 Jul 2019 08:34:31 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 4/4] debian: add generic rule file
Message-ID: <20190716123431.GB2999@mit.edu>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_053440_687813_81A87598 
X-CRM114-Status: GOOD (  11.18  )
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
 Joe Perches <joe@perches.com>, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Robo Bot <apw@canonical.com>, linux-riscv@lists.infradead.org, "Enrico Weigelt,
 metux IT consult" <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 05:58:49PM +0900, Masahiro Yamada wrote:
> I want debian/ to be kept as a drop-in directory
> for packagers, without replacing the upstream debian/rules.
> 
> If a check-in source file is modified in anyway,
> scripts/setlocalversion would set -dirty flag,
> which I want to avoid.

In practice, that's not going to be a problem for most distributions.
The traditional way Debian-derived systems have done builds is
completely outside of git.  So there will be a linux_5.2.orig.tar.gz
and a linux_5.2-1.debian.tar.xz.  dpkg_source -x will first unpackage
the orig.tar.gz, and then the debian.tar.xz, and if the second
overwrites the first, it's no big deal.

More modern Debian package maintainer workflows may be using git, but
in that case, all of the "Debianizations" are reflected in a separate
branch.  So it's not going to set the -dirty flag.

There will be potential merge conflicts between Enrico's proposed
"upstream default debian/rules" file and the Debian/Ubuntu
debian/rules file on their distro branch.  However, I don't think
that's a big issue, for two reasons.

First, once it's checked in, I expect changes to the default
debian/rules file will be relatively rare.  Secondly, it's easy enough
to use gitattributes and defining a custom merge driver so that a
distribution can configure things so that they always use the version
of debian/rules from their branch, so the merge conflict resolution
can be set up to always do the right thing.

There are certainly other upstreams which ship their own debian/
directories.  E2fsprogs is one such example, but in that case I'm
cheating because I'm both the Debian package maintainer as well as the
upstream maintainer.  :-)   However, it's never been an issue for Ubuntu
when they choose to ship their own customized debian/rules file.

> debian/rules is a hook for packagers to do their jobs in downstream.
> "We kindly committed a generic one for you" sounds weird to me.

It is weird, and it's not common for upstream packages (which are not
native Debian packages) to ship their own debian directory.  But it
certainly does happen, and it won't cause any problems in actual
practice.

Regards,

					- Ted

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
