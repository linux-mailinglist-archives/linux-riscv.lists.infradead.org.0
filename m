Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F128503B
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGfmVMPQXs0MiqafRyCqiSZafopA/H9T7EkxhXMF6pw=; b=UjmPJLluU4U40p
	a6W4F2598if2dxDAfk+W5yOGAuf8gHtfGUxWOgxxyaaj9vaLytmGBwD0d0jYjq0v1b+0ZZ4ess78U
	ztxOSWvnGZ+karpgLni0U02x23082W+/BR5nWZaypM4YyHcpddsCrqRNj8ww9dK82l3eUp8h2sZaI
	r5CiqYoyhBorWnGNV3Rpa1HgYK9Zqo1otLM4xl4KK44fQ7MA1hRIv5Ql6L9+MIBYGsV6g6UcT1Os9
	zODd/t0CyyyjQqpE0746sj+v9Es6Pl9lPzpq0Say8XSuYtbkMJwJBaOB8lNcFAi1/gr8yunsFZjOk
	agQ1Gh1fdvcL77G8kK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOAG-0002rH-Fz; Wed, 07 Aug 2019 15:47:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOAC-0002qu-Hv
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 15:47:46 +0000
Received: by mail-ot1-x343.google.com with SMTP id j19so29477580otq.2
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 08:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xzguxg3e6FgOb+F/eaFCQZePginNBmhZZuD4tHytb2I=;
 b=cHPIz5ryjVmGv+VFgBf1npA/oIGv4hxz82Ime5SNT5QfoaoQpk6foI6+P/5iJgTiuF
 zJrnfHEbXka8IBcj1RUUzLR3WuqDR+CBVw4Y5VdsdtNFVS1X7aGNwDUMEdWSuhZ+2Rrg
 h8qkYJ7aiMREKPnWKTi9+lco25APZmI1YCX/8i8eGvKT791lNWmjCWWGwuCj/1reJBZL
 4GJ8VdY+sdJpbznWJqls7dgCJ19dNk3OjGTVBGIvohvH/wIWLNRYCdQPV3VrkJqWAeDm
 jQHhLZVXRS+G3dnvhL9ERJLrZ9H+UN46WUD5lMJE9Us22dhtTo0K/QXeiIElDr/AW6Zv
 5XCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xzguxg3e6FgOb+F/eaFCQZePginNBmhZZuD4tHytb2I=;
 b=acAcz4yK2/BipE8TzgN7V81nnytGLkKFBqC3ejoDtdS6q9DclpFkch1x2hr7y39pAi
 nlcT8T0+IVGZ7yNR7AEJtNObw5hZwvE/3Xwah/OIS8ZaAJ/2ZlPAo4W+lIJk9I5yeUi+
 fEfbnQISAOHWyKFxfI/46m7JdpHWN3JpP9fvp5aPA+iTERAh2vL+kblZaHG7QWzbUkje
 T7cELSd0KWdYRqerysNXfOVP1vyQFW772KqzsnPNTivEVyKfG0SQctWwgObxwHq+Ztoz
 dHL771TelQJFSaUH0lmn0Qyr+JLAS2RFHalBx1SG1GbFUmq1YYDNrNobN+hiWwW9J6Lz
 8LPA==
X-Gm-Message-State: APjAAAWYIvNrQI3a96RMY5IyrwW2lj3gSr4I4ByjL7eF4FYHGH5ZnpUt
 vEGCxf0btS6tXI0v8xSkQ94ffw==
X-Google-Smtp-Source: APXvYqwB3p8QlLKaAumTewDu7nmGXL088id5EDhO8qw5GnYhbyPs/cQM9727r4tvwboXMKijwn3paA==
X-Received: by 2002:a6b:dc08:: with SMTP id s8mr9787847ioc.209.1565192862466; 
 Wed, 07 Aug 2019 08:47:42 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 q13sm80911777ioh.36.2019.08.07.08.47.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 08:47:42 -0700 (PDT)
Date: Wed, 7 Aug 2019 08:47:41 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
In-Reply-To: <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908070842400.13971@viisi.sifive.com>
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
 <20190807054019.GA1398@infradead.org>
 <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_084744_603439_17C9C9B3 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Schwab <schwab@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>, linux-kernel@lists.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Bin Meng wrote:

> On Wed, Aug 7, 2019 at 1:40 PM Christoph Hellwig <hch@infradead.org> wrote:
> >
> > On Tue, Aug 06, 2019 at 06:39:59PM -0700, Paul Walmsley wrote:
> > > >
> > > > I have already sent a similar patch (with more places fixed) on Jul 11.
> > > > https://patchwork.kernel.org/patch/11039421/
> > >
> > > Christoph's patch predates yours.
> > >
> > > If all looks well with your patch, I'll update it to remove the overlap
> > > and queue it after his.
> >
> > The one from Bin looks most comprehensive, so maybe go with that, plus
> > the hunk from Andreas for the instance that was only recently introduced.
> 
> Thanks Christoph.
> 
> I've included your SoB and Andreas's into my v2 patch which added the
> changes of arch/riscv/mm/init.c that was recently changed.
> https://patchwork.kernel.org/patch/11082147/

Best not to add others' Signed-off-by:s unless they explicitly offer them. 
Adding a Signed-off-by: for the kernel denotes that that person has 
accepted the Developer's Statement of Origin here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n431

Could you please either convert those into Co-developed-by: lines or ask 
Christoph and Andreas for explicit Signed-off-by:s, Acked-by:s, or 
Reviewed-by:s ?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
