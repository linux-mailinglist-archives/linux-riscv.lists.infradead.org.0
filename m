Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C89115510
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 17:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fdPlznXjsegEiAPYnd0HK7CV3hab9ZO87Ii/Lizh6WE=; b=C/hov+YEXo9SGgWidaCa263cQ
	3hoGQlgAMv5Cy0VjbkwQ20yneOFOR+RwghcWTxvLT+by3oo7F34VUy0egEffMqkRarwmNWmF/9ztl
	AVQIGqMuDPq1+FQgKGB0/uOu7osVAgBoYcZoQoAICWpe2hbwGdH0alzr6ymal0UVkVBtHh1S6yA4i
	5zvImwYEFEIoS7Ci//6ZwiM8INdaLpn+cJJZHQDKre5XXstBEbsNa9aRAQS8WrfcKLp4lmG1JxhoF
	1xuSqkAeS3nwvVQP/N8mchh47km+8R7Xw9eCnWmfvk5PpWqeTN39HuLrn+NH4qyaihzAMogSXyu9D
	js9vgHruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGO5-0003I3-1L; Fri, 06 Dec 2019 16:23:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGO1-0003HW-Dd
 for linux-riscv@lists.infradead.org; Fri, 06 Dec 2019 16:23:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so8421712wmj.5
 for <linux-riscv@lists.infradead.org>; Fri, 06 Dec 2019 08:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fdPlznXjsegEiAPYnd0HK7CV3hab9ZO87Ii/Lizh6WE=;
 b=PMP8XJvcJDVfVU//ePjm6Du7LzjMC5qbbnQOVa5H1FaRZARVngl8tHBqkedQYDI1iR
 VdQtTm8G4ZVeqpqsyKoXSWomDfoYHZAzART67qQxmCrJ7AXx+0w53Qw+Qo5+3/XaL/YD
 SsfFD9oSuSop9Ee2wb94p511OUk5Q+nLRQONesFmDhapfmyVgTFP3z6/eQe7l8ewS8Ru
 5bLY39ghP3r4Zsohk4KQXsyKrpNJ8hNwPlkfxfoJmaI94cjua3jM46mmUlNsJrsyuRQ+
 qBwngECftopDIfJbkfNEYwLHLfcC1VRAZ7gfNdkqUSneYu+bzgaekbldDzEq7nw52NSk
 L/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fdPlznXjsegEiAPYnd0HK7CV3hab9ZO87Ii/Lizh6WE=;
 b=NItTLOolXbI1wZ5Ed/wwgOduDY7SBXf3nb6p3VBCyD8YotdTvjz8yxz26mpI1Z1oG4
 Y6ebJtXLWUAmcbjvkPBfsZxfJu7TL2BntVZINYGIAgrtEbcybWv19oDCJ/JrzZGzGtmO
 atrHkFB4+RCUIT1h+wzK5yJpgtDe9hHVEcXgzz90OdIzMDbJgTbpQTTaWo17XUNepYg1
 EEKWIO9gvCVtNEqPy1FQrWzSsnuQ227A1219gl+m3bj4ZTi0ts9735/NrKzlGnoPRxPN
 Ga+4vNnhO8VNWuMc/nkbwHf502Nojq23+q0GX3HkZkASMngfXtJVJKnsuaEayTUN9W6J
 4v7w==
X-Gm-Message-State: APjAAAW7dp5mUg2yLQhzK7WqBFZjC5Nog+cb4MoH07/8OYh3K1mb9yfL
 eU99vPFET8KGvC/oNPxSxisjogJpPOobsPDHGbxQSQ==
X-Google-Smtp-Source: APXvYqxlrk1oUwNtNdjvCVFqCdbzIpGNNGg0lV+vuJwAMAhCUMdoWRis/lgtjqn/SMh4nxyqGXqguHODQqBJ6XHcOPI=
X-Received: by 2002:a1c:9602:: with SMTP id y2mr11253181wmd.23.1575649399094; 
 Fri, 06 Dec 2019 08:23:19 -0800 (PST)
MIME-Version: 1.0
References: <20191205174902.4935-1-anup.patel@wdc.com>
 <20191206090059.vpwku3gsqjtcubf5@holly.lan>
In-Reply-To: <20191206090059.vpwku3gsqjtcubf5@holly.lan>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 6 Dec 2019 21:53:07 +0530
Message-ID: <CAAhSdy0k=1tzGCTdw6jLgj0Rod6VfvNVxkzCqKDaPWc2b6P45w@mail.gmail.com>
Subject: Re: [PATCH v2] RISC-V: Add fragmented config for debug options
To: Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_082321_521674_8AEDC53F 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 2:31 PM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Thu, Dec 05, 2019 at 05:49:18PM +0000, Anup Patel wrote:
> > Various Linux kernel DEBUG options have big performance impact so
> > these should not be enabled in RISC-V normal defconfigs.
> >
> > Instead we should have separate RISC-V fragmented config for enabling
> > these DEBUG options. This way Linux RISC-V kernel can be built for
> > both non-debug and debug purposes using same defconfig.
> >
> > This patch moves additional DEBUG options to extra_debug.config.
> >
> > To configure a non-debug RV64 kernel, we use our normal defconfig:
> >    $ make O=<linux_build_directory> defconfig
> > Wherease to configure a debug RV64 kernel, we use extra_debug.config:
> >    $ make O=<linux_build_directory> defconfig extra_debug.config
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> > Changes since v1:
> >  - Use fragmented .config instead of separate debug defconfigs.
> > ---
> >  arch/riscv/configs/defconfig          | 23 -----------------------
> >  arch/riscv/configs/extra_debug.config | 21 +++++++++++++++++++++
>
> Might be better to call this rv_debug.config (or riscv_debug.config),
> This would imply it is a set of options recommended by riscv
> maintainers and also having a suitable prefix means it is less
> likely to ever conflict with .config files in kernel/configs .

Yes, rv_debug.config seems a better name.

I will wait for more comments before renaming it to rv_debug.config

>
> BTW don't respin the patch on my account. Using a .config file was just
> an idea and I'm not sure it reached consensus on the v1 thread.

Not a problem, actually David Abdurachmanov (SiFive) had also
suggested to use fragmented config for debug options.

Actually, we are seeing 12% performance drop in Hackbench by
having DEBUG options enabled by default in normal defconfigs
so we certainly need to move it out of normal defconfigs. Having
fragmented config for DEBUG options is certainly a clean and
maintainable approach that's why I went ahead with your suggestion.

Regards,
Anup

