Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318B9108126
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 01:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i315ET0FZKIo3YKn6MLP3XA7UHyUHP9SWPnjDOqYTAo=; b=WXajmE7nFWFTVb
	rPf8CQs2XXBrZTWPp+geRb70TkvKRwFOp3FQTjezaOjXf4Gis6ae6Q/s0h43DRV01f731Gibnnwle
	5YXiDvHOliCCC308cz6BBYdLW/UNEvlG/g8Ij/QUtheY/1ki24NwHjJvM98fU/qq0rry+dpByZ413
	XVsYX+KWE3Od1rgdAzc2yphWSUf44zqqvIWWbjx5OlHHSP/IPWl8RdiwDJFH+FP2umDk4cWw9KJ5J
	idPS4tcKv9ex3+wzLpxN0hw+7Al7HmUIK/YTKJUngob96qEzc1klmwQz4j4nOUGr+FJ4UUV1OwiiD
	fJsOx1lDU/EyD3tGt0SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYfLR-0001dM-Es; Sun, 24 Nov 2019 00:01:41 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYfLO-0001d2-58
 for linux-riscv@lists.infradead.org; Sun, 24 Nov 2019 00:01:39 +0000
Received: by mail-oi1-x242.google.com with SMTP id l202so9936602oig.1
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 16:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=woOONoIQFVxkt21SOpo2EiodkEkWZhvsKLiAP/7iXdw=;
 b=cB5mwcAlEz5N8Q++7MtpoGtJMCRf5e2J4jWxSgD50GpgOzZ5H/55BmhN5W65ClZ7ee
 KUYiNXQEHMUCUuaObYkohxJf45HrExY6AikhGBLrDwzoXHy/Owg4zjMs7cmBJaKBSnvO
 YRUAQW8yEGTlQbQE8OXs+26ACEGSefijjB1ExjpFk3Kuh0RcQg1ZsL2zxABODygo7qrO
 G5d5GvJQytkMEHgbE+9/jECFUbQJIF3DdZRpKBrjxC4ge3/30U/hIYPkofX47wLu4mtM
 lbr3J+EysGgiLmB5cu1pU01YBzO/wI9Zs/lRmI0ffFUKRCJUkiFjsdE6ol1xxyzKIXgc
 PCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=woOONoIQFVxkt21SOpo2EiodkEkWZhvsKLiAP/7iXdw=;
 b=OEiNPgANgbygqa1UxGulAz1JZZNqOXs9vGVCO/gAwUKzPNi/XpNw+XHrvnjKwISVW0
 fWg9gsn9ZstrIHzQZ5owHzOa139slYu+fCavc0617RghyRPVCdTuPKMAcGGqwaqef4uN
 h71W9UUhq9f2NqVC13EWBgbaO2U1nCu8MDHIvwXSAbTh7zsKKdELsKOYym4wP/cWMQWT
 0Rstk5U/La8byoLZkaPiL/wKLGreWKPvwBQcmc0uMZgsxx6v7Zd1HKBKjTJHNbZFxcaz
 zGhvMBe2blSwXpXSzy5nHcrl7Lo8+Pc+9BEJ5L5CH8wMUWVsIhe735KzxNFSKiEtZf5g
 3E5A==
X-Gm-Message-State: APjAAAUrv5bY879kwJPPGFrhT9ObC/S1mpDC0Jn1pwEFtDjjKWS4bzn2
 xJBt1omXZ56L3it5z3zYGG2m5B7BhnsMbnUj5xcSbA==
X-Google-Smtp-Source: APXvYqwMQpTIvHFrlW8fxxu156JT9NnpWLhNt6g4BECKYFzkCkhExI2nDlsUnUUdocxvVDaoXp/LGEZ7AjZQO7co3+0=
X-Received: by 2002:a05:6808:1da:: with SMTP id
 x26mr18330976oic.149.1574553696828; 
 Sat, 23 Nov 2019 16:01:36 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
 <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 23 Nov 2019 16:01:25 -0800
Message-ID: <CAPcyv4hBNfabaZmKs0XF+UT9Py8zJqpNdu5KsToqp305NASKNA@mail.gmail.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_160138_198119_ADD34B94 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 3:50 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sat, 23 Nov 2019, Dan Williams wrote:
>
> > On Sat, Nov 23, 2019 at 3:27 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > > It looks like the main thing that would be needed would be to add the P:
> > > entry with the path to our patch-acceptance.rst file into the MAINTAINERS
> > > file, after Dan's patches are merged.
> > >
> > > Of course, we could also add more information about sparse cleanliness,
> > > checkpatch warnings, etc., but we mostly try to follow the common kernel
> > > guidelines there.
> >
> > Those could likely be automated to highlight warnings that a given
> > subsystem treats as errors, but wherever possible my expectation is
> > that the policy should be specified globally.
> >
> > > Is that summary accurate, or did I miss some additional steps?
> >
> > I'll go fixup and get the into patch submitted today then we can go from
> > there.
>
> I guess I'm still looking for guidance along the lines of my earlier
> question: what (if anything) would we need to change about the current
> patch to have it work with the maintainer profile documentation (beyond
> the "P:" entry in MAINTAINERS) ?

Oh, sorry, I just reacted to Jon's comments. I took a look, and I
think the content would just need to be organized into the proposed
sections. The rules about what level of ratification a specification
needs to receive before a patch will be received sounds like an
extension to the Submit Checklist to me. So I'd say just format your
first paragraph into the Overview section and the other 2 into Submit
Checklist and call it good.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
