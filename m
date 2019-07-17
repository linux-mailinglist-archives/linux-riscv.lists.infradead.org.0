Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FB16BE10
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jul 2019 16:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZgcVP3x0YXjhLSByGyf+OAFUZVq8JYJrxSq7VsnN/k8=; b=p2k1MloK7sdYFmIKM8c8G8dzug
	9WlBoTRzKyws1ygkHTvMSMoyMUDm5CWez+WSUkGaYX+o07Y+Ud1G3uMRtBItolbwViOoLM12EQtFi
	5MBewRdTAVVgppT2pqIDav6dohXluvITISHNBi2zmyoPoH0eyKIfdsZKlvhoM/PHvMeq2QWWI92PB
	5nNNnujYCPtj9eAseKFPLkN9ZJt31fjLm4dE3pHU2cK7tlyNMUz49t9VS2cXLPcuGnj6LrH6heCqV
	J11BL6YksW25zd/BC3gAENPjMWPV4b9GotFFF5wrhulkKYOJ32wvfNYBRY1m3aiDvzNQ5/e5JOfeE
	u+VGZSNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnkjr-0003Bb-EI; Wed, 17 Jul 2019 14:16:59 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkjo-000397-87
 for linux-riscv@lists.infradead.org; Wed, 17 Jul 2019 14:16:57 +0000
Received: from [192.168.1.110] ([77.7.13.186]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkHEH-1iBlku1J9t-00kfCy; Wed, 17 Jul 2019 16:16:41 +0200
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
 <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
 <20190716123431.GB2999@mit.edu>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <77f82ca2-f89b-e8e2-507a-c37bce1343a5@metux.net>
Date: Wed, 17 Jul 2019 16:16:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190716123431.GB2999@mit.edu>
Content-Language: en-US
X-Provags-ID: V03:K1:8HnEQhX5qC0lbl/5iJtYcFfeJ0Kw333zWG878y65QFvMazOMKER
 WHM/m1Ezx3M1tX80++6gg/P7sJ7xS69gwKfMLSzdNgGCYvFya0T3VZQCHM0U1inFUEri+a8
 GiOVyeW37SZ681d9hkRJZMu5QQNf3BowK45qR2u42VZ9o2aJuzXyxDzcKeLaHoj211cD2MN
 KLPjrLUbq3j+8tC7yAiSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iqJCQL2Ve+M=:eLA7MM/kzThA5XWvEsiQfx
 FqCpQSrv85qNdT1iaOWhC8bCBMiQV1vf6FOlR+R/KY9pj2ve5MZZ128EYsKNlSlpo4283aJpJ
 Iu00EI+e7IC9m7PqrJ7cGHqpM1KGM1J0ZY3ouApUNbuF9ILgTxJIzQwV5c4hKCNCUNaxikERj
 7HeT0CEW5VyzpzS1S0Scg4ELM8yVakZ5wHqzQHQ+6OT8UVR12sPfySw+WVum8Jax5mvx6cqx6
 igNAtoAVdttDEuX4Am5DZp2/hIL4y5SYKp2ZWj8OtjqYaZ7DbjV9rHYbSJQwdddqkCDy6FiJ6
 DTms95X+fwEa0o1nfxKExtIyQgghHOkGFoHfhLJZGiMLOoGN8Y6E1r2RQSJyLS5zPTrtDp+Rv
 GXZlicSwpoZXzWYH4ROm0XC7uqVMk5QHStfGDpNYuYCIWl3E0+fbcseAhcdzJh9jbmIyhnwhg
 5gPNg3WAxaXTW/trnRdCBG0MB01BJC+Z/lhBymKXyGX3BqLQbRfCmDH8ZXMluG/Bp2twCYo5M
 Ck27fR1WA5kNyM6BbMt6PG1+w14CTgPapAbmo8dpSfux7kh5JhgcInF2cjDJERPW009OgxiAC
 HzljwX2k+bxfyzUkE7RO97wjJQdua0RlMJMQ9mp0tHkvL9N4PkwyOtfibYge2Orb4bkaZ5SLt
 AKjqjN/xTd3cgVGyuHWI1nzbvYs/7zO6HmJuqVaAqof3ug9dTR7DF9ZWJ+DXxBrBKWsnJT77D
 9te7Li0DfCy067+cxIpEtAUS11vbfdPe0wz2XBP9M4lZhoQBwxDrmg5hGAc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_071656_584041_A8F4F20C 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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

On 16.07.19 14:34, Theodore Y. Ts'o wrote:

Hi,

> In practice, that's not going to be a problem for most distributions.
> The traditional way Debian-derived systems have done builds is
> completely outside of git.  So there will be a linux_5.2.orig.tar.gz
> and a linux_5.2-1.debian.tar.xz.  dpkg_source -x will first unpackage
> the orig.tar.gz, and then the debian.tar.xz, and if the second
> overwrites the first, it's no big deal.

ACK. IIRC they already filter out debian/ directories when generating
upstream tarballs - other upstreams already provide their debian/
stuff, too.

> First, once it's checked in, I expect changes to the default
> debian/rules file will be relatively rare.  

ACK. I currently don't see much reasons for future changes. If anybody
sees something missing, just let me know, and I'll take it up for the
next review round.

--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
