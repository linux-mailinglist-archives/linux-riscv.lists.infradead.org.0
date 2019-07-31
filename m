Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11797D146
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 00:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06vW1NWAR4dRuYZLl7jTC41mM1apsp6aQYM1JYGRBUw=; b=cUCNtV4LB2SKcx
	M4y2ElAtgiqm/IyJTMYNfz2uOeMxXKnO/4wEcfS3l9HNCQPG5WgVfEd3F6ZDEvXPuiWotKd3SZIBx
	HeUOdt+1nykIsaljPsVggBezxy9wXn+ICEK5q8C76nV6moraJ6pyfRyTuD8M/IFQ59Y1FD9wrZGcF
	j3CbTWpYTMByKYyZp5n52qDDjuB9S1+iInOjyv5ZCWnkSKfwjhOOrS9eQegdH4vE6UwCvBpRkN6cG
	2rAgvxKq2VN/ZSN+3EsT3adZ7JTtlRwt+lhx/QZg2tF7qkJBwdSnpE9zNPZMI1/9kZ/goq6SGZlN7
	rDwEeqXCEAS2I5o/JDFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxH7-0003IU-VL; Wed, 31 Jul 2019 22:40:49 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxGv-00036Q-SS
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 22:40:39 +0000
Received: by mail-io1-xd44.google.com with SMTP id h6so14762184iom.7
 for <linux-riscv@lists.infradead.org>; Wed, 31 Jul 2019 15:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=egRpxJBa9oK7OchDbNGXXbbAvoOMUOmZrCvbt5gO8zI=;
 b=QvM5gURgmBtYYb5ewAA6jGZY4ljdEgJDQkLHHqVikVD66zPlOj6SuWDfLaZFvi4LUF
 FQdJPeaP2xBSfu5VhEpovno9nnLQOcyhglyYB0pRP4JDwGr0eAqZbpbagc3uUt7s9USv
 Mpj2IzZzl+bJl5mUIlw221ntI2T0Gd3i5626L0lZpF3NQf2YbT9pIlRRSe+aFdedyfsu
 M2J7DASUn+cy4TT7B8G64SBFNLwKRalGaUFXLhzgYJLwUMSwiCHsd5R54xYkxPti/wZi
 C3bY3XL25Z5iZQrpq93tCxIGxwS4lBIYfZ/mctkv1io4wB2KYJZz7fo2JWv6xUDgj8Db
 lqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=egRpxJBa9oK7OchDbNGXXbbAvoOMUOmZrCvbt5gO8zI=;
 b=VcHamUfijPBeoQD01ibd21Fk6VTiYMBGJuKtQL7ueUv5HndVNqTLvJYc3Fd082olu4
 z4PmaB7pRKZ93xtfXjbn90tYvci6Q5WoZragznQEQvKs4yDum3yANqi66C7CDRk4qAFK
 1+BtL1KqOP+NgPqRmEg/RVr/z9l+xzLiMEC67vFKXv4KVTVDEgX4oXwN+vyx9+M3YWiN
 GUSOx47lym95q5/DqW+MzTwqFxL2FsiJuVh1vRpycBk+tW/JPza9ThjTEK+AzrQnfm0S
 a/FoIw8tXz6UyvRToiW/RkVKW4yhgkq2rQYakpA5oN/Gmj0adXUjZc/xccngWP/Zz6ei
 faNg==
X-Gm-Message-State: APjAAAUOSfDawkEvf2Wzqv+QD7Xje5h/QgY0bIdoH/BkInf5abK8wPda
 cu+r5BKi4zUVpUWxBUXgPfnu2A==
X-Google-Smtp-Source: APXvYqwrG00LBhTpDLsR7IvSvLbPRzUfGNUjyuov0y6Pr5JYCZwHs6hWm99dQiGbrjWMUvsaR2nw9Q==
X-Received: by 2002:a6b:f406:: with SMTP id i6mr44093290iog.110.1564612836637; 
 Wed, 31 Jul 2019 15:40:36 -0700 (PDT)
Received: from localhost ([170.10.65.222])
 by smtp.gmail.com with ESMTPSA id a7sm56245658iok.19.2019.07.31.15.40.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 15:40:35 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:40:35 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v5 14/14] riscv: Make mmap allocation top-down by default
In-Reply-To: <20190730055113.23635-15-alex@ghiti.fr>
Message-ID: <alpine.DEB.2.21.9999.1907311538460.22372@viisi.sifive.com>
References: <20190730055113.23635-1-alex@ghiti.fr>
 <20190730055113.23635-15-alex@ghiti.fr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_154037_953935_1E079DA6 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Luis Chamberlain <mcgrof@kernel.org>,
 Paul Burton <paul.burton@mips.com>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019, Alexandre Ghiti wrote:

> In order to avoid wasting user address space by using bottom-up mmap
> allocation scheme, prefer top-down scheme when possible.
> 
> Before:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 155556f000-1555570000 rw-p 00000000 00:00 0
> 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> 1555574000-1555576000 rw-p 00000000 00:00 0
> 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 155567a000-15556a0000 rw-p 00000000 00:00 0
> 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> 
> After:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv

As Alex notes, this patch depends on "[PATCH] riscv: kbuild: add virtual 
memory system selection":

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1907301218560.3486@viisi.sifive.com/T/#t

which will likely go up during v5.3-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
