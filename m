Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA64115892
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 22:23:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=33UvPPPikXdBo5UqVXIO9fOcJEfCIytsFl6Vq5hgbDY=; b=ahe+oVDHXnHggbGfJowk96LzD
	igCyfBMANttZH0rIFmF+pUNZFsri9q/q416znTzgaC3uQTffysT/XeBhn73HNNrc9iesNYnejqEdu
	zCDdvGZPQcGBfVpRLmg+Y7lyoQWt19fnY8ZAlszrmsgVazuESv8Lzr7cth/KpR7bkZZn0BgJf8/Sp
	2v6VnAtC4a/8NnxfeFtDXkV64aso90yvpOx3PXZ0IQOBHX/W7O2rUitfgKbaQOkz55H3BeswWJTg0
	wiv309/IRW8QPhYGe8t3fY8HvaAIIOJbgAknR5kGuccu98nEeYmLU4VIbdcm4yb5RG03cRSbAwO9F
	KtY3wMw5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idL4M-0007hT-4H; Fri, 06 Dec 2019 21:23:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idL4J-0007ge-Fj
 for linux-riscv@lists.infradead.org; Fri, 06 Dec 2019 21:23:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id l18so6336621lfc.1
 for <linux-riscv@lists.infradead.org>; Fri, 06 Dec 2019 13:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=33UvPPPikXdBo5UqVXIO9fOcJEfCIytsFl6Vq5hgbDY=;
 b=QbFw/8XlQT2pipRqdCg9I+rSe4FLl6AknneKlqx43cRU3CNqoWkLozz28r7O2ZmCOz
 zOYuDWbSSWb74gksR4qXilyw7QCfb4OvPTYw4S4vAvWvrq1NQPfh+Tc+iCjJF5j5Az70
 Pw4O4duHeBe9zR9bdDicQDvbEQwD9fNNlNPMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=33UvPPPikXdBo5UqVXIO9fOcJEfCIytsFl6Vq5hgbDY=;
 b=lapeLJWfkTFFQfBWMCyBcH1jBjgjyVjG53g2R2i4JWX5P+45Tg++I/LlmKDu1Fp67/
 U1zr0yWzxDxpT02WMjzqcG5H7SGdSXinA0bOTLCR+e14osjKJ3TSkuA+0K832CgOTGRM
 5IoBRBA23Xft5gRjCknhcgNBmgd/sTbyeOFiJsoVwJY0fodVsXAL6nJG7XrjN7JqbQ0i
 mNvgK604bbG4Mt2nbVlUSzyCO27vMAKT7QgLNbNzoxqdolSiDgGwk5HWU5LocJxlQMAI
 ptbDv9bibf2QjJTh9Fhq1zrhTW/ER3CTYJ+c797Lu82fyKgk1Bbg0e2ESpDr3RJocjNY
 Vdsw==
X-Gm-Message-State: APjAAAWSqraeXfxJe/wCoyLo2iHqDGK7uEbZZ7hcGgV51fhA2UjXANJV
 hcIOLYzP7jcsIf9CFzOy+G7W1gKZxM8=
X-Google-Smtp-Source: APXvYqxrux3Oihdc+mGaIkyKpZ5ttRLR0wsV2weM+h/2AaCzgFU9ptU0iqlSfbfkrM9WdZokU9Kq7w==
X-Received: by 2002:ac2:5582:: with SMTP id v2mr2688702lfg.183.1575667393321; 
 Fri, 06 Dec 2019 13:23:13 -0800 (PST)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id e17sm5349162ljg.101.2019.12.06.13.23.11
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 13:23:12 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id c19so9093638lji.11
 for <linux-riscv@lists.infradead.org>; Fri, 06 Dec 2019 13:23:11 -0800 (PST)
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr5352792ljj.97.1575667391454;
 Fri, 06 Dec 2019 13:23:11 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041644170.206929@viisi.sifive.com>
 <84c4ee600c0dd235a0fcc257115807af7207b5f6.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912051435130.239155@viisi.sifive.com>
 <99bbf5710da82c8b52e59ad5fc4e44471573ecd3.camel@wdc.com>
 <3286a00cb9c8033872f533ec3e7f3db3e652c30c.camel@wdc.com>
 <CADnnUqe-=yTAFbwin_Lti6mQKqO2ABVYMa1XgTv_J=usT5w2gg@mail.gmail.com>
 <CAAhSdy0BXtkZPbav3QRtdMN9GcYG0SuxBDpwjFC8B_pr35s+Kg@mail.gmail.com>
In-Reply-To: <CAAhSdy0BXtkZPbav3QRtdMN9GcYG0SuxBDpwjFC8B_pr35s+Kg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 6 Dec 2019 13:22:55 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjGqZk7XcmtqJ7J0Em_XP1ECYU4CDBwFuMOjLrBH0-AHw@mail.gmail.com>
Message-ID: <CAHk-=wjGqZk7XcmtqJ7J0Em_XP1ECYU4CDBwFuMOjLrBH0-AHw@mail.gmail.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_132319_526596_7DF92131 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 1:15 PM Anup Patel <anup@brainfault.org> wrote:
>
> Better approach is to have a fragmented .config for extra DEBUG options.

Guys, stop this silly thread already.

The fact is, defconfig is useful for basic smoke testing - automated
compile and boot testing, and getting perhaps random people to test
something.

But it is not appropriate for a distro to use. Anybody who makes that
argument is wrong. If you actually know what you are doing, the
defconfig is entirely irrelevant, and no, trying to make special debug
fragments isn't going to make it more so.

So if you are a RISC-V distro: stop using the defconfig. You shouldn't
have used it in the first place. It's not meant to be a usable one.

And no, don't start making "more defconfigs". We've had that mess too.
It's broken too.

If you are a distro maintainer and you cannot be bothered to make your
own config file, then you should just stop being a distro maintainer,
and maybe take up farming instead.

Right now you guys are just wasting everybody elses time. Stop it.

Or at least remove me from the cc, because I'm  not interested in this
whiny "I'm too lazy to maintain my own config, and I _insist_ that the
defconfig is meant only for me".

             Linus

