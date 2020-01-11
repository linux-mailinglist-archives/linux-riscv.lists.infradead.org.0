Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A3137AE1
	for <lists+linux-riscv@lfdr.de>; Sat, 11 Jan 2020 02:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jxhHO7TnUt5CFGxVXLp4PUaAlysstA2E9WFkNf6HeEw=; b=DJMNfTrJ1lo+t+kA6M3SZN28q
	Az5+9oXOZPL7ZhNKH2gWc3W0yGLjXKaQrZcQscjl8zrSPpxVWnlgeURONYpiJKdYl/fnqmSZs7Ykk
	nvQuPyLpDBgAmXky5m4AzsaCluOxgQOU8s5kL62dp7n44HgoBmdAU4hrYFxthEJqu06g7w+0umv4A
	CbW7Naq5x0+Kw+SN8ZFxvn3bPjhFXI2V8SpT67+/Oh3tWrnHtwtVdVG1vooMhuIMN4Xke+Yr3hgc8
	nVYay0uuVP16QL6Yb/OuIEw0qz08ypsyeD7GItLyr+RLDW4J8XvE5mK1dZA7Tygbnj4z29/BqfCgE
	XxbABLWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq5Mc-0006Mw-ND; Sat, 11 Jan 2020 01:14:54 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq5MY-0006MW-Gy
 for linux-riscv@lists.infradead.org; Sat, 11 Jan 2020 01:14:53 +0000
Received: by mail-io1-xd41.google.com with SMTP id z8so4071496ioh.0
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 17:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=jxhHO7TnUt5CFGxVXLp4PUaAlysstA2E9WFkNf6HeEw=;
 b=njJ3fqs69ekKsCewD9b3mom64w15+ISwWIy/ODiGAXKNvHUgcfSg1JJuQZ5tnEPics
 f1yeJT8BbjZC6k0+66TTJT6oMkR5ceOQSjs1GM+KbwOoXMIxCwyFNTeIc6v1jbvekuKb
 bQ53zRrQaMBhyANsyVNsfIdvnUC43QZ5l1StqXlzEj6TTokCxg9glGd5aBvb+BCzGo5h
 oI+sZyAh/lgeg54K4rdaYfEIfw27T8OWtCrLFqTUmH0spYweujD/lTMmnuIzWJ191EM1
 x3UgIsYCIZ6U4KM5NO1Ta2jJ77bTEMnGgvjwZtDt54YjMEY08pNvHlvWJaie8qQArhJR
 gWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=jxhHO7TnUt5CFGxVXLp4PUaAlysstA2E9WFkNf6HeEw=;
 b=CkZl2e+yvopOYGkTylsqikGwlLbn0dpBKEJZuW/yMTlEjP9FOpQ4Tery4+9uXMFiMW
 vwi21OUEed5GgM+dTuPQj5qPqLZOabcm54N6j9hv4JmuFAdjtZD/dZDzozdN1dckSvmd
 hLDWyFEZ/74uDVZZOcog0jFuE8ZZM2/vg/5P8drKd/q2r2pgj4KAa78/ZfHzqBAdk6kX
 gmcvSDxEbj2OU9Gi5jvv9mZt1sdAiGzdbVMRMTL+kZuzFPpuEk/C6uWC9foEXE669Zqk
 n390d0iPw3jsbY8832w38oa6DANF0V7QjTH+NqiCtHT/vjgHzjicbvkGFoOI3U0lkyPr
 PlMw==
X-Gm-Message-State: APjAAAVIqgTw0Sm6L5nDBteHlu0ctn/6RvXDmeiG9Vw+1NJv5UcgyNTX
 rTEqWvfTYEy3ZG1h7eQewHUN9Q==
X-Google-Smtp-Source: APXvYqz1rr2BqNNcAIUBymdzx5yCkz75wNEsxLMCAEkRabGthYkaNySJoF9RhlWykCmMx/ULGKNU4w==
X-Received: by 2002:a6b:e30e:: with SMTP id u14mr4919205ioc.242.1578705289216; 
 Fri, 10 Jan 2020 17:14:49 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id f7sm950752ioo.27.2020.01.10.17.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 17:14:48 -0800 (PST)
Date: Fri, 10 Jan 2020 17:14:46 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: [PATCH v2] riscv: keep 32-bit kernel to 32-bit phys_addr_t
In-Reply-To: <mhng-d39bd2da-7e27-484a-b8f8-a96edf1336c0@palmerdabbelt-glaptop>
Message-ID: <alpine.DEB.2.21.9999.2001101709090.2113@viisi.sifive.com>
References: <20200106232024.97137-1-olof@lixom.net>
 <20200106231611.10169-1-olof@lixom.net>
 <mhng-d39bd2da-7e27-484a-b8f8-a96edf1336c0@palmerdabbelt-glaptop>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_171450_573236_2C78713C 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020, Palmer Dabbelt wrote:

> On Mon, 06 Jan 2020 15:20:24 PST (-0800), Olof Johansson wrote:
> > While rv32 technically has 34-bit physical addresses, no current platforms
> > use it and it's likely to shake out driver bugs.
> > 
> > Let's keep 64-bit phys_addr_t off on 32-bit builds until one shows up,
> > since other work will be needed to make such a system useful anyway.
> > 
> > PHYS_ADDR_T_64BIT is def_bool 64BIT, so just remove the select.
> > 
> > Signed-off-by: Olof Johansson <olof@lixom.net>
> > ---
> > 
> > v2: Just remove the select, since it's set by default if CONFIG_64BIT
> > 
> >  arch/riscv/Kconfig | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index a31169b02ec06..569fc6deb94d6 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -12,8 +12,6 @@ config 32BIT
> > 
> >  config RISCV
> >  	def_bool y
> > -	# even on 32-bit, physical (and DMA) addresses are > 32-bits
> > -	select PHYS_ADDR_T_64BIT
> >  	select OF
> >  	select OF_EARLY_FLATTREE
> >  	select OF_IRQ
> 
> I gave 5.5-rc5 a quick test on a 32-bit QEMU with 8GiB of RAM and the system
> wouldn't boot, so we've got at least some bugs floating around somewhere.
> Given that this doesn't work I don't see any reason to keep it around as an
> option, as if someone wants to make it work there's a lot more to do than make
> things compile.
> 
> I've put this on for-next.  If anyone cares about 34-bit physical addresses on
> rv32 then now is the right time to speak up... ideally by fixing it :)

You know, if, according to 

https://freenode.logbot.info/riscv/20200106

the main reason for doing this is to avoid autobuilder warnings, I'd be 
tempted to suggest we leave it in there so people have some incentive to 
go fix the real bugs ;-)

(that said, the patch is basically okay by me until at least QEMU is 
fixed or hardware appears)

- Paul

