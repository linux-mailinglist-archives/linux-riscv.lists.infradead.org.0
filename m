Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F4184D6C
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 15:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BANpjS1XPErvu1IzXsyos54QHUEHx5dE9CoL68f1l40=; b=OCLTHUC97h2a9l
	U4tY3FDfEw5E+hRJC5PKcbYP6zkOAzMLo4axKatl8JBQcY3jPSS30x1JWW/kBhb4BKhgB74JzSX0N
	0w7GQuPXfEuchLTOT1MwH3pBsXn3HUFmqoKSTtClReHsEFBFpcqVVWFuHMUFQDXZ3FkYRFIC3ytkF
	l9iPDz/qhj2Mni3dlKLRmX8ae+UFF7p98UBJkotCFseUgfIr8xX5V75c9v8UBrHSm8+G1E8zyML9y
	27JRdwO02fjKQJGc04F5SMHTVKlxGLPcQwsllSeV//0D+Fx8lhZiNfshGMCWo8q9WouIT9Xcp5SSP
	S1C164RRMHxCTCkxjUeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvM56-0008Rd-Sc; Wed, 07 Aug 2019 13:34:20 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM53-0008RD-Hs
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 13:34:18 +0000
Received: by mail-ed1-x541.google.com with SMTP id e3so86268480edr.10
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 06:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M7L8XzPoZM7FpTchzdxk9bS0L0D644d7drFY7IuQft0=;
 b=dxPT35qcwvCp/P5pW1KckSl8QZh1r+H4jL7Zuvs8T8XxVegFtxQeGDlyov//Fy1bzb
 +aSRvklG3CApQrjr0p1v/bAkmXCCOrmLKTYwe2tUVkTdPw/PZ8sm8RGMGJqx1ETHCXoq
 XMBNhI9tUuq+l/yxcFMZfro8KksNZqiW0tU0EvzabR9GmDQoA6t0fiqTE3S1yHfuIcgy
 SBG3DB/xKGx3Anlm+Vn1FpUMZppe7STBS9BP0IEA9yJk1qho0wmlzG6tWvEO6KRSy5gi
 3gHHGxlLknlkIXyDKL75Fo4n56JQ54yQWzBH6XByjyB3Bwjl7cqNpqT/ZZuO6ImdXxeO
 gzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M7L8XzPoZM7FpTchzdxk9bS0L0D644d7drFY7IuQft0=;
 b=Ej1MXGjhqgP7vAzzOiC3/H/z8R+z2MwtngpL/KV/oHZrExGoHQaDXOy4BHH9DHMjik
 Cbhw0kQHhtKAAbjB9qSqBxswpM5wmjIHAP2V62YnfdXpE2R/WmdSez1hLoP1sya+omOq
 UAE9WgnPKmbtHgx8XBDhGtlS3VbYcPC4uVwHCqqughAEBaQagaRoFISVj9hKmDYtIRfT
 wybrSbB/6c9im1QD2jCgdEt0/pqnuivWU2mvYxPkew1Tug9n1lLudyP1TsvscVrE3goS
 ZnFVlRfuIUD7KDjTyVK94swTN7Lc1s7Ku+IQWmqOwEDSN4NHXqCqlnJsQBbkUhDBvxgu
 77pw==
X-Gm-Message-State: APjAAAVFgA+EKbsWPBHWSG2ZtcdM5/GPbl8nxt9+rbvW1WZAVv4KeKX9
 dtp+1P9RN+XKSgKf1HyxPUNW7TnykdzVVbtvKQY=
X-Google-Smtp-Source: APXvYqwivXR6CxDBA8uWHQLSZwlhOmtGdWohKEc/5Lxflk4+WaSgCuz3m/pwmOzZiAjJ1m0QHOqvPZndIdtEGaXiajk=
X-Received: by 2002:a50:886a:: with SMTP id c39mr9762176edc.214.1565184856080; 
 Wed, 07 Aug 2019 06:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
 <20190807054019.GA1398@infradead.org>
In-Reply-To: <20190807054019.GA1398@infradead.org>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Wed, 7 Aug 2019 21:34:03 +0800
Message-ID: <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063417_593878_1B12A082 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
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
Cc: Andreas Schwab <schwab@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>, linux-kernel@lists.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 1:40 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Tue, Aug 06, 2019 at 06:39:59PM -0700, Paul Walmsley wrote:
> > >
> > > I have already sent a similar patch (with more places fixed) on Jul 11.
> > > https://patchwork.kernel.org/patch/11039421/
> >
> > Christoph's patch predates yours.
> >
> > If all looks well with your patch, I'll update it to remove the overlap
> > and queue it after his.
>
> The one from Bin looks most comprehensive, so maybe go with that, plus
> the hunk from Andreas for the instance that was only recently introduced.

Thanks Christoph.

I've included your SoB and Andreas's into my v2 patch which added the
changes of arch/riscv/mm/init.c that was recently changed.
https://patchwork.kernel.org/patch/11082147/

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
