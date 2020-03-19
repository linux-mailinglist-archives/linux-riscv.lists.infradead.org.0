Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE0618B272
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 12:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3n5HQfAPYhacpHt1pBvMGxFwbVk6uUHLfhwxrmOEsQ=; b=JrsSu0RrJx5Vo9Fc6/ng6C4D6
	5UeXxfdhIkHIJ4yzhTrsvwGsKP6A1zXxQF/ANV0ysLX/bvhnneqH1KBkmkn9IakZcws9uyA/si8H/
	5UgQRc7Bo/NSnN3OkllNQv1siJ1/DJmfrWfC0b6L+sAvp/V3SVs4X+tdluTzRtZw6hVqTgQWQjWeu
	5w5b0RVzzw7Cbd68RD2CqQdXvQs5HSFUQsIH0PaKvXGfxSlK0GTtGnBOpSwfBWClb+5kHNjR9gkvI
	tpK63RHy8ewkCrPznP3zkL3olDrZVW4dxeJhebZyoD8FJ+i/cVwWeDsAwoDE8C82mljUjWOC8Ko1E
	h6UFtwT/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtXU-00031F-Lv; Thu, 19 Mar 2020 11:40:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtXQ-00030i-Kt
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 11:40:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id h6so2483447wrs.6
 for <linux-riscv@lists.infradead.org>; Thu, 19 Mar 2020 04:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A3n5HQfAPYhacpHt1pBvMGxFwbVk6uUHLfhwxrmOEsQ=;
 b=GW9+bN7qUqH6AyWKrgklPpt1PV4gVh6RgYbh38xaft+F140Y6tmwjblzq6npZmKns3
 c+BP+9l08lWdWLCB9ELEHWRE638mF2a64OGisPoXGoyoj+39LdeNfS19hv/tMY5ITl/9
 T38AGxUuZ4A/MhZ43LbNoEWtwTKte7QZefiAroS5pKjtmMZTiJhLbbklb8Jyh66JeJ+y
 Iw9MXiu2qoQG+Q5jEC45yeH7sT4f0Od0IWnSFKATak3vDzi8PdTjdm3PeUkDW/JYZBdC
 pYDTQDXdkhf0j7lNd+mWcEq4u0ZjNmbInE6qXa5kAmMmG+wrSFvggAYBoZJZcEjzkDRg
 UsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A3n5HQfAPYhacpHt1pBvMGxFwbVk6uUHLfhwxrmOEsQ=;
 b=OF1VJ9u6FiuzPcPBnl0dHSU3xesZJ7EyFvQpdkPTgsvPUMhzS+dZ3pwdPnCtEF3KHS
 rxx9mnG8wzlQxavJIxLfSj9xontEtdBMkqx2/R7J/AMMYYUSWx1L6HGsX3UNdqM3hd3j
 N70Lm9r0/PPt9kkW+Yz8ubJ+J/J9yzBkC7S59SVMSDVdQrDSBj9c/tBi9Av90m+8lb1d
 k+DA3221M0pJ16G0zgGKWml5CrXOQhDitAN1hdOZBOZCGBViZmP7QnNjBrqd7CJzv9yp
 AZIz7TvTTOfmvEwg9KywJwcFcLtLPmGWtvoP3erQizaFinBvSUSJ4ShOun42RFPnuuZg
 s8mA==
X-Gm-Message-State: ANhLgQ2GjPOmNJriu3zhpXAVqho4jfzBLmeIqFvqIYqlr9F+kLAAATs+
 CwQpxjneOw8J5PGLn9gLOzTSXQ==
X-Google-Smtp-Source: ADFU+vu0NWDkNtw4yHvKAHJzK7TkDmodjw3izSk2RENJ5VFjY+6uuVO/38JfIeH34pBJAABjA7wzNA==
X-Received: by 2002:adf:d1a9:: with SMTP id w9mr3656518wrc.17.1584618034288;
 Thu, 19 Mar 2020 04:40:34 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id q13sm3038952wrs.91.2020.03.19.04.40.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 04:40:33 -0700 (PDT)
Date: Thu, 19 Mar 2020 11:40:32 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 1/5] kgdb: Add kgdb_has_hit_break function
Message-ID: <20200319114032.376mvrq3npyxej5q@holly.lan>
References: <1583225220-26137-1-git-send-email-vincent.chen@sifive.com>
 <mhng-a17f59fc-9e51-4c9d-9b4b-4c707825c459@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-a17f59fc-9e51-4c9d-9b4b-4c707825c459@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_044036_693503_C23804AD 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 jason.wessel@windriver.com, dianders@chromium.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 11:03:25AM -0700, Palmer Dabbelt wrote:
> On Tue, 03 Mar 2020 00:47:00 PST (-0800), vincent.chen@sifive.com wrote:
> > The break instruction in RISC-V does not have an immediate value field, so
> > the kernel cannot identify the purpose of each trap exception through the
> > opcode. This makes the existing identification schemes in other
> > architecture unsuitable for the RISC-V kernel. To solve this problem, this
> > patch adds kgdb_has_hit_break(), which can help RISC-V kernel identify
> > the KGDB trap exception.
> > 
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  kernel/debug/debug_core.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/kernel/debug/debug_core.c b/kernel/debug/debug_core.c
> > index 2b7c9b67931d..01bc3eea3d4d 100644
> > --- a/kernel/debug/debug_core.c
> > +++ b/kernel/debug/debug_core.c
> > @@ -417,6 +417,18 @@ int kgdb_isremovedbreak(unsigned long addr)
> >  	return 0;
> >  }
> > 
> > +int kgdb_has_hit_break(unsigned long addr)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < KGDB_MAX_BREAKPOINTS; i++) {
> > +		if (kgdb_break[i].state == BP_ACTIVE &&
> > +		    kgdb_break[i].bpt_addr == addr)
> > +			return 1;
> > +	}
> > +	return 0;
> > +}
> > +
> >  int dbg_remove_all_break(void)
> >  {
> >  	int error;
> 
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

I've been slow to review this because I wanted to take a closer
look at whether this issue is unique to RV or whether one of the
other architectures solved it a different way so, out of interest,
did you do any investigations in this direction?


Daniel.

