Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B747825D30
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 06:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffLxAPz9myxZVnM2YQGLJS2pe5A2jMzbEfdbFEUeutk=; b=lF9oQ2M28Tdkuc
	IOm+9bIhYRSCwsgINFzACNRAoIM6P7LbVNXMs2RTQ4b5cPCRCaB6yW3F5nyNz0u9VEqe2nALzhBZz
	l5HVKdU/HIGmT/7w/4XCRrScgSKMP5MOvWMHNe5Se1Z9aAp02h7z47Ya5ICRuJKe3csZGj4ez4uGs
	WcGViWgNNY17ErFkIg4iDJ5LVECVoK++yQNOObL+O8w01uqWeFSVih7VVzXrrr9NnVkQTCm25lMwN
	IQ1TtaVAsfHrF16CH53ec8fADvkDn7NBTPEQwb6ppgRoLR38arH+gXO3JqZiMVe62E5JK7m5KPW9I
	s9Pkp6lGpd9Rx2PD6pvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTJLO-0000o7-8P; Wed, 22 May 2019 04:59:14 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTJLK-0000nB-4P
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 04:59:11 +0000
Received: by mail-ua1-x944.google.com with SMTP id r7so426805ual.2
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 21:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pfnQkeXApE9YhAL04oZ9pUNXjKBFEtVB3H8ZellBg+s=;
 b=itsCJKdwgb46ITQkTRPoR292kcfck5T1rUAFHDfske/5D5WuP7F7P3FokSkTHFunNf
 7YQ3BXR/Xmoj2jTOP1hfkdJt1lDEmYafTUxvNuFTUleUmyq5ofyPgY6K17FZitXLDLBW
 kj+iGHmuoeu+c5e9mdy7m0/Q22dVjzeQz6NzlsNr3bF2uX9x2lqdQJugNy9c/inxvahE
 s9deVGS5LGzqxTmCVeVTiUYlsDogXeDmD+B0siLITPFo6hjidNKTbr/yuKGPBpmo54LS
 E5sF5haPxlVlTjHw49x9ASoRzcJXsV2qcr4unFMySxZUMuUTc6FwsM1+q3P1NiMcd6AM
 6oFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pfnQkeXApE9YhAL04oZ9pUNXjKBFEtVB3H8ZellBg+s=;
 b=ZTqMUaG/XQNQ+gilLDRZCWR5f91o/Sh7brH1gPWdDb8s8wo/XZOXLXlpN/8xr9g8dc
 66Gkpgcnz7VF5pjMJdbdL52SumJxitUFCebCAKc1cXDBXGql1DS+fBW45uRikcNUSdWl
 LTUODGS0pSezsnyCzy0jf9fhSNq5ePcZPaWmcj9w9C09fjNvRVWI5ztU3nTHGpY5gAkj
 rlqPflDozsFQDbhccrSTwUlVKo1Sz0Dx9nVcKbJY2W6O7IxcLzQnIFIhK4INxwi6yOAY
 9URgPoEUaDFytNFEFxy5HNu8er8C5bLqZ4YfYgHI1g7Ic0NVbK379nQxZIIamdJGb47H
 SKKw==
X-Gm-Message-State: APjAAAV1j/QH1tpdZjFEm4cx9a83zgbF6cvgFtNUXveFyh6ZUklkEl0t
 iuf+TVy7ZKcEobqCI9Qwr5AMA/mvx6jNNIWhLFwyVZWIYmF8yQ==
X-Google-Smtp-Source: APXvYqxVjzH04GMwRGsl2rdzhYHjRj2cXzo6oi7TYlti/cF3kn9df3BQ4J7NHUBk2S9snvBN4LcYAu8LQxGMcT/lIYg=
X-Received: by 2002:ab0:3119:: with SMTP id e25mr3548887ual.96.1558501148962; 
 Tue, 21 May 2019 21:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
 <1558445574-16471-4-git-send-email-sagar.kadam@sifive.com>
 <20190521135439.GM22024@lunn.ch>
In-Reply-To: <20190521135439.GM22024@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Wed, 22 May 2019 10:28:58 +0530
Message-ID: <CAARK3HnTkpkH9rP4oW456V6KYsCah7-gAXdjm5+3cLwJaPs6tg@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_215910_186076_FE40DD8A 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peter@korsgaard.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, May 21, 2019 at 7:24 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> >  static void ocores_process_polling(struct ocores_i2c *i2c)
> >  {
> > +     const struct of_device_id *match;
> > +
> > +     match = of_match_node(ocores_i2c_match, i2c->adap.dev.of_node);
> > +
> >       while (1) {
> >               irqreturn_t ret;
> >               int err;
>
> Please keep with the idea of i2c->flags, which is set during probe.
> Just because it was removed because it was no longer needed does not
> stop you from putting it back again if it is needed.
>
I had modified the implementation, so as to keep it compatible with
the new implementation of polling mode.
As per your suggestion, I will keep the older method (the v5 version
which you Reviewed earlier : https://lkml.org/lkml/2019/5/20/1261)
 and submit a v7 for this.

>        Andrew

Thanks & Regards,
Sagar

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
