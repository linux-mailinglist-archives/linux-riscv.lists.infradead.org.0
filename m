Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611121306E0
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Jan 2020 10:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YtrZQ7AyeMu/z2bmpNOwY1Sd/VkWyMUED9k1YqFUvZg=; b=Cy5o16IwI9CO8d9UKGJR0ndvm
	r4KLtpUcsRkb3oripahB0J5UDh1O4+Qd3grXToACjac741ILxcWcgVW/Ly6Q5Mmjmkn63BoN2m2/L
	dNxKlScyPgGPbox8f22Lqs3bM1IUNpLdzIHcEeJssEuTzeiSCkDuB6t18iqLlHhW8wxyzBT1vEFHP
	rWfairuaebv6vTi7qRjYtwbIKD/m1dYdEonyqNqjwL5Nuz3QVIYb8ZdmJEnielYh7FM/n4BVY4jUN
	0aTrZRq2mSx2oeQjqd7Uq/+YS9C2z0wWJffOkZ8goFT3HFg6PXHJrVN1B3zPEXQStD5tH/gf98sFD
	+T9BTUgKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io1nC-0002ua-QY; Sun, 05 Jan 2020 09:01:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io1n9-0002tq-4U
 for linux-riscv@lists.infradead.org; Sun, 05 Jan 2020 09:01:48 +0000
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10E7624672
 for <linux-riscv@lists.infradead.org>; Sun,  5 Jan 2020 09:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578214905;
 bh=4NAiR6aU9fppWcMMo72u1LKgrx1TYaLfDaJ9c3BYY0g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=df8gyJcLYHrsYsIWtkf/t1epjifkYjoAndK3OkJeqWXjpHoNmEZuQAofWmOJ4JMHg
 gIS12JPw9LXJVBWPNWG4e8t2gxWvXMLtFzkB6s8vsawDE4JTxRy5LAc/sOYgegsvUR
 f+HSCPeXSjDUui0Q+YwC46SSi4xn2tSq6JVrxaUQ=
Received: by mail-lj1-f177.google.com with SMTP id j1so40529682lja.2
 for <linux-riscv@lists.infradead.org>; Sun, 05 Jan 2020 01:01:44 -0800 (PST)
X-Gm-Message-State: APjAAAX+RsOYl0AneVXrzezcWtLvzCW7KbsYlabh+ieHsJAVD8njIjOk
 h2nSvljTlGPIo08mkwaAqh4eavMPIV65j80OlMQ=
X-Google-Smtp-Source: APXvYqyR7QraAgKUypqOelCu6BJ14MzHMVlNf4HmCJrq1/e3Pgnip4Mvypqtx4TOls127CrbnpwZwZS+hWPYO2lFYIY=
X-Received: by 2002:a2e:2e12:: with SMTP id u18mr30759716lju.36.1578214903123; 
 Sun, 05 Jan 2020 01:01:43 -0800 (PST)
MIME-Version: 1.0
References: <20200105025215.2522-1-guoren@kernel.org>
 <20200105025215.2522-2-guoren@kernel.org>
 <87o8viwb44.fsf@hase.home>
In-Reply-To: <87o8viwb44.fsf@hase.home>
From: Guo Ren <guoren@kernel.org>
Date: Sun, 5 Jan 2020 17:01:31 +0800
X-Gmail-Original-Message-ID: <CAJF2gTREKZ7FwQtyG+3YJ-Ne2BiyyWNhy4dgjVt0Y_qyy79p-Q@mail.gmail.com>
Message-ID: <CAJF2gTREKZ7FwQtyG+3YJ-Ne2BiyyWNhy4dgjVt0Y_qyy79p-Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Add vector ISA support
To: Andreas Schwab <schwab@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_010147_198809_F1BBDC93 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>, aou@eecs.berkeley.edu,
 Guo Ren <ren_guo@c-sky.com>, Arnd Bergmann <arnd@arndb.de>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, vincent.chen@sifive.com, palmer@dabbelt.com,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Oops, thx. :)

On Sun, Jan 5, 2020 at 4:39 PM Andreas Schwab <schwab@linux-m68k.org> wrote:
>
> On Jan 05 2020, guoren@kernel.org wrote:
>
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index d8efbaa78d67..3d336f869ffe 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -286,6 +286,15 @@ config FPU
> >
> >         If you don't know what to do here, say Y.
> >
> > +config VECTOR
> > +     bool "VECTOR support"
> > +     default n
>
> default n is the default.  Did you mean default y?
>
> > +     help
> > +       Say N here if you want to disable all vecotr related procedure
>
> s/vecotr/vector/
>
> Andreas.
>
> --
> Andreas Schwab, schwab@linux-m68k.org
> GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
> "And now for something completely different."



-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

