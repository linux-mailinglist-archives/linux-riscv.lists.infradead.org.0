Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813513BA17
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Jan 2020 08:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EZ9Uv0Axx1RVBpC38D2LeKDBlyYIPhsVK6uMDN/OW7Q=; b=nGJk24EeHNRTRGMUKjPmYbY+G
	zmomRpaPuT8qAoJG6sM2c3uYApmZ2JNN8ETo5GpjiCU6aBDhBEVK62saYwUeXSl+UnkiiVoCBrME5
	JneD7xsITSIHL9GdC/UhIfnzOuh+PsEJvNnqpJZ8nMAL7vH4CuSc0ab7UX1dLnT20kH1Niu/OolUx
	HBnu4+BAi0fm8oY06mdBl0e2pUGLDkfWlmG8jDDNrduMNef2uCaZy68cstJjpMTbOWg2vuH91BWul
	M01kApp+KliT2/iynxFdKdC8VIunsda+8isYqWp8TfLBvOzamzwVF+wGgG01n3ZcDhfihXKsXgfHc
	Y2NRVobSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ircld-0003pB-SE; Wed, 15 Jan 2020 07:07:05 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irclb-0003of-4D
 for linux-riscv@lists.infradead.org; Wed, 15 Jan 2020 07:07:04 +0000
Received: by mail-qk1-x744.google.com with SMTP id t129so14726875qke.10
 for <linux-riscv@lists.infradead.org>; Tue, 14 Jan 2020 23:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EZ9Uv0Axx1RVBpC38D2LeKDBlyYIPhsVK6uMDN/OW7Q=;
 b=XAX/WSaxzB/941V80oBGBxxMlodBtHbxrvOGlO9DNVG8J+KyGY10lcKAeED5bV2DCe
 34fnSbo4MmMTXhxsOVoO/3B5Wb9+cL7nGgptOOI3w97miT0zfJK/M9L8J6h3aMZ1Fbwl
 D6mBRXLOC3blOnjD3+EqB9k95pgtA3UPznpZmIeg8pNoPpVEVWiPo1F9UBxADi1h+FCL
 aMoeUfg2TKbt91L1Tzk0BcSWfSe6+bFrX1egciZDzgNVYJG5LEJTHS4lH35FxoJZgtet
 5NEwv4J9K0/fN9B65fLguTC9Se+zbFiH6RWOsEm7RlIR8aoiQulq0M6ykkERQUJUHkvq
 s/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EZ9Uv0Axx1RVBpC38D2LeKDBlyYIPhsVK6uMDN/OW7Q=;
 b=Tpu/ZLgn4P/z2TVwu1llhsmlq+5uqeBQHgH4jW1Z3Kf18q6FZisOSJCGu0MjlciIH5
 xREhQX6uEiSgFoLiOTMCrCstOQnUYc/nPEHhUrjcJNvEmJbxFJSSD+6hWph2jXamCniR
 M0gYF4o31N8kf9zAxF+my2k/mAkFbyYMaRl+CqTNO0nFqm+PiflYRFsj2IyngxqYDmt7
 LHfvnStL++AQ36HC8kXAAnB6o9yjvPuDHBqYVUZ7I5wexrmre3LK444TLopZH88mM0ne
 tERHnaarvVsn778OMFkv+WqVFmeJTCwpcROSupFS8vqYnXWi7FSlnSBsTZKeWEeSx02o
 DABQ==
X-Gm-Message-State: APjAAAVAm+Kiuc4VbILzSDgO7nwJGGZGEpaN2ZPocfIEX8mHedxgz5GT
 M1UnPpwXJ78FdXWGzAoS0YM5WuPUHD4GookTHCPyzA==
X-Google-Smtp-Source: APXvYqw/Zownjc6NkgO5O3t4IrOukQsUL9/HApOvE0AT9GibAiPkx2vP0IpC0VfPLNP3pPuE2XgD4eB9VY9GIdwmv90=
X-Received: by 2002:ae9:eb56:: with SMTP id b83mr25434351qkg.123.1579072021933; 
 Tue, 14 Jan 2020 23:07:01 -0800 (PST)
MIME-Version: 1.0
References: <20200109031516.29639-1-greentime.hu@sifive.com>
 <alpine.DEB.2.21.9999.2001091126480.135239@viisi.sifive.com>
 <alpine.DEB.2.21.9999.2001121011100.160130@viisi.sifive.com>
 <CAHCEehKchrwd7TTmSrhtEPeCmkrYrx7TX_c6ogpCpSkCKnBQoQ@mail.gmail.com>
 <alpine.DEB.2.21.9999.2001141449500.21279@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.2001141449500.21279@viisi.sifive.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Wed, 15 Jan 2020 15:06:51 +0800
Message-ID: <CAHCEeh+utXxqF65rtvRJXq6cPDjCcwpAeUaiD1pSpGGMFXRT9Q@mail.gmail.com>
Subject: Re: [PATCH v3] riscv: make sure the cores stay looping in
 .Lsecondary_park
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_230703_182266_49003E71 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Schwab <schwab@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gt <green.hu@gmail.com>,
 Anup Patel <anup@brainfault.org>, greentime@kernel.org,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 6:55 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Greentime,
>
> On Tue, 14 Jan 2020, Greentime Hu wrote:
>
> > I think it is because the sections are too far for bqeu to jump and
> > the config I used just small enough for it to jump so I didn't see
> > this bug. Sorry about that.
>
> No problem.
>
> > I tried this fix to boot in Unleashed board.
> >
> >  #ifdef CONFIG_SMP
> >         li t0, CONFIG_NR_CPUS
> > -       bgeu a0, t0, .Lsecondary_park
> > +       blt a0, t0, .Lgood_cores
> > +       tail .Lsecondary_park
> > +.Lgood_cores:
> >  #endif
>
> Looks reasonable to me.  Care to update and repost the patch?

Yes, Paul. I have sent the v4 patch.
It is tested in Unleashed board.

