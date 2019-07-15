Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF2E69B3B
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jul 2019 21:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZ97wY6C3LmkC0rqY4ZTwj4LQ7AzRUkCQMkt7qShmoY=; b=qYDLVJ9p9hVaZV
	8PAXZgesIXuPVx9kWUIpX3HbEmktkJW/u9bsxrspJaEKOLmaBFxVaeut1xBpbcOyuECPYiIZE8d6x
	OgheGSQr7jp0GBhXQVJ/9B5cetQJpQTnswTKfJUJK/k8oJD1rzdqLP/dpX8585QMdarWzSARRegnI
	GeOGwMQiOk39P+xx+niyuKCGSBLfIp1IcQzV2udR5cK0LgXlyE/AmVVdY/yy71rc46OxEGKmyXvLe
	Pb/P1bPhnbvadlYqAlOB29r800nQcuCXdOs3Gam+fTRubVDRixPpXg+ELPS3cuaTrSnlQUlnNrL7B
	TUbGMVqjb1HNF0lX5Rig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn6PH-0008TA-13; Mon, 15 Jul 2019 19:13:03 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn6PD-0008SZ-4b
 for linux-riscv@lists.infradead.org; Mon, 15 Jul 2019 19:13:00 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com
 [104.133.0.99] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6FJCkVS024453
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jul 2019 15:12:47 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id DFA1E420054; Mon, 15 Jul 2019 15:12:45 -0400 (EDT)
Date: Mon, 15 Jul 2019 15:12:45 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Subject: Re: [PATCH 4/4] debian: add generic rule file
Message-ID: <20190715191245.GD3068@mit.edu>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_121259_349926_452A1626 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
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

On Mon, Jul 15, 2019 at 08:56:25PM +0200, Enrico Weigelt, metux IT consult wrote:
> On 15.07.19 14:28, Masahiro Yamada wrote:
> 
> >> The rule file contains a rule for creating debian/control and
> >> other metadata - this is done similar to the 'deb-pkg' make rule,
> >> scripts/packaging/mkdebian.
> > 
> > I saw a similar patch submission before, and negative feedback about it.
> 
> Do you recall what negative feedback exactly ?

It's possible I'm not remembering some of the feedback, but the only
thing I recall was the comment I made that I'd really like this use
case:

make O=/build/linux-build bindeb-pkg

to not break.  And as far as I can tell from the proposed patch series
(I haven't had a chance to experimentally verify it yet), I don't
think it should break anything --- I'm assuming that we will still
have a way of creating the debian/rules file in
/build/linux-build/debian/rules when doing a O= build, and that the
intdeb-pkg rule remains the same.  At least, it appears to be the case
from my doing a quick look at the patches.

> > Debian maintains its own debian/rules, and it is fine.
> 
> Not for me, I don't use it - given up trying to make anything useful
> out of it. It's extremly complex, practically undebuggable and doesn't
> even work w/o lots of external preparations.

Yeah, the official Debian debian/rules is optimized for doing a
distribution release, and in addition to the issues Enrico has raised,
last time I tried it, it was S-L-O-W since it was building a fully
generic kernel.  It's not at all useable for general developer use.

It sounds like what Enrico is trying to do is to enable running
"dpkg-buildpackage -us -uc -b" from the the top-level kernel package
as being easier than running "make bindeb-pkg".  I suspect this might
be because his goal is to integrate individual kernel builds from
using Debian's hermetic build / chroot systems (e.g., sbuild, pbuilder)?

     	       		      	       	       	      - Ted

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
