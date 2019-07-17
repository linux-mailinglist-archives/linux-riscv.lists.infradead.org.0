Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1258B6BB11
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jul 2019 13:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2NgVYVj9GH4aaEeV/bOZ0IhQixmTdUgXBu6IkazfPwQ=; b=EobmuR7ca/IUnR3GSJ4DF60AnQ
	RemcJu1fLywdZEV9BmH7/JIi0SXC8BJXsPD3usOce+xk8sVrClmxoyP73zM4eYgSrJjtKGa/B8e8/
	EKaO9bvF+FpsKhsZoPYpKynnUtPi1HlZB8K7JFQUAzeNEvE91M7t7wlvx7wVCF78dTfXgFq4NPCYW
	gfVUVwFdL3bv37VWqXeiQLg5JnQKmQJPM/4qiTjMvt8WCbpvPQHcr54xB7Cd8x/t7lCcdMR0lM6yi
	kdzFTayjdWAGhXABfg3LpOF0RvTNUM4/ligZLlhCMkpOPWaOWQHiNba8xEpj+WdizwkBdiTRy7uPS
	t0xnVcPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhne-0005b9-Kj; Wed, 17 Jul 2019 11:08:42 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhna-0005ak-2D
 for linux-riscv@lists.infradead.org; Wed, 17 Jul 2019 11:08:39 +0000
Received: from [192.168.1.110] ([77.7.13.186]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MI4cT-1hhRC50gpr-00FFCN; Wed, 17 Jul 2019 13:08:22 +0200
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
 Joe Perches <joe@perches.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-riscv@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
 <20190715191245.GD3068@mit.edu>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <9dace139-ab0d-f1bd-436e-d95a4ff4a7f7@metux.net>
Date: Wed, 17 Jul 2019 13:08:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190715191245.GD3068@mit.edu>
Content-Language: en-US
X-Provags-ID: V03:K1:ls2KdKhlB/ERv7ImE0pEbdHSeZNUh2CLrbNdokQc4+7HDaSPFnH
 NWof8UK9fZ70y9OOR7NqmnH49OthwYD4CJvEByZVBLedq6jKVFzDd8ZilQP6fvhLFS0CQgW
 eOIitHgU3txoT5k3bK0BeMXSos96Hb+c25Z9OnrRJyeuMbvCiekhpq0yCMvt1P6fUDHFJzD
 9b1bZJa5geDEZScPMT+8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l4VD3LhjbFs=:iBaZCq5t7ZNDjcoa1g/GHQ
 hPi2gmZPgmxeWOzgGFmciK5msfjaPYzPmXvGMIEWDgP5baBPaJp90fjM3CMYAFN4GMFrNjZ4D
 TXfZTKjxdLFSSY+ydeTHfW9Qbu4DhZr3Exrl6XjSn8RHFhx6CaW+EIc/+vjY/zXjMXNhJIoVZ
 jD9rCK7W19mZWbpfi2I8fowg0d6VGS8qbJRyjGI9jLTocymBTg+MaOYQSGnzZY/RfeRikDK+S
 EfM5Ti6J1MCMAKqaJMRWFY8ipIlxz1JXmrfhYN3SENTo1B6xG1+kBZ8Gr3tdjcpe7EGpALAP1
 Xj2YpneaVZKUkvw3PXKQAnBTGSYKvkQeG0DFvdiPexSnwOpnQuRSiurgX61daSGvbnRm0vP/S
 cVmNqlZpeUl+NdxnGpLyA37PAqX+SH3/Eejb6Xsme6DO8QUT72cnNXZt1stWcZk0nktWCTrMT
 8bMiF8rTH/a2Hfcyf1/8r3ldzkB0s4gb7uE137ENM2PdiQKrfOPoJiT3ya2uZkVI2wx1yjeao
 8lfI9xwe3MrusEOpwWz1E5ILm0B6SfEAQa7GVw8L0F80w7EqoTbRRv2UPezCVks49LIhyzOVL
 JCZCHWEL4FjceHHkvwhxvSKR4Twvzvg8gBoPW2HlpUL+ekEQSRmHUQbDoovscttYY73YL+xko
 m8d1CZ8dmbK7I83h/31GRJHJGkcNAzos1/tGfGJuseqUut94PR82A7/3EpOuR2BDKQ0P+44rS
 7c94uKgPuUWiIIL4mLwUmE6W+ZxR2McYZ2unEICCdVksL9oExYRrrD4fwGU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_040838_403586_4366EDC3 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 15.07.19 21:12, Theodore Y. Ts'o wrote:

Hi,

> It's possible I'm not remembering some of the feedback, but the only> thing I recall was the comment I made that I'd really like this use>
case:> > make O=/build/linux-build bindeb-pkg
ah, I yet wanted to test that - thx for reminding me. > to not break.
And as far as I can tell from the proposed patch series> (I haven't had
a chance to experimentally verify it yet), I don't> think it should
break anything --- I'm assuming that we will still> have a way of
creating the debian/rules file in> /build/linux-build/debian/rules when
doing a O= build, and that the> intdeb-pkg rule remains the same.  At
least, it appears to be the case> from my doing a quick look at the patches.
Yes (unless i've missed something), everything should remain as it is.
One thing that could happen (not checked yet) is that running good old
'make bindeb-pkg' without O=... could overwrite the now already existing
debian/rules file.

If that's really a problem, we could tweak the machinery to use a
different name for the rule file (for now, one the preceeding patch
just allows giving a different name for just *generating* the rules
file). Another idea could be rewriting the whole process so that no
rules file needs to be generated at all.

> Yeah, the official Debian debian/rules is optimized for doing a
> distribution release, and in addition to the issues Enrico has raised,
> last time I tried it, it was S-L-O-W since it was building a fully
> generic kernel.  It's not at all useable for general developer use.

I'm a bit reluctant calling this 'optimized' :p

The strangest aspect (IMHO) is they're building several different trees
(w/ different huge patch queues) from only one source package. Instead
I'd rather:
* try to get as much as possible in one tree
* have separate source packages if there really need to be separate
  patche queues (IMHO, these things, like RT stuff, just need proper
  Kconfig's)
* do all the patching in git and skip the text-based patches entirely

Haven't found out, why they're actually doing it that complicated way
(didn't get any useful answers from debian kernel folks)

> It sounds like what Enrico is trying to do is to enable running
> "dpkg-buildpackage -us -uc -b" from the the top-level kernel package
> as being easier than running "make bindeb-pkg".  I suspect this might
> be because his goal is to integrate individual kernel builds from
> using Debian's hermetic build / chroot systems (e.g., sbuild, pbuilder)?

Yes, I'm building all deb's by the same process / infrastructure.
In my case it's dck-buildpackage (*1) which runs the build in a docker
container (kinda pbuilder w/ docker). It always starts with a fresh
(minimal) base image, calls debian/rules to create debian/control
(if necessary) deploys the dependencies found in the control file
and finally fire's up dpkg-buildpackage - the output is collected
in an ready-to-use apt repo.

The goal of this is having a canonical build process for all deb
packages, not having to care of any special cases anymore. I also
have another tool ontop of that, which runs the whole show for dozens
of packages and targets (*2).

My first approach was trying to use Debian source packages with new
kernel trees, but had to give up after a few days. Then I've found out
that the kernel already has *almost* what I needed. The difference
between almost and fine is this patch queue (minus local .config files)


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
