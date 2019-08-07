Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47DD841C2
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 03:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsgT4u2G/K8jHygaYiu9QWV/3pmTA5UN98I2izxRxyw=; b=IXu8Ibzhv9UNJ2
	4yOg1FSa9ZLB1SrUmRDprJva6BWXzd8eBSfUSB7YKdVFcEQ4tAgrMLITNhoZI5wR/oenFmlWrDZNJ
	gJ7kjcNU/p8crypj/ABNcpqD5009FwwiggG71fxfuIFv3Mcf2zrAJhBWBdzFBhBlHb20Zn+pyqkOB
	d6iB1yEeCuEkrrKeN/UR8BZ5cWY16pZPlC97fXsPetrtlKaesLAW/nyiR4vhx0FWlfJQvjk+vAdh6
	yCnjs7YUlYvBhbksTJNkO4CK7u8NxxiVrsKb0IQ20WSE00k4zYokN3aOaAc1mXik6OmdzZPRBEyTE
	O4qKp6U05xVP3KoPhAFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB1R-0001rX-1Y; Wed, 07 Aug 2019 01:45:49 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAvq-0001WL-95
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 01:40:04 +0000
Received: by mail-ot1-x344.google.com with SMTP id o101so97928235ota.8
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 18:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=+BbqTZzUYCXMA6CgIO9BAbP3CaJ+a0Glz0dGsY78Wh0=;
 b=OMLpnngWTPu/fj1kYfTHrHsoS0g9BYhxiIKmZUA94HnYACgacD6nqU2lCGMUd70WHU
 JS9Ghnko3A5qIEkTuCt9iccpgyV9CthvGrQC0Y8FlGsPlT+G4oW5nNJiP1vTd2Kqnrbb
 fIF6kNx+AlCwIcTOt5bNHXIK8OjEnxeYdOrfRFeEJZlsn6msm9zTCSnYALqqN7FR99an
 gDz5yBn5zApwxHucp0qS+eDSCxBLPux6yjSkj7lIKbR6xdGn8xE7wKOPIi6TevuHxkon
 zRSFUQMg+BMSTHKV7NTDN/Jlat9N5TAIQwkJF93arXvQF1LDrY+IXMsY29xxKMq9dH82
 j8sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=+BbqTZzUYCXMA6CgIO9BAbP3CaJ+a0Glz0dGsY78Wh0=;
 b=dUiwEnLXDiwbQXzMGXa6PKazKQqD4hpqhIBjfraC1ibFrQpD60S9e9hadZN7EECU0A
 nxlRaCW5v1Jtnu/hMx1atTW2beUQjvYQ0mueBovdb+qRgpsIEtZC9eWXPQtf6YVlGwUk
 vYAR7f66OQo7FewwGDkiD12RSWdVDyoVFw8Ak+7QyBTvurT0hAW90ufyh73Quxx5DeWq
 BfqhmT3yAVUW3haCtt2Hgj7a9skvBoeoZdSFgaBbr73gdrUczDOaSEKiO474wWrBIO9+
 cBVyCKn7FI+kuYPM2PndREJeJvsyOw5FHkWGc7yjSTbmLU2TPqpr8uNvahazhceassyP
 F7gw==
X-Gm-Message-State: APjAAAUw0mvgs9fuD6O1pb3lDy8M4R8XJesfEgwrukN0Tm0XYG1GfSKJ
 ztwbBA5u4djxRZusTA41cfyYvw==
X-Google-Smtp-Source: APXvYqz2vj6Pgsy6F84tE3aQDlNEnC9+RQ4ii05ruDyt4SAk47H8ID+zF34jKKHl9DI4QEsykUwmJQ==
X-Received: by 2002:a05:6602:24d2:: with SMTP id
 h18mr1201975ioe.221.1565142000988; 
 Tue, 06 Aug 2019 18:40:00 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e12sm2092729iob.66.2019.08.06.18.40.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:40:00 -0700 (PDT)
Date: Tue, 6 Aug 2019 18:39:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
In-Reply-To: <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_184002_445185_B5F9B28C 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> On Wed, Aug 7, 2019 at 8:04 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Tue, 6 Aug 2019, Christoph Hellwig wrote:
> >
> > > Looks good.  I've been trying to get the same patch in for about two
> > > month now, maybe this one has more luck..
> >
> > Thanks for your patience.  If you have patches from one of your earlier
> > series that you think should go in as fixes, it's helpful for us if you
> > split them out from patches that are intended for the regular merge
> > window.
> 
> I have already sent a similar patch (with more places fixed) on Jul 11.
> https://patchwork.kernel.org/patch/11039421/

Christoph's patch predates yours.

If all looks well with your patch, I'll update it to remove the overlap 
and queue it after his.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
